#include <iostream>

#include "../include/sqa.hpp"

template <u32_t SIZE>
void Reduction(fp_t fpBuffer[PACKET_SIZE]) {
#pragma HLS INLINE
    Reduction<SIZE / 2>(fpBuffer);
    for (u32_t i = 0; i < PACKET_SIZE; i += SIZE) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + SIZE / 2];
    }
}

template <>
void Reduction<2>(fp_t fpBuffer[PACKET_SIZE]) {
#pragma HLS INLINE
    for (u32_t i = 0; i < PACKET_SIZE; i += 2) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + 1];
    }
}

void TrotterUnit(
    const u32_t t, const u32_t stage, const u32_t step, const u32_t iPack,
    const u32_t iSpin, const u32_t jPack, const u32_t jSpin,
    spin_t trotters[NUM_SPIN / PACKET_SIZE][PACKET_SIZE], fp_t &dH,
    fp_pack_t JcoupLocal[NUM_STREAM][NUM_SPIN / PACKET_SIZE / NUM_STREAM],
    const u32_t jc, const spin_t upSpin, const spin_t downSpin, const fp_t Beta,
    const fp_t dHTunnel, const fp_t logRandNumber[NUM_SPIN]) {
    /* Limit the number of fadd */
    CTX_PRAGMA(HLS ALLOCATION operation instances = fadd limit = NUM_FADD)

    /* Check stage */
    bool inside = (stage >= t && stage < NUM_SPIN + t);
    if (!inside) { return; }

    /* Cache */
    fp_t dHTmp = dH;
    fp_t fpBuffer[NUM_STREAM][PACKET_SIZE];

    /* Summation::Multiply */
    for (u32_t k = 0; k < PACKET_SIZE; k++) {
#pragma HLS UNROLL
        for (u32_t sC = 0; sC < NUM_STREAM; sC++) {
#pragma HLS UNROLL
            if (!trotters[jPack + sC][k]) {
#if COPYSIGNF
                fpBuffer[sC][k] = hls::copysignf(JcoupLocal[sC][jc][k], -1.0f);
#else
                fpBuffer[sC][k] = -JcoupLocal[sC][jc][k];
#endif
            } else {
                fpBuffer[sC][k] = JcoupLocal[sC][jc][k];
            }
        }
    }

    /* Summation::Reduction */
    for (u32_t sC = 0; sC < NUM_STREAM; sC++) {
#pragma HLS UNROLL
        Reduction<PACKET_SIZE>(fpBuffer[sC]);
    }

#if NUM_STREAM >= 8
    fpBuffer[0][0] += fpBuffer[4][0];
    fpBuffer[1][0] += fpBuffer[5][0];
    fpBuffer[2][0] += fpBuffer[6][0];
    fpBuffer[3][0] += fpBuffer[7][0];
#endif
#if NUM_STREAM >= 4
    fpBuffer[0][0] += fpBuffer[2][0];
    fpBuffer[1][0] += fpBuffer[3][0];
#endif
#if NUM_STREAM >= 2
    fpBuffer[0][0] += fpBuffer[1][0];
#endif
    dHTmp += fpBuffer[0][0];

    /* Write Back */
    dH = dHTmp;
};

void TrotterUnitFinal(const u32_t t, const u32_t stage, const u32_t iPack,
                      const u32_t iSpin,
                      spin_t trotters[NUM_SPIN / PACKET_SIZE][PACKET_SIZE],
                      fp_t &dH, const spin_t upSpin, const spin_t downSpin,
                      const fp_t Beta, const fp_t dHTunnel,
                      const fp_t logRandNumber[NUM_SPIN]) {
    /* Check stage */
    bool inside = (stage >= t && stage < NUM_SPIN + t);
    if (!inside) { return; }

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

    /* Times itself */
    if (!this_spin) {
#if COPYSIGNF
        dHTmp = hls::copysignf(dHTmp, -1.0f);
#else
        dHTmp = -dHTmp;
#endif
    }

    /* Flip */
    if ((-Beta * dHTmp) > logRandNumber[(iPack << LOG2_PACKET_SIZE) + iSpin]) {
        trotters[iPack][iSpin] = (!this_spin);
    }
};

void QuantumMonteCarlo(
    /* Spins */
    spin_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE][PACKET_SIZE],
    /* Jcoup */
    hls::stream<fp_pack_t> &Jcoup,
    /* Array of h */
    const fp_t h[NUM_SPIN],
    /* Thermal Related */
    const fp_t Jperp,
    /* Thermal Related */
    const fp_t Beta,
    /* Log(Random Number = [0, 1]) */
    const fp_t logRand[NUM_TROT][NUM_SPIN]) {
#pragma HLS TOP name = QuantumMonteCarlo
#pragma HLS INTERFACE mode = s_axilite port = return
#pragma HLS INTERFACE mode = s_axilite port = trotters
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup register
#pragma HLS INTERFACE mode = s_axilite port = h
#pragma HLS INTERFACE mode = s_axilite port = Jperp
#pragma HLS INTERFACE mode = s_axilite port = Beta
#pragma HLS INTERFACE mode = s_axilite port = logRand
#pragma HLS ARRAY_PARTITION variable = trotters type = complete dim = 1
#pragma HLS ARRAY_RESHAPE dim = 3 type = complete variable = trotters
#pragma HLS ARRAY_PARTITION variable = logRand type = complete dim = 1

    /* Local Memory :: idxUp/idxDown */
    u32_t idxUp[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxUp
    u32_t idxDown[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxDown

    /* Local Memory iPre */
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

    /* Local Memory :: Jcoup_0 */
    fp_pack_t JcoupLocal[NUM_TROT][NUM_STREAM]
                        [NUM_SPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS BIND_STORAGE variable = JcoupLocal type = ram_2p
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal
#pragma HLS ARRAY_PARTITION dim = 2 type = complete variable = JcoupLocal

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
#pragma HLS UNROLL
            /* Compute offset  & Clamp into [0~NUM_SPIN) */
            u32_t offset = ((stage + NUM_SPIN - t) & (NUM_SPIN - 1));
            u32_t packOffset = (offset >> (LOG2_PACKET_SIZE));
            u32_t spinOffset = (offset & (PACKET_SIZE - 1));

            /* Update iPre, upSpin/downSpin */
            iPack[t] = packOffset;
            iSpin[t] = spinOffset;
            upSpin[t] = trotters[idxUp[t]][packOffset][spinOffset];
            downSpin[t] = trotters[idxDown[t]][packOffset][spinOffset];

            /* Reset dH */
            dH[t] = h[offset];
        }

        /* Read New Jcoup_0 */
        if (stage < NUM_SPIN) {
        READ_NEW_JCOUP:
            for (u32_t jc = 0; jc < NUM_SPIN / PACKET_SIZE / NUM_STREAM; jc++) {
#pragma HLS PIPELINE
                for (u32_t sc = 0; sc < NUM_STREAM; sc++) {
#pragma HLS PIPELINE
                    JcoupLocal[0][sc][jc] = Jcoup.read();
                }
            }
        }

        /* Loop Step */
    LOOP_STEP:
        for (u32_t step = 0, jc = 0; step < NUM_SPIN;
             step += PACKET_SIZE * NUM_STREAM, jc++) {
#pragma HLS PIPELINE off
        RUN_TU:
            for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
                TrotterUnit(t, stage, step, iPack[t], iSpin[t],
                            (step >> (LOG2_PACKET_SIZE)),
                            (step & (PACKET_SIZE - 1)), trotters[t], dH[t],
                            JcoupLocal[t], jc, upSpin[t], downSpin[t], Beta,
                            dHTunnel, logRand[t]);
            }
        }

    RUN_TU_FINAL:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            TrotterUnitFinal(t, stage, iPack[t], iSpin[t], trotters[t], dH[t],
                             upSpin[t], downSpin[t], Beta, dHTunnel,
                             logRand[t]);
        }

        /* Shift Down JcoupLocal_0 */
    SHIFT_JCOUP:
        for (u32_t jc = 0; jc < NUM_SPIN / PACKET_SIZE / NUM_STREAM; jc++) {
#pragma HLS PIPELINE
            for (i32_t t = NUM_TROT - 2; t >= 0; t--) {
#pragma HLS UNROLL
                for (u32_t sC = 0; sC < NUM_STREAM; sC++) {
#pragma HLS UNROLL
                    JcoupLocal[t + 1][sC][jc] = JcoupLocal[t][sC][jc];
                }
            }
        }
    }
}
