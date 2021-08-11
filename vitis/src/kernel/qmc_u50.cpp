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

void TrotterUnit(const u32_t t, const u32_t stage, const u32_t packOfst,
                 spin_t trotters[NUM_SPIN], fp_t &dH,
                 const fp_t JcoupLocal[NUM_SPIN]) {
    /* Limit the number of fadd */
    CTX_PRAGMA(HLS ALLOCATION operation instances = fadd limit = NUM_FADD)

    /* Check stage */
    bool inside = (stage >= t && stage < NUM_SPIN + t);
    if (!inside) { return; }

    /* Cache */
    fp_t dHTmp = dH;
    fp_t fpBuffer[PACKET_SIZE];

    /* Summation::Multiply */
    for (u32_t spinOfst = 0; spinOfst < PACKET_SIZE; spinOfst++) {
#pragma HLS UNROLL
        if (!trotters[packOfst * PACKET_SIZE + spinOfst]) {
#if COPYSIGNF
            fpBuffer[spinOfst] = hls::copysignf(
                JcoupLocal[packOfst * PACKET_SIZE + spinOfst], -1.0f);
#else
            fpBuffer[spinOfst] = -JcoupLocal[packOfst * PACKET_SIZE + spinOfst];
#endif
        } else {
            fpBuffer[spinOfst] = JcoupLocal[packOfst * PACKET_SIZE + spinOfst];
        }
    }

    /* Summation::reductionIntraBuffer */
    reductionIntraBuffer<PACKET_SIZE>(fpBuffer);
    dHTmp += fpBuffer[0];

    /* Write Back */
    dH = dHTmp;
};

void TrotterUnitFinal(const u32_t t, const u32_t stage, const u32_t iOfst,
                      spin_t trotters[NUM_SPIN], const fp_t dH,
                      const spin_t upSpin, const spin_t downSpin,
                      const fp_t Beta, const fp_t dHTunnel,
                      const fp_t logRandNumber) {
    /* Check stage */
    bool inside = (stage >= t && stage < NUM_SPIN + t);
    if (!inside) { return; }

    /* Cache */
    fp_t dHTmp = dH;
    spin_t this_spin = trotters[iOfst];

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
    if (this_spin) { dHTmp = -dHTmp; }

    /* Flip */
    if ((dHTmp) > logRandNumber / Beta) { trotters[iOfst] = (!this_spin); }
};

}  // namespace U50

void QuantumMonteCarlo(
    /* Spins */
    spin_pack_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE / NUM_STREAM],
    /* Jcoup */
    const fp_pack_t Jcoup[NUM_TROT][NUM_SPIN / PACKET_SIZE],
    /* Array of h */
    const fp_pack_t h[NUM_SPIN / PACKET_SIZE],
    /* Thermal Related */
    const fp_t Jperp,
    /* Thermal Related */
    const fp_t Beta,
    /* Log(Random Number = [0, 1]) */
    const fp_pack_t logRand[NUM_TROT][NUM_SPIN / PACKET_SIZE]) {
#pragma HLS INTERFACE mode = s_axilite port = return
#pragma HLS INTERFACE mode = s_axilite port = trotters
#pragma HLS INTERFACE mode = s_axilite port = Jcoup
#pragma HLS INTERFACE mode = s_axilite port = h
#pragma HLS INTERFACE mode = s_axilite port = Jperp
#pragma HLS INTERFACE mode = s_axilite port = Beta
#pragma HLS INTERFACE mode = s_axilite port = logRand

    /* Local Memory :: idxUp/idxDown */
    u32_t idxUp[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxUp
    u32_t idxDown[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxDown

    /* Local Memory iPre */
    u32_t iOfst[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iOfst
    u32_t iPack[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iPack
    u32_t iSpin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iSpin

    /* Local Memory :: upSpin, downSpin */
    spin_t upSpin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = upSpin
    spin_t downSpin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = downSpin

    /* Local Memory :: dH */
    fp_t dH[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = dH

    /* Local Memory :: LRN */
    fp_t logRNLocal[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = logRNLocal

    /* Local Memory :: trotterLocal */
    spin_t trotterLocal[NUM_TROT][NUM_SPIN];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = trotterLocal
    // CTX_PRAGMA(HLS ARRAY_PARTITION dim = 2 type = cyclic factor = PACKET_SIZE variable = trotterLocal)

    /* Local Memory :: Jcoup_0 */
    fp_t JcoupLocal[NUM_TROT][NUM_SPIN];
// #pragma HLS BIND_STORAGE variable = JcoupLocal type = ram_2p impl = bram
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal
    // CTX_PRAGMA(HLS ARRAY_PARTITION dim = 2 type = cyclic factor = PACKET_SIZE variable = JcoupLocal)

    /* Precomputation of Tunnel-Related Energy */
    const fp_t dHTunnel = Jperp * ((fp_t)(2 * NUM_TROT));

    /* Initialize idxUp/idxDown */
INIT_IDX:
    for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
        idxUp[t] = (t == 0) ? (NUM_TROT - 1) : (t - 1);
        idxDown[t] = (t == NUM_TROT - 1) ? 0 : (t + 1);
    }

    /* Cache trotters */
READ_TROTTERS:
    for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS PIPELINE
        for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE / NUM_STREAM;
             packOfst++) {
            for (u32_t spinOfst = 0; spinOfst < PACKET_SIZE * NUM_STREAM;
                 spinOfst++) {
                trotterLocal[t][(packOfst
                                 << (LOG2_PACKET_SIZE + LOG2_NUM_STREAM)) +
                                spinOfst] = trotters[t][packOfst][spinOfst];
            }
        }
    }

    /* Loop Stage */
LOOP_STAGE:
    for (u32_t stage = 0; stage < (NUM_SPIN + NUM_TROT - 1); stage++) {
        /* Force not to pipeline */
#pragma HLS PIPELINE off

        /* Update Input State */
    UPDATE_INPUT_STATE:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            /* Compute Ofst  & Clamp into [0~NUM_SPIN) */
            u32_t ofst = ((stage + NUM_SPIN - t) & (NUM_SPIN - 1));
            iOfst[t] = ofst;

            /* Update iPre, upSpin/downSpin */
            upSpin[t] = trotterLocal[idxUp[t]][ofst];
            downSpin[t] = trotterLocal[idxDown[t]][ofst];

            /* h/logRN pack/spin offset */
            u32_t packOfst = (ofst >> (LOG2_PACKET_SIZE));
            u32_t spinOfst = (ofst & (PACKET_SIZE - 1));

            /* Reset dH */
            dH[t] = h[packOfst].data[spinOfst];
            logRNLocal[t] = logRand[t][packOfst].data[spinOfst];
        }

        /* Read New Jcoup_0 */
        if (stage < NUM_SPIN) {
        READ_NEW_JCOUP:
            for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE;
                 packOfst++) {
#pragma HLS PIPELINE
                for (u32_t spinOfst = 0; spinOfst < PACKET_SIZE; spinOfst++) {
#pragma HLS UNROLL
                    JcoupLocal[0][(packOfst << (LOG2_PACKET_SIZE)) + spinOfst] =
                        Jcoup[stage][packOfst].data[spinOfst];
                }
            }
        }

        /* Loop Step */
    LOOP_STEP:
        for (u32_t step = 0, packOfst = 0; step < NUM_SPIN;
             step += PACKET_SIZE, packOfst++) {
#pragma HLS PIPELINE off
        RUN_TU:
            for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
                U50::TrotterUnit(t, stage, packOfst, trotterLocal[t], dH[t],
                                 JcoupLocal[t]);
            }
        }

    RUN_TU_FINAL:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            U50::TrotterUnitFinal(t, stage, iOfst[t], trotterLocal[t], dH[t],
                                  upSpin[t], downSpin[t], Beta, dHTunnel,
                                  logRNLocal[t]);
        }

        /* Shift Down JcoupLocal_0 */
    SHIFT_JCOUP:
        for (i32_t t = NUM_TROT - 2; t >= 0; t--) {
            for (u32_t spinOfst = 0; spinOfst < NUM_SPIN; spinOfst++) {
#pragma HLS UNROLL
                JcoupLocal[t + 1][spinOfst] = JcoupLocal[t][spinOfst];
            }
        }
    }

    /* Write out results */
WRITE_TROTTERS:
    for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS PIPELINE
        for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE / NUM_STREAM;
             packOfst++) {
            for (u32_t spinOfst = 0; spinOfst < PACKET_SIZE * NUM_STREAM;
                 spinOfst++) {
                trotters[t][packOfst][spinOfst] =
                    trotterLocal[t][(packOfst
                                     << (LOG2_PACKET_SIZE + LOG2_NUM_STREAM)) +
                                    spinOfst];
            }
        }
    }
}
