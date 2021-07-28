#include <iostream>

#include "../include/sqa.hpp"

#define PRAGMA_SUB(PRAG) _Pragma(#PRAG)
#define OUR_PRAGMA(PRAG) PRAGMA_SUB(PRAG)

namespace TU {
template <u32_t size>
void Reduction(fp_t fpBuffer[PACKET_SIZE]) {
#pragma HLS INLINE
    Reduction<size / 2>(fpBuffer);
    for (u32_t i = 0; i < PACKET_SIZE; i += size) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + size / 2];
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
    spin_pack_t trotters[MAX_NSPIN / PACKET_SIZE],
    /* Local Field */
    fp_t &dH,
    /* Jcoup_0 Stream and Register for Next Tortter, 0 */
    fp_pack_t JcoupLocal_0[MAX_NSPIN / PACKET_SIZE],
#if NUM_STREAM >= 2
    /* Jcoup_0 Stream and Register for Next Tortter, 1 */
    fp_pack_t JcoupLocal_1[MAX_NSPIN / PACKET_SIZE],
#endif
#if NUM_STREAM >= 4
    /* Jcoup_0 Stream and Register for Next Tortter, 2 */
    fp_pack_t JcoupLocal_2[MAX_NSPIN / PACKET_SIZE],
    /* Jcoup_0 Stream and Register for Next Tortter, 3 */
    fp_pack_t JcoupLocal_3[MAX_NSPIN / PACKET_SIZE],
#endif
#if NUM_STREAM >= 8
    /* Jcoup_0 Stream and Register for Next Tortter, 4 */
    fp_pack_t JcoupLocal_4[MAX_NSPIN / PACKET_SIZE],
    /* Jcoup_0 Stream and Register for Next Tortter, 5 */
    fp_pack_t JcoupLocal_5[MAX_NSPIN / PACKET_SIZE],
    /* Jcoup_0 Stream and Register for Next Tortter, 6 */
    fp_pack_t JcoupLocal_6[MAX_NSPIN / PACKET_SIZE],
    /* Jcoup_0 Stream and Register for Next Tortter, 7 */
    fp_pack_t JcoupLocal_7[MAX_NSPIN / PACKET_SIZE],
#endif
    /* JcoupCount */
    const u32_t JcoupCount,
    /* Spin from upper/lower trotter */
    const spin_t upSpin, const spin_t downSpin,
    /* Flip-Related */
    const fp_t Beta, const fp_t dHTunnel, const fp_t logRandNumber[MAX_NSPIN]) {
    /* Limit the number of fadd */
#pragma HLS ALLOCATION operation instances = fadd limit = 4

    /* ==== [CHECK STAGE] ==== */
    bool inside = (stage >= t && stage < MAX_NSPIN + t);
    if (!inside) { return; }
    /* ==== [CHECK STAGE] ==== */

    /* Cache */
    fp_t dHTmp = dH;

    fp_t fpBuffer_0[PACKET_SIZE];
    for (u32_t i = 0; i < PACKET_SIZE; i++) {
#pragma HLS UNROLL
        fpBuffer_0[i] = JcoupLocal_0[JcoupCount][i];
    }
#if NUM_STREAM >= 2
    fp_t fpBuffer_1[PACKET_SIZE];
    for (u32_t i = 0; i < PACKET_SIZE; i++) {
#pragma HLS UNROLL
        fpBuffer_1[i] = JcoupLocal_1[JcoupCount][i];
    }
#endif
#if NUM_STREAM >= 4
    fp_t fpBuffer_2[PACKET_SIZE];
    for (u32_t i = 0; i < PACKET_SIZE; i++) {
#pragma HLS UNROLL
        fpBuffer_2[i] = JcoupLocal_2[JcoupCount][i];
    }
    fp_t fpBuffer_3[PACKET_SIZE];
    for (u32_t i = 0; i < PACKET_SIZE; i++) {
#pragma HLS UNROLL
        fpBuffer_3[i] = JcoupLocal_3[JcoupCount][i];
    }
#endif
#if NUM_STREAM >= 8
    fp_t fpBuffer_4[PACKET_SIZE];
    for (u32_t i = 0; i < PACKET_SIZE; i++) {
#pragma HLS UNROLL
        fpBuffer_4[i] = JcoupLocal_4[JcoupCount][i];
    }
    fp_t fpBuffer_5[PACKET_SIZE];
    for (u32_t i = 0; i < PACKET_SIZE; i++) {
#pragma HLS UNROLL
        fpBuffer_5[i] = JcoupLocal_5[JcoupCount][i];
    }
    fp_t fpBuffer_6[PACKET_SIZE];
    for (u32_t i = 0; i < PACKET_SIZE; i++) {
#pragma HLS UNROLL
        fpBuffer_6[i] = JcoupLocal_6[JcoupCount][i];
    }
    fp_t fpBuffer_7[PACKET_SIZE];
    for (u32_t i = 0; i < PACKET_SIZE; i++) {
#pragma HLS UNROLL
        fpBuffer_7[i] = JcoupLocal_7[JcoupCount][i];
    }
#endif

    /* Summation::Multiply */
MULTIPLY:
    for (u32_t k = 0; k < PACKET_SIZE; k++) {
#pragma HLS UNROLL
        if (!trotters[jPack + 0][k]) { fpBuffer_0[k] = -fpBuffer_0[k]; }
#if NUM_STREAM >= 2
        if (!trotters[jPack + 1][k]) { fpBuffer_1[k] = -fpBuffer_1[k]; }
#endif
#if NUM_STREAM >= 4
        if (!trotters[jPack + 2][k]) { fpBuffer_2[k] = -fpBuffer_2[k]; }
        if (!trotters[jPack + 3][k]) { fpBuffer_3[k] = -fpBuffer_3[k]; }
#endif
#if NUM_STREAM >= 8
        if (!trotters[jPack + 4][k]) { fpBuffer_4[k] = -fpBuffer_4[k]; }
        if (!trotters[jPack + 5][k]) { fpBuffer_5[k] = -fpBuffer_5[k]; }
        if (!trotters[jPack + 6][k]) { fpBuffer_6[k] = -fpBuffer_6[k]; }
        if (!trotters[jPack + 7][k]) { fpBuffer_7[k] = -fpBuffer_7[k]; }
#endif
    }

    /* Summation::Reduction */
    Reduction<PACKET_SIZE>(fpBuffer_0);
#if NUM_STREAM >= 2
    Reduction<PACKET_SIZE>(fpBuffer_1);
#endif
#if NUM_STREAM >= 4
    Reduction<PACKET_SIZE>(fpBuffer_2);
    Reduction<PACKET_SIZE>(fpBuffer_3);
#endif
#if NUM_STREAM >= 8
    Reduction<PACKET_SIZE>(fpBuffer_4);
    Reduction<PACKET_SIZE>(fpBuffer_5);
    Reduction<PACKET_SIZE>(fpBuffer_6);
    Reduction<PACKET_SIZE>(fpBuffer_7);
#endif
#if NUM_STREAM >= 8
    fpBuffer_0[0] += fpBuffer_4[0];
    fpBuffer_1[0] += fpBuffer_5[0];
    fpBuffer_2[0] += fpBuffer_6[0];
    fpBuffer_3[0] += fpBuffer_7[0];
#endif
#if NUM_STREAM >= 4
    fpBuffer_0[0] += fpBuffer_2[0];
    fpBuffer_1[0] += fpBuffer_3[0];
#endif
#if NUM_STREAM >= 2
    fpBuffer_0[0] += fpBuffer_1[0];
#endif
    dHTmp += fpBuffer_0[0];

    /* Write Back */
    dH = dHTmp;

    /* ==== [FINAL STEP] ==== */
    if (jPack + NUM_STREAM >= (MAX_NSPIN / PACKET_SIZE)) {
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
        if ((-Beta * dHTmp) >
            logRandNumber[(iPack << LOG2_PACKET_SIZE) + iSpin]) {
            trotters[iPack][iSpin] = (!this_spin);
        }
    }
};

};  // namespace TU

void QuantumMonteCarlo(
    /* Spins */
    spin_pack_t trotters[MAX_NTROT][MAX_NSPIN / PACKET_SIZE],
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
    fp_pack_t JcoupLocal_0[MAX_NTROT][MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal_0
#if NUM_STREAM >= 2
    fp_pack_t JcoupLocal_1[MAX_NTROT][MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal_1
#endif
#if NUM_STREAM >= 4
    fp_pack_t JcoupLocal_2[MAX_NTROT][MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal_2
    fp_pack_t JcoupLocal_3[MAX_NTROT][MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal_3
#endif
#if NUM_STREAM >= 8
    fp_pack_t JcoupLocal_4[MAX_NTROT][MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal_4
    fp_pack_t JcoupLocal_5[MAX_NTROT][MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal_5
    fp_pack_t JcoupLocal_6[MAX_NTROT][MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal_6
    fp_pack_t JcoupLocal_7[MAX_NTROT][MAX_NSPIN / PACKET_SIZE / NUM_STREAM];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal_7
#endif

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
                JcoupLocal_0[0][JcoupCount] = Jcoup_0.read();
#if NUM_STREAM >= 2
                JcoupLocal_1[0][JcoupCount] = Jcoup_1.read();
#endif
#if NUM_STREAM >= 4
                JcoupLocal_2[0][JcoupCount] = Jcoup_2.read();
                JcoupLocal_3[0][JcoupCount] = Jcoup_3.read();
#endif
#if NUM_STREAM >= 8
                JcoupLocal_4[0][JcoupCount] = Jcoup_4.read();
                JcoupLocal_5[0][JcoupCount] = Jcoup_5.read();
                JcoupLocal_6[0][JcoupCount] = Jcoup_6.read();
                JcoupLocal_7[0][JcoupCount] = Jcoup_7.read();
#endif
            }
        }

        /* Loop Step */
    LOOP_STEP:
        for (u32_t step = 0, JcoupCount = 0; step < MAX_NSPIN;
             step += PACKET_SIZE * NUM_STREAM, JcoupCount++) {
        TROTTER_EXE:
            for (u32_t t = 0; t < MAX_NTROT; t++) {
#pragma HLS UNROLL
                TU::TrotterUnit(t, stage, step, iPrePack[t], iPreSpin[t],
                                (step >> (LOG2_PACKET_SIZE)),
                                (step & (PACKET_SIZE - 1)), trotters[t], dH[t],
                                /* JcoupLocal s */
                                JcoupLocal_0[t],
#if NUM_STREAM >= 2
                                JcoupLocal_1[t],
#endif
#if NUM_STREAM >= 4
                                JcoupLocal_2[t], JcoupLocal_3[t],
#endif
#if NUM_STREAM >= 8
                                JcoupLocal_4[t], JcoupLocal_5[t],
                                JcoupLocal_6[t], JcoupLocal_7[t],
#endif
                                /* JcoupLocal s End */
                                JcoupCount, upSpin[t], downSpin[t], Beta,
                                dHTunnel, logRandomNumber[t]);
            }
        }

        /* Shift Down JcoupLocal_0 */
    SHIFT_JcoupLocal:
        for (u32_t JcoupCount = 0;
             JcoupCount < MAX_NSPIN / PACKET_SIZE / NUM_STREAM; JcoupCount++) {
            for (i32_t t = MAX_NTROT - 2; t >= 0; t--) {
#pragma HLS UNROLL
                JcoupLocal_0[t + 1][JcoupCount] = JcoupLocal_0[t][JcoupCount];
#if NUM_STREAM >= 2
                JcoupLocal_1[t + 1][JcoupCount] = JcoupLocal_1[t][JcoupCount];
#endif
#if NUM_STREAM >= 4
                JcoupLocal_2[t + 1][JcoupCount] = JcoupLocal_2[t][JcoupCount];
                JcoupLocal_3[t + 1][JcoupCount] = JcoupLocal_3[t][JcoupCount];
#endif
#if NUM_STREAM >= 8
                JcoupLocal_4[t + 1][JcoupCount] = JcoupLocal_4[t][JcoupCount];
                JcoupLocal_5[t + 1][JcoupCount] = JcoupLocal_5[t][JcoupCount];
                JcoupLocal_6[t + 1][JcoupCount] = JcoupLocal_6[t][JcoupCount];
                JcoupLocal_7[t + 1][JcoupCount] = JcoupLocal_7[t][JcoupCount];
#endif
            }
        }
    }
}
