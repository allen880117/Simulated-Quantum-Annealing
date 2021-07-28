#include <iostream>

#include "../include/sqa.hpp"

namespace TU {
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
    /* # of Trotter */
    const u32_t t,
    /* Current global stage and step*/
    const u32_t stage, const u32_t step,
    /* Idx of spin that will be updated */
    const u32_t iPack, const u32_t iSpin,
    /* Idx of the neighbor spin */
    const u32_t jPack, const u32_t jSpin,
    /* Spins in the same trotter */
    spin_t trotters[MAX_NSPIN / PACKET_SIZE][PACKET_SIZE],
    /* Local Field */
    fp_t &dH,
    /* Jcoup_0 Stream and Register for Next Tortter, 0 */
    fp_pack_t JcoupLocal[NUM_STREAM][MAX_NSPIN / PACKET_SIZE / NUM_STREAM],
    /* JcoupCount */
    const u32_t JcoupCount,
    /* Spin from upper/lower trotter */
    const spin_t upSpin, const spin_t downSpin,
    /* Flip-Related */
    const fp_t Beta, const fp_t dHTunnel, const fp_t logRandNumber[MAX_NSPIN]) {
    /* Limit the number of fadd */
    CTX_PRAGMA(HLS ALLOCATION operation instances = fadd limit = NUM_FADD)

    /* ==== [CHECK STAGE] ==== */
    bool inside = (stage >= t && stage < MAX_NSPIN + t);
    if (!inside) { return; }
    /* ==== [CHECK STAGE] ==== */

    /* Cache */
    fp_t dHTmp = dH;
    fp_t fpBuffer[NUM_STREAM][PACKET_SIZE];

    /* Summation::Multiply */
MULTIPLY:
    for (u32_t k = 0; k < PACKET_SIZE; k++) {
#pragma HLS UNROLL
        for (u32_t sC = 0; sC < NUM_STREAM; sC++) {
#pragma HLS UNROLL
            if (!trotters[jPack + sC][k]) {
                // fpBuffer[sC][k] =
                //     hls::copysignf(JcoupLocal[sC][JcoupCount][k], -1.0f);
                fpBuffer[sC][k] = -JcoupLocal[sC][JcoupCount][k];
            } else {
                fpBuffer[sC][k] = JcoupLocal[sC][JcoupCount][k];
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

void TrotterUnitFinal(
    /* # of Trotter */
    const u32_t t,
    /* Current global stage and step*/
    const u32_t stage,
    /* Idx of spin that will be updated */
    const u32_t iPack, const u32_t iSpin,
    /* Spins in the same trotter */
    spin_t trotters[MAX_NSPIN / PACKET_SIZE][PACKET_SIZE],
    /* Local Field */
    fp_t &dH,
    /* Spin from upper/lower trotter */
    const spin_t upSpin, const spin_t downSpin,
    /* Flip-Related */
    const fp_t Beta, const fp_t dHTunnel, const fp_t logRandNumber[MAX_NSPIN]) {
    /* ==== [CHECK STAGE] ==== */
    bool inside = (stage >= t && stage < MAX_NSPIN + t);
    if (!inside) { return; }
    /* ==== [CHECK STAGE] ==== */

    /* Cache */
    fp_t dHTmp = dH;

    /* ==== [FINAL STEP] ==== */
    // if (jPack >= (MAX_NSPIN / PACKET_SIZE) -1 ) {
    /* Compute Engery from up and down trotter */
    bool sameDirection = (upSpin == downSpin);
    if (sameDirection && upSpin) {
        dHTmp = (dHTmp - dHTunnel) * 2.0f;
    } else if (sameDirection && (!upSpin)) {
        dHTmp = (dHTmp + dHTunnel) * 2.0f;
    } else {
        dHTmp = dHTmp * 2.0f;
    }

    /* Cache */
    spin_t this_spin = trotters[iPack][iSpin];

    /* Times itself */
    if (!this_spin) { dHTmp = -dHTmp; }

    /* Flip */
    if ((-Beta * dHTmp) > logRandNumber[(iPack << LOG2_PACKET_SIZE) + iSpin]) {
        trotters[iPack][iSpin] = (!this_spin);
    }
};

};  // namespace TU

void QuantumMonteCarlo(
    /* Spins */
    spin_t trotters[MAX_NTROT][MAX_NSPIN / PACKET_SIZE][PACKET_SIZE],
    /* Jcoup */
    hls::stream<fp_pack_t> &Jcoup_0,
#if NUM_STREAM >= 2
    hls::stream<fp_pack_t> &Jcoup_1,
#endif
#if NUM_STREAM >= 4
    hls::stream<fp_pack_t> &Jcoup_2, hls::stream<fp_pack_t> &Jcoup_3,
#endif
#if NUM_STREAM >= 8
    hls::stream<fp_pack_t> &Jcoup_4, hls::stream<fp_pack_t> &Jcoup_5,
    hls::stream<fp_pack_t> &Jcoup_6, hls::stream<fp_pack_t> &Jcoup_7,
#endif
    /* Array of h */
    const fp_t h[MAX_NSPIN],
    /* Thermal Related */
    const fp_t Jperp, const fp_t Beta,
    /* Log(Random Number = [0, 1]) */
    const fp_t logRandomNumber[MAX_NTROT][MAX_NSPIN]) {
#pragma HLS TOP name = QuantumMonteCarlo
#pragma HLS INTERFACE mode = s_axilite port = return
#pragma HLS INTERFACE mode = s_axilite port = trotters
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup_0 register
#if NUM_STREAM >= 2
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup_1 register
#endif
#if NUM_STREAM >= 4
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup_2 register
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup_3 register
#endif
#if NUM_STREAM >= 8
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup_4 register
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup_5 register
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup_6 register
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup_7 register
#endif
#pragma HLS INTERFACE mode = s_axilite port = h
#pragma HLS INTERFACE mode = s_axilite port = Jperp
#pragma HLS INTERFACE mode = s_axilite port = Beta
#pragma HLS INTERFACE mode = s_axilite port = logRandomNumber
#pragma HLS ARRAY_PARTITION variable = trotters type = complete dim = 1
#pragma HLS ARRAY_RESHAPE dim=3 type=complete variable=trotters
#pragma HLS ARRAY_PARTITION variable = logRandomNumber type = complete dim = 1

    /* Local Memory :: idxUp/idxDown */
    u32_t idxUp[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxUp
    u32_t idxDown[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxDown

    /* Local Memory iPre */
    u32_t iPrePack[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iPrePack
    u32_t iPreSpin[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iPreSpin

    /* Local Memory :: upSpin, downSpin */
    spin_t upSpin[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = upSpin
    spin_t downSpin[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = downSpin

    /* Local Memory :: dH */
    fp_t dH[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = dH

    /* Local Memory :: Jcoup_0 */
    fp_pack_t JcoupLocal[MAX_NTROT][NUM_STREAM]
                        [MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal
#pragma HLS ARRAY_PARTITION dim = 2 type = complete variable = JcoupLocal

    /* Initialize idxUp/idxDown */
INIT_IDX:
    for (u32_t t = 0; t < MAX_NTROT; t++) {
#pragma HLS UNROLL
        idxUp[t] = (t == 0) ? (MAX_NTROT - 1) : (t - 1);
        idxDown[t] = (t == MAX_NTROT - 1) ? 0 : (t + 1);
    }

    /* Precomputation of Tunnel-Related Energy */
    const fp_t dHTunnel = Jperp * ((fp_t)(2 * MAX_NTROT));

    /* Loop Stage */
LOOP_STAGE:
    for (u32_t stage = 0; stage < (MAX_NSPIN + MAX_NTROT - 1); stage++) {
        /* Force not to pipeline */
#pragma HLS PIPELINE off

        /* Update Input State */
    UPDATE_INPUT_STATE:
        for (u32_t t = 0; t < MAX_NTROT; t++) {
#pragma HLS UNROLL
            /* Compute offset  & Clamp into [0~MAX_NSPIN) */
            u32_t offset = ((stage + MAX_NSPIN - t) & (MAX_NSPIN - 1));
            u32_t packOffset = (offset >> (LOG2_PACKET_SIZE));
            u32_t spinOffset = (offset & (PACKET_SIZE - 1));

            /* Update iPre, upSpin/downSpin */
            iPrePack[t] = packOffset;
            iPreSpin[t] = spinOffset;
            upSpin[t] = trotters[idxUp[t]][packOffset][spinOffset];
            downSpin[t] = trotters[idxDown[t]][packOffset][spinOffset];

            /* Reset dH */
            dH[t] = h[offset];
        }

        /* Read New Jcoup_0 */
        if (stage < MAX_NSPIN) {
        READ_NEW_JCOUP:
            for (u32_t JcoupCount = 0;
                 JcoupCount < MAX_NSPIN / PACKET_SIZE / NUM_STREAM;
                 JcoupCount++) {
#pragma HLS PIPELINE
                JcoupLocal[0][0][JcoupCount] = Jcoup_0.read();
#if NUM_STREAM >= 2
                JcoupLocal[0][1][JcoupCount] = Jcoup_1.read();
#endif
#if NUM_STREAM >= 4
                JcoupLocal[0][2][JcoupCount] = Jcoup_2.read();
                JcoupLocal[0][3][JcoupCount] = Jcoup_3.read();
#endif
#if NUM_STREAM >= 8
                JcoupLocal[0][4][JcoupCount] = Jcoup_4.read();
                JcoupLocal[0][5][JcoupCount] = Jcoup_5.read();
                JcoupLocal[0][6][JcoupCount] = Jcoup_6.read();
                JcoupLocal[0][7][JcoupCount] = Jcoup_7.read();
#endif
            }
        }

        /* Loop Step */
    LOOP_STEP:
        for (u32_t step = 0, JcoupCount = 0; step < MAX_NSPIN;
             step += PACKET_SIZE * NUM_STREAM, JcoupCount++) {
#pragma HLS PIPELINE off
        TROTTER_EXE:
            for (u32_t t = 0; t < MAX_NTROT; t++) {
#pragma HLS UNROLL
                TU::TrotterUnit(t, stage, step, iPrePack[t], iPreSpin[t],
                                (step >> (LOG2_PACKET_SIZE)),
                                (step & (PACKET_SIZE - 1)), trotters[t], dH[t],
                                /* JcoupLocal s */
                                JcoupLocal[t],
                                /* JcoupLocal s End */
                                JcoupCount, upSpin[t], downSpin[t], Beta,
                                dHTunnel, logRandomNumber[t]);
            }
        }

    TROTTER_EXE_FINAL:
        for (u32_t t = 0; t < MAX_NTROT; t++) {
#pragma HLS UNROLL
            TU::TrotterUnitFinal(t, stage, iPrePack[t], iPreSpin[t],
                                 trotters[t], dH[t], upSpin[t], downSpin[t],
                                 Beta, dHTunnel, logRandomNumber[t]);
        }

        /* Shift Down JcoupLocal_0 */
    SHIFT_JcoupLocal:
        for (u32_t JcoupCount = 0;
             JcoupCount < MAX_NSPIN / PACKET_SIZE / NUM_STREAM; JcoupCount++) {
#pragma HLS PIPELINE
            for (i32_t t = MAX_NTROT - 2; t >= 0; t--) {
#pragma HLS UNROLL
                for (u32_t sC = 0; sC < NUM_STREAM; sC++) {
#pragma HLS UNROLL
                    JcoupLocal[t + 1][sC][JcoupCount] =
                        JcoupLocal[t][sC][JcoupCount];
                }
            }
        }
    }
}
