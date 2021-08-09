#include <iostream>

#include "../include/sqa.hpp"

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

void TrotterUnit(
    const u32_t t, const u32_t stage, const u32_t packOffset,
    spin_pack_t trotters[NUM_SPIN / PACKET_SIZE / NUM_STREAM][NUM_STREAM],
    fp_t &dH,
    fp_pack_t JcoupLocal[NUM_SPIN / PACKET_SIZE / NUM_STREAM][NUM_STREAM]) {
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
        for (u32_t strmOffset = 0; strmOffset < NUM_STREAM; strmOffset++) {
#pragma HLS UNROLL
            if (!trotters[packOffset][strmOffset][k]) {
#if COPYSIGNF
                fpBuffer[strmOffset][k] = hls::copysignf(
                    JcoupLocal[packOffset][strmOffset][k], -1.0f);
#else
                fpBuffer[strmOffset][k] =
                    -JcoupLocal[packOffset][strmOffset][k];
#endif
            } else {
                fpBuffer[strmOffset][k] = JcoupLocal[packOffset][strmOffset][k];
            }
        }
    }

    /* Summation::reductionIntraBuffer */
    for (u32_t strmOffset = 0; strmOffset < NUM_STREAM; strmOffset++) {
#pragma HLS UNROLL
        reductionIntraBuffer<PACKET_SIZE>(fpBuffer[strmOffset]);
    }
    reductionInterBuffer<NUM_STREAM>(fpBuffer);
    dHTmp += fpBuffer[0][0];

    /* Write Back */
    dH = dHTmp;
};

void TrotterUnitFinal(
    const u32_t t, const u32_t stage, const u32_t iPack, const u32_t iStrm,
    const u32_t iSpin,
    spin_pack_t trotters[NUM_SPIN / PACKET_SIZE / NUM_STREAM][NUM_STREAM],
    const fp_t dH, const spin_t upSpin, const spin_t downSpin, const fp_t Beta,
    const fp_t dHTunnel, const fp_t logRandNumber[NUM_SPIN]) {
    /* Check stage */
    bool inside = (stage >= t && stage < NUM_SPIN + t);
    if (!inside) { return; }

    /* Cache */
    fp_t dHTmp = dH;
    spin_t this_spin = trotters[iPack][iStrm][iSpin];

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
    if ((dHTmp) >
        logRandNumber[(iPack << (LOG2_PACKET_SIZE + LOG2_NUM_STREAM)) +
                      (iStrm << (LOG2_PACKET_SIZE)) + iSpin] /
            Beta) {
        trotters[iPack][iStrm][iSpin] = (!this_spin);
    }
};

void QuantumMonteCarlo(
    /* Spins */
    spin_pack_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE / NUM_STREAM]
                        [NUM_STREAM],
    /* Jcoup */
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
#pragma HLS ARRAY_RESHAPE variable = trotters type = complete dim = 3

#pragma HLS ARRAY_PARTITION variable = logRand type = complete dim = 1

    /* Local Memory :: idxUp/idxDown */
    u32_t idxUp[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxUp
    u32_t idxDown[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxDown

    /* Local Memory iPre */
    u32_t iPack[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iPack
    u32_t iStrm[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iStrm
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
    fp_pack_t JcoupLocal[NUM_TROT][NUM_SPIN / PACKET_SIZE / NUM_STREAM]
                        [NUM_STREAM];
#pragma HLS BIND_STORAGE variable = JcoupLocal type = ram_2p impl = bram
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal
#pragma HLS ARRAY_RESHAPE dim = 3 type = complete variable = JcoupLocal

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
            u32_t packOffset = (offset >> (LOG2_PACKET_SIZE + LOG2_NUM_STREAM));
            u32_t packOffsetRem = (offset & (PACKET_SIZE * NUM_STREAM - 1));
            u32_t strmOffset = (packOffsetRem >> (LOG2_PACKET_SIZE));
            u32_t spinOffset = (packOffsetRem & (PACKET_SIZE - 1));

            /* Update iPre, upSpin/downSpin */
            iPack[t] = packOffset;
            iStrm[t] = strmOffset;
            iSpin[t] = spinOffset;
            upSpin[t] = trotters[idxUp[t]][packOffset][strmOffset][spinOffset];
            downSpin[t] =
                trotters[idxDown[t]][packOffset][strmOffset][spinOffset];

            /* Reset dH */
            dH[t] = h[offset];
        }

        /* Read New Jcoup_0 */
        if (stage < NUM_SPIN) {
        READ_NEW_JCOUP:
            for (u32_t packOffset = 0;
                 packOffset < NUM_SPIN / PACKET_SIZE / NUM_STREAM;
                 packOffset++) {
#pragma HLS PIPELINE
                for (u32_t strmOffset = 0; strmOffset < NUM_STREAM;
                     strmOffset++) {
                    JcoupLocal[0][packOffset][strmOffset] = Jcoup.read();
                }
            }
        }

        /* Loop Step */
    LOOP_STEP:
        for (u32_t step = 0, packOffset = 0; step < NUM_SPIN;
             step += PACKET_SIZE * NUM_STREAM, packOffset++) {
#pragma HLS PIPELINE off
        RUN_TU:
            for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
                TrotterUnit(t, stage, packOffset, trotters[t], dH[t],
                            JcoupLocal[t]);
            }
        }

    RUN_TU_FINAL:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            TrotterUnitFinal(t, stage, iPack[t], iStrm[t], iSpin[t],
                             trotters[t], dH[t], upSpin[t], downSpin[t], Beta,
                             dHTunnel, logRand[t]);
        }

        /* Shift Down JcoupLocal_0 */
    SHIFT_JCOUP:
        for (u32_t packOffset = 0;
             packOffset < NUM_SPIN / PACKET_SIZE / NUM_STREAM; packOffset++) {
#pragma HLS PIPELINE
            for (i32_t t = NUM_TROT - 2; t >= 0; t--) {
#pragma HLS UNROLL
                for (u32_t strmOffset = 0; strmOffset < NUM_STREAM;
                     strmOffset++) {
#pragma HLS UNROLL
                    JcoupLocal[t + 1][packOffset][strmOffset] =
                        JcoupLocal[t][packOffset][strmOffset];
                }
            }
        }
    }
}
