#include "../include/sqa.hpp"

namespace U50 {

template <u32_t SIZE>
void reductionIntraBuffer(fp_t fpBuffer[PACKET_SIZE]) {
#pragma HLS INLINE
  reductionIntraBuffer<SIZE / 2>(fpBuffer);
  for (u32_t i = 0; i < PACKET_SIZE; i += SIZE) {
#pragma HLS UNROLL
    fpBuffer[i] += fpBuffer[i + SIZE / 2];
  }
}

template <>
void reductionIntraBuffer<2>(fp_t fpBuffer[PACKET_SIZE]) {
#pragma HLS INLINE
  for (u32_t i = 0; i < PACKET_SIZE; i += 2) {
#pragma HLS UNROLL
    fpBuffer[i] += fpBuffer[i + 1];
  }
}

template <>
void reductionIntraBuffer<1>(fp_t fpBuffer[PACKET_SIZE]) {
  ;
}

template <u32_t NSTRM>
void reductionInterBuffer(fp_t fpBuffer[NUM_STREAM][PACKET_SIZE]) {
#pragma HLS INLINE
  reductionInterBuffer<NSTRM / 2>(fpBuffer);
  for (u32_t i = 0; i < NUM_STREAM; i += NSTRM) {
#pragma HLS UNROLL
    fpBuffer[i][0] += fpBuffer[i + NSTRM / 2][0];
  }
}

template <>
void reductionInterBuffer<2>(fp_t fpBuffer[NUM_STREAM][PACKET_SIZE]) {
#pragma HLS INLINE
  for (u32_t i = 0; i < NUM_STREAM; i += 2) {
#pragma HLS UNROLL
    fpBuffer[i][0] += fpBuffer[i + 1][0];
  }
}

template <>
void reductionInterBuffer<1>(fp_t fpBuffer[NUM_STREAM][PACKET_SIZE]) {
  ;
}

void TrotterUnit(const u32_t t, const u32_t stage, const u32_t packOfst,
                 spin_pack_u50_t trotters[NUM_SPIN / PACKET_SIZE], fp_t &dH,
                 fp_pack_t JcoupLocal[NUM_SPIN / PACKET_SIZE]) {
  /* Limit the number of fadd */
  CTX_PRAGMA(HLS ALLOCATION operation instances = fadd limit = NUM_FADD)
  // CTX_PRAGMA(HLS PIPELINE II = HALF_NUM_STREAM)
  CTX_PRAGMA(HLS PIPELINE)

  /* Check stage */
  bool inside = (stage >= t && stage < NUM_SPIN + t);
  if (!inside) {
    return;
  }

  /* Cache */
  fp_t dHTmp = dH;
  fp_t fpBuffer[NUM_STREAM][PACKET_SIZE];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = fpBuffer
#pragma HLS ARRAY_PARTITION dim = 2 type = complete variable = fpBuffer

  for (u32_t strmOfst = 0; strmOfst < NUM_STREAM; strmOfst++) {
#pragma HLS UNROLL

    /* Multiply */
    for (u32_t k = 0; k < PACKET_SIZE; k++) {
#pragma HLS UNROLL
      fpBuffer[strmOfst][k] =
          (!trotters[packOfst + strmOfst][k])
#if COPYSIGNF
              ? (hls::copysignf(JcoupLocal[packOfst + strmOfst].data[k], -1.0f))
#else
              ? (-JcoupLocal[packOfst + strmOfst].data[k])
#endif
              : (JcoupLocal[packOfst + strmOfst].data[k]);
    }
  }

  /* Intra-Buffer Summation */
  for (u32_t strmOfst = 0; strmOfst < NUM_STREAM; strmOfst++) {
#pragma HLS UNROLL
    reductionIntraBuffer<PACKET_SIZE>(fpBuffer[strmOfst]);
  }

  /* Inter-Buffer Summation */
  reductionInterBuffer<NUM_STREAM>(fpBuffer);
  dHTmp += fpBuffer[0][0];

  /* Write Back */
  dH = dHTmp;
};

void TrotterUnitFinal(const u32_t t, const u32_t stage, const u32_t iPack,
                      const u32_t iSpin,
                      spin_pack_u50_t trotters[NUM_SPIN / PACKET_SIZE],
                      const fp_t dH, const spin_t upSpin, const spin_t downSpin,
                      const fp_t Beta, const fp_t dHTunnel,
                      const fp_t logRandNumber) {
  /* Check stage */
  bool inside = (stage >= t && stage < NUM_SPIN + t);
  if (!inside) {
    return;
  }

  /* Cache */
  fp_t dHTmp = dH;
  spin_t this_spin = trotters[iPack][iSpin];

  /* Add tunnel energy */
  bool sameDirection = (upSpin == downSpin);
  if (sameDirection && upSpin) {
    dHTmp = (dHTmp - dHTunnel) * 2.0f;
  } else if (sameDirection && (!upSpin)) {
    dHTmp = (dHTmp + dHTunnel) * 2.0f;
  } else {
    dHTmp = dHTmp * 2.0f;
  }

  /* Times itself  and Negative the result */
  if (this_spin) {
    dHTmp = -dHTmp;
  }

  /* Flip */
  if ((dHTmp) > logRandNumber / Beta) {
    trotters[iPack][iSpin] = (!this_spin);
  }
};

}  // namespace U50

extern "C" {
void QuantumMonteCarloU50(
    /* Spins */
    spin_pack_u50_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE],
    /* Jcoup */
    const fp_pack_t Jcoup[NUM_SPIN][NUM_SPIN / PACKET_SIZE],
    /* Array of h */
    const fp_t h[NUM_SPIN],
    /* Thermal Related */
    const fp_t Jperp,
    /* Thermal Related */
    const fp_t Beta,
    /* Log(Random Number = [0, 1]) */
    const fp_t logRand[NUM_TROT][NUM_SPIN]) {
#pragma HLS AGGREGATE compact = auto variable = Jcoup

  u32_t idxUp[NUM_TROT], idxDown[NUM_TROT], iPack[NUM_TROT], iSpin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxUp
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxDown
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iPack
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iSpin

  spin_t upSpin[NUM_TROT], downSpin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = upSpin
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = downSpin

  fp_t dH[NUM_TROT], logRandLocal[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = dH
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = logRandLocal

  spin_pack_u50_t trottersLocal[NUM_TROT][NUM_SPIN / PACKET_SIZE];
// #pragma HLS BIND_STORAGE variable = trottersLocal type = ram_2p impl = bram
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = trottersLocal
  CTX_PRAGMA(HLS ARRAY_PARTITION dim = 2 type = cyclic factor =
                 NUM_STREAM variable = trottersLocal)

  fp_pack_t JcoupLocal[NUM_TROT][NUM_SPIN / PACKET_SIZE];
// #pragma HLS BIND_STORAGE variable = JcoupLocal type = ram_2p impl = bram
#pragma HLS AGGREGATE compact = auto variable = JcoupLocal
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal
  CTX_PRAGMA(HLS ARRAY_PARTITION dim = 2 type = cyclic factor =
                 NUM_STREAM variable = JcoupLocal)

READ_TROTTERS:
  for (u32_t t = 0; t < NUM_TROT; t++) {
    for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE; packOfst++) {
#pragma HLS PIPELINE
      trottersLocal[t][packOfst] = trotters[t][packOfst];
    }
  }

/* Initialize idxUp/idxDown */
INIT_IDX:
  for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
    idxUp[t] = (t == 0) ? (NUM_TROT - 1) : (t - 1);
    idxDown[t] = (t == NUM_TROT - 1) ? 0 : (t + 1);
  }

  /* Precomputation of Tunnel-Related Energy */
  const fp_t dHTunnel = Jperp * ((fp_t)(2 * NUM_TROT));

/* Loop Stage */
LOOP_STAGE:
  for (u32_t stage = 0; stage < (NUM_SPIN + NUM_TROT - 1); stage++) {
    /* Force not to pipeline */
#pragma HLS PIPELINE off

    /* Update Input State */
  UPDATE_INPUT_STATE:
    for (u32_t t = 0; t < NUM_TROT; t++) {
      // #pragma HLS UNROLL
      /* Compute Ofst  & Clamp into [0~NUM_SPIN) */
      u32_t Ofst = ((stage + NUM_SPIN - t) & (NUM_SPIN - 1));
      u32_t packOfst = (Ofst >> (LOG2_PACKET_SIZE));
      u32_t spinOfst = (Ofst & (PACKET_SIZE - 1));

      /* Update iPre, upSpin/downSpin */
      iPack[t] = packOfst;
      iSpin[t] = spinOfst;
      upSpin[t] = trottersLocal[idxUp[t]][packOfst][spinOfst];
      downSpin[t] = trottersLocal[idxDown[t]][packOfst][spinOfst];

      /* Reset dH */
      dH[t] = h[Ofst];
      logRandLocal[t] = logRand[t][Ofst];
    }

    /* Read New Jcoup_0 */
    if (stage < NUM_SPIN) {
    READ_NEW_JCOUP:
      for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE; packOfst++) {
#pragma HLS PIPELINE
        JcoupLocal[0][packOfst] = Jcoup[stage][packOfst];
      }
    }

    /* Loop Step */
  LOOP_STEP:
    for (u32_t step = 0, packOfst = 0; step < NUM_SPIN;
         step += PACKET_SIZE * NUM_STREAM, packOfst += NUM_STREAM) {
#pragma HLS PIPELINE
    RUN_TU:
      for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
        /* Check stage */
        bool inside = (stage >= t && stage < NUM_SPIN + t);
        if (inside) {
          /* Cache */
          fp_t fpBuffer[NUM_STREAM][PACKET_SIZE];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = fpBuffer
#pragma HLS ARRAY_PARTITION dim = 2 type = complete variable = fpBuffer

          for (u32_t strmOfst = 0; strmOfst < NUM_STREAM; strmOfst++) {
#pragma HLS UNROLL

            /* Multiply */
            for (u32_t k = 0; k < PACKET_SIZE; k++) {
#pragma HLS UNROLL
              fpBuffer[strmOfst][k] =
                  (!trottersLocal[t][packOfst + strmOfst][k])
                      ? (-JcoupLocal[t][packOfst + strmOfst].data[k])
                      : (JcoupLocal[t][packOfst + strmOfst].data[k]);
            }
          }

          /* Intra-Buffer Summation */
          for (u32_t strmOfst = 0; strmOfst < NUM_STREAM; strmOfst++) {
#pragma HLS UNROLL
            U50::reductionIntraBuffer<PACKET_SIZE>(fpBuffer[strmOfst]);
          }

          /* Inter-Buffer Summation */
          U50::reductionInterBuffer<NUM_STREAM>(fpBuffer);
          dH[t] += fpBuffer[0][0];
        }
      }
    }

  RUN_TU_FINAL:
    for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
      U50::TrotterUnitFinal(t, stage, iPack[t], iSpin[t], trottersLocal[t],
                            dH[t], upSpin[t], downSpin[t], Beta, dHTunnel,
                            logRandLocal[t]);
    }

    /* Shift Down JcoupLocal_0 */
  SHIFT_JCOUP:
    for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE; packOfst++) {
#pragma HLS PIPELINE
      for (i32_t t = NUM_TROT - 2; t >= 0; t--) {
#pragma HLS UNROLL
        JcoupLocal[t + 1][packOfst] = JcoupLocal[t][packOfst];
      }
    }
  }

WRITE_TROTTERS:
  for (u32_t t = 0; t < NUM_TROT; t++) {
    for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE; packOfst++) {
#pragma HLS PIPELINE
      trotters[t][packOfst] = trottersLocal[t][packOfst];
    }
  }
}
}
