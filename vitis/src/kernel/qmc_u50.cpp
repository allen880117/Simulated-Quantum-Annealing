#include "../include/sqa.hpp"

#define BUNDLE_SIZE (PACKET_SIZE * NUM_STREAM)
#define LOG2_BUNDLE_SIZE (LOG2_PACKET_SIZE + LOG2_NUM_STREAM)

namespace U50 {

template <u32_t SIZE>
void reductionIntraBuffer(fp_t fpBuffer[BUNDLE_SIZE]) {
#pragma HLS INLINE
    reductionIntraBuffer<SIZE / 2>(fpBuffer);
    for (u32_t i = 0; i < BUNDLE_SIZE; i += SIZE) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + SIZE / 2];
    }
}

template <>
void reductionIntraBuffer<2>(fp_t fpBuffer[BUNDLE_SIZE]) {
#pragma HLS INLINE
    for (u32_t i = 0; i < BUNDLE_SIZE; i += 2) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + 1];
    }
}

template <>
void reductionIntraBuffer<1>(fp_t fpBuffer[BUNDLE_SIZE]) {
    ;
}

void TrotterUnit(const u32_t t, const u32_t stage, const u32_t bundleOfst,
                 ap_uint<BUNDLE_SIZE> trotters[NUM_SPIN / BUNDLE_SIZE],
                 fp_t &dH,
                 const fp_t JcoupLocal[NUM_SPIN / BUNDLE_SIZE][BUNDLE_SIZE]) {
    /* Limit the number of fadd */
    CTX_PRAGMA(HLS ALLOCATION operation instances = fadd limit = NUM_FADD)

    /* Check stage */
    bool inside = (stage >= t && stage < NUM_SPIN + t);
    if (!inside) {
        return;
    }

    /* Cache */
    fp_t dHTmp = dH;
    fp_t fpBuffer[BUNDLE_SIZE];

    /* Summation::Multiply */
    for (u32_t spinOfst = 0; spinOfst < BUNDLE_SIZE; spinOfst++) {
#pragma HLS UNROLL
        if (!trotters[bundleOfst][spinOfst]) {
#if COPYSIGNF
            fpBuffer[spinOfst] =
                hls::copysignf(JcoupLocal[bundleOfst][spinOfst], -1.0f);
#else
            fpBuffer[spinOfst] = -JcoupLocal[bundleOfst][spinOfst];
#endif
        } else {
            fpBuffer[spinOfst] = JcoupLocal[bundleOfst][spinOfst];
        }
    }

    /* Summation::reductionIntraBuffer */
    reductionIntraBuffer<BUNDLE_SIZE>(fpBuffer);
    dHTmp += fpBuffer[0];

    /* Write Back */
    dH = dHTmp;
};

void TrotterUnitFinal(const u32_t t, const u32_t stage, const u32_t iOfst,
                      ap_uint<BUNDLE_SIZE> trotters[NUM_SPIN / BUNDLE_SIZE],
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
    spin_t this_spin =
        trotters[(iOfst >> LOG2_BUNDLE_SIZE)][iOfst & (BUNDLE_SIZE - 1)];

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
        trotters[(iOfst >> LOG2_BUNDLE_SIZE)][iOfst & (BUNDLE_SIZE - 1)] =
            (!this_spin);
    }
};

}  // namespace U50

extern "C" {
void QuantumMonteCarloU50(
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

    /* Local Memory :: Jcoup_0 */
    fp_t JcoupLocal[NUM_TROT][NUM_SPIN / BUNDLE_SIZE][BUNDLE_SIZE];
#pragma HLS BIND_STORAGE variable = JcoupLocal type = ram_2p impl = bram
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal
#pragma HLS ARRAY_RESHAPE dim = 3 type = complete variable = JcoupLocal

    /* Precomputation of Tunnel-Related Energy */
    const fp_t dHTunnel = Jperp * ((fp_t)(2 * NUM_TROT));

    /* Initialize idxUp/idxDown */
INIT_IDX:
    for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
        idxUp[t] = (t == 0) ? (NUM_TROT - 1) : (t - 1);
        idxDown[t] = (t == NUM_TROT - 1) ? 0 : (t + 1);
    }

/* Loop Stage */
LOOP_STAGE:
    for (u32_t stage = 0; stage < (NUM_SPIN + NUM_TROT - 1); stage++) {
        /* Force not to pipeline */
#pragma HLS PIPELINE off
#pragma HLS LOOP_FLATTEN off

        /* Update Input State */
    UPDATE_INPUT_STATE:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            /* Compute Ofst  & Clamp into [0~NUM_SPIN) */
            u32_t ofst = ((stage + NUM_SPIN - t) & (NUM_SPIN - 1));
            iOfst[t] = ofst;
            u32_t bundleOfst = (ofst >> (LOG2_BUNDLE_SIZE));
            u32_t bundleSpinOfst = (ofst & (BUNDLE_SIZE - 1));

            /* Update iPre, upSpin/downSpin */
            upSpin[t] = trotters[idxUp[t]][bundleOfst][bundleSpinOfst];
            downSpin[t] = trotters[idxDown[t]][bundleOfst][bundleSpinOfst];

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
            for (u32_t packOfst = 0, totalOfst = 0;
                 packOfst < NUM_SPIN / PACKET_SIZE; packOfst++) {
#pragma HLS PIPELINE
                for (u32_t spinOfst = 0; spinOfst < PACKET_SIZE;
                     spinOfst++, totalOfst++) {
#pragma HLS UNROLl
                    JcoupLocal[0][(totalOfst >> (LOG2_BUNDLE_SIZE))]
                              [(totalOfst & (BUNDLE_SIZE - 1))] =
                                  Jcoup[stage][packOfst].data[spinOfst];
                }
            }
        }

        /* Loop Step */
    LOOP_STEP:
        for (u32_t step = 0, bundleOfst = 0; step < NUM_SPIN;
             step += BUNDLE_SIZE, bundleOfst++) {
#pragma HLS PIPELINE off
        RUN_TU:
            for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
                U50::TrotterUnit(t, stage, bundleOfst, trotters[t], dH[t],
                                 JcoupLocal[t]);
            }
        }

    RUN_TU_FINAL:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            U50::TrotterUnitFinal(t, stage, iOfst[t], trotters[t], dH[t],
                                  upSpin[t], downSpin[t], Beta, dHTunnel,
                                  logRNLocal[t]);
        }

        /* Shift Down JcoupLocal_0 */
    SHIFT_JCOUP:
        for (i32_t t = NUM_TROT - 2; t >= 0; t--) {
            for (u32_t bundleOfst = 0; bundleOfst < NUM_SPIN / BUNDLE_SIZE;
                 bundleOfst++)
                for (u32_t spinOfst = 0; spinOfst < BUNDLE_SIZE; spinOfst++) {
#pragma HLS UNROLL
                    JcoupLocal[t + 1][bundleOfst][spinOfst] =
                        JcoupLocal[t][bundleOfst][spinOfst];
                }
        }
    }
}
}
