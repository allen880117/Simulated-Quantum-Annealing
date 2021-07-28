#include "../include/sqa.hpp"
#include <iostream>

#define PRAGMA_SUB(PRAG) _Pragma(#PRAG)
#define OUR_PRAGMA(PRAG) PRAGMA_SUB(PRAG)

namespace TU {
template <u32_t size> void Reduction(fp_pack_t &fpBuffer) {
#pragma HLS INLINE
    Reduction<size / 2>(fpBuffer);
    for (u32_t i = 0; i < PACKET_SIZE; i += size) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + size / 2];
    }
}

template <> void Reduction<2>(fp_pack_t &fpBuffer) {
#pragma HLS INLINE
    for (u32_t i = 0; i < PACKET_SIZE; i += 2) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + 1];
    }
}

template <u32_t t>
void TrotterUnit(
    const u32_t stage, /* Current global stage */
    const u32_t step,  /* Current global step */
    const u32_t iPack, /* Idx of spin that will be updated */
    const u32_t iSpin, /* Idx of spin that will be updated */
    const u32_t jPack, /* Idx of spin */
    const u32_t jSpin, /* Idx of spin */
    spin_pack_t
              trotters[MAX_NSPIN / PACKET_SIZE], /* Spins in the same trotter */
    fp_t &    dH,                                /* Local Field */
    fp_pack_t JcoupLocal[MAX_NSPIN / PACKET_SIZE], /* Jcoup Stream */
    fp_pack_t &  JcoupLoaclNextReg,                /* Jcoup For Next Trotter */
    const u32_t  JcoupCount,                       /* JcoupCount */
    const spin_t upSpin,                           /* Spin from upper trotter */
    const spin_t downSpin,                         /*Spin from lower trotter*/
    const fp_t   Beta,                             /* Flip-Related */
    const fp_t   dHTunnel,                         /* Flip-Related */
    const fp_t   logRandNumber[MAX_NSPIN] /* Flip-Related */) {

    /* Force Inline off */
    //#pragma HLS INLINE off

    /* ==== [CHECK STAGE] ==== */
    bool inside = (stage >= t && stage < MAX_NSPIN + t);
    if (!inside) {
        return;
    }
    /* ==== [CHECK STAGE] ==== */

    /* Cache */
    fp_t      dHTmp    = dH;
    fp_pack_t fpBuffer = JcoupLocal[JcoupCount];
    JcoupLoaclNextReg  = JcoupLocal[JcoupCount];

    /* Summation::Multiply */
MULTIPLY:
    for (u32_t k = 0; k < PACKET_SIZE; k++) {
#pragma HLS UNROLL
        // #pragma HLS DEPENDENCE variable = fpBuffer inter false
        // #pragma HLS DEPENDENCE variable = trotters inter false
        if (!trotters[jPack][k]) {
            fpBuffer[k] = -fpBuffer[k];
        }
    }

    /* Summation::Reduction */
    Reduction<PACKET_SIZE>(fpBuffer);
    dHTmp += fpBuffer[0];

    /* Write Back */
    dH = dHTmp;

    /* ==== [FINAL STEP] ==== */
    if (jPack >= (MAX_NSPIN >> LOG2_PACKET_SIZE) - 1) {
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
        if (!this_spin) {
            dHTmp = -dHTmp;
        }

        /* Flip */
        if ((-Beta * dHTmp) >
            logRandNumber[(iPack << LOG2_PACKET_SIZE) + iSpin]) {
            trotters[iPack][iSpin] = (!this_spin);
        }
    }
};

template <u32_t t>
void DuplicateTU(
    const u32_t stage,            /* Current global stage */
    const u32_t step,             /* Current global step */
    const u32_t iPack[MAX_NTROT], /* Idx of spin that will be updated */
    const u32_t iSpin[MAX_NTROT], /* Idx of spin that will be updated */
    const u32_t jPack,            /* Idx of spin */
    const u32_t jSpin,            /* Idx of spin */
    spin_pack_t trotters[MAX_NTROT][MAX_NSPIN / PACKET_SIZE], /* Spins in the
                                                                 same trotter */
    fp_t      dH[MAX_NTROT],                                  /* Local Field */
    fp_pack_t JcoupLocal[MAX_NTROT][MAX_NSPIN / PACKET_SIZE], /* Jcoup Stream */
    fp_pack_t JcoupLoaclNextReg[MAX_NTROT], /* Jcoup For Next Trotter */
    const u32_t  JcoupCount,                /* JcoupCount */
    const spin_t upSpin[MAX_NTROT],         /* Spin from upper trotter */
    const spin_t downSpin[MAX_NTROT],       /*Spin from lower trotter*/
    const fp_t   Beta,                      /* Flip-Related */
    const fp_t   dHTunnel,                  /* Flip-Related */
    const fp_t   logRandNumber[MAX_NTROT][MAX_NSPIN] /* Flip-Related */) {
#pragma HLS INLINE
    DuplicateTU<t - 1>(stage, step, iPack, iSpin, jPack, jSpin, trotters, dH,
                       JcoupLocal, JcoupLoaclNextReg, JcoupCount, upSpin,
                       downSpin, Beta, dHTunnel, logRandNumber);
    TrotterUnit<t - 1>(stage, step, iPack[t - 1], iSpin[t - 1], jPack, jSpin,
                       trotters[t - 1], dH[t - 1], JcoupLocal[t - 1],
                       JcoupLoaclNextReg[t - 1], JcoupCount, upSpin[t - 1],
                       downSpin[t - 1], Beta, dHTunnel, logRandNumber[t - 1]);
}

template <>
void DuplicateTU<1>(
    const u32_t stage,            /* Current global stage */
    const u32_t step,             /* Current global step */
    const u32_t iPack[MAX_NTROT], /* Idx of spin that will be updated */
    const u32_t iSpin[MAX_NTROT], /* Idx of spin that will be updated */
    const u32_t jPack,            /* Idx of spin */
    const u32_t jSpin,            /* Idx of spin */
    spin_pack_t trotters[MAX_NTROT][MAX_NSPIN / PACKET_SIZE], /* Spins in the
                                                                 same trotter */
    fp_t      dH[MAX_NTROT],                                  /* Local Field */
    fp_pack_t JcoupLocal[MAX_NTROT][MAX_NSPIN / PACKET_SIZE], /* Jcoup Stream */
    fp_pack_t JcoupLoaclNextReg[MAX_NTROT], /* Jcoup For Next Trotter */
    const u32_t  JcoupCount,                /* JcoupCount */
    const spin_t upSpin[MAX_NTROT],         /* Spin from upper trotter */
    const spin_t downSpin[MAX_NTROT],       /*Spin from lower trotter*/
    const fp_t   Beta,                      /* Flip-Related */
    const fp_t   dHTunnel,                  /* Flip-Related */
    const fp_t   logRandNumber[MAX_NTROT][MAX_NSPIN] /* Flip-Related */) {
#pragma HLS INLINE
    TrotterUnit<0>(stage, step, iPack[0], iSpin[0], jPack, jSpin, trotters[0],
                   dH[0], JcoupLocal[0], JcoupLoaclNextReg[0], JcoupCount,
                   upSpin[0], downSpin[0], Beta, dHTunnel, logRandNumber[0]);
}

}; // namespace TU

void UpdateInputState(const u32_t  stage,            /* Current Global Stage */
                      const u32_t  idxUp[MAX_NTROT], /* Idx of Up Trotter */
                      const u32_t  idxDown[MAX_NTROT], /* Idx of Down Trotter */
                      const spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
                      const fp_t   h[MAX_NSPIN],        /* Array of h */
                      u32_t        iPre[MAX_NTROT],     /* Array of iPre */
                      spin_t       upSpin[MAX_NTROT],   /* Array of upSpin */
                      spin_t       downSpin[MAX_NTROT], /* Array of downSpin */
                      fp_t         dH[MAX_NTROT]        /* Array of dH */
) {
UPDATE_INPUT_STATE:
    for (u32_t t = 0; t < MAX_NTROT; t++) {
        /* Compute offset  & Clamp into [0~MAX_NSPIN) */
        u32_t offset = ((stage - t) & (MAX_NSPIN - 1));
        /* Update iPre, upSpin/downSpin */
        iPre[t]     = offset;
        upSpin[t]   = trotters[idxUp[t]][offset];
        downSpin[t] = trotters[idxDown[t]][offset];
        /* Reset dH */
        dH[t] = h[offset];
    }
}

void QuantumMonteCarlo(
    spin_pack_t trotters[MAX_NTROT][MAX_NSPIN / PACKET_SIZE], /* Spins */
    hls::stream<fp_pack_t> &Jcoup,                            /* Jcoup */
    const fp_t              h[MAX_NSPIN],                     /* Array of h */
    const fp_t              Jperp,                   /* Thermal Related */
    const fp_t              Beta,                    /* Thermal Related */
    const fp_t logRandomNumber[MAX_NTROT][MAX_NSPIN] /* Log Random Number */
) {

    /* ======================== [I'M DIVIDING LINE] ========================*/
#pragma HLS TOP       name = QuantumMonteCarlo
#pragma HLS INTERFACE mode = s_axilite port = return
#pragma HLS INTERFACE mode = s_axilite port = trotters
#pragma HLS INTERFACE mode = axis register_mode = both port = Jcoup register
#pragma HLS INTERFACE mode = s_axilite port = h
#pragma HLS INTERFACE mode = s_axilite port = Jperp
#pragma HLS INTERFACE mode = s_axilite port = Beta
#pragma HLS INTERFACE mode = s_axilite port = logRandomNumber
#pragma HLS ARRAY_PARTITION variable = trotters type = complete dim = 1
    OUR_PRAGMA(HLS ARRAY_PARTITION variable = h factor = MAX_NTROT type =
                   cyclic                                          dim = 1)
#pragma HLS ARRAY_PARTITION variable = logRandomNumber type = complete dim = 1
    /* ======================== [I'M DIVIDING LINE] ========================*/
    /* Precomputation of Tunnel-Related Energy */
    const fp_t dHTunnel = Jperp * ((fp_t)(2 * MAX_NTROT));

    /* Local Memory :: idxUp/idxDown */
    u32_t idxUp[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxUp
    u32_t idxDown[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxDown
INIT_IDX:
    for (u32_t t = 0; t < MAX_NTROT; t++) {
#pragma HLS UNROLL
        idxUp[t]   = (t == 0) ? (MAX_NTROT - 1) : (t - 1);
        idxDown[t] = (t == MAX_NTROT - 1) ? 0 : (t + 1);
    }

    /* Local Memory iPre */
    u32_t iPrePack[MAX_NTROT];
    u32_t iPreSpin[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iPrePack
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iPreSpin

    /* Local Memory :: Jcoup */
    // hls::stream<fp_pack_t, MAX_NSPIN / PACKET_SIZE> JcoupLocal[MAX_NTROT];
    fp_pack_t JcoupLocal[MAX_NTROT][MAX_NSPIN / PACKET_SIZE];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal
    fp_pack_t JcoupLoaclNextReg[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLoaclNextReg

    /* Local Memory :: dH, upSpin, downSpin */
    fp_t dH[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = dH
    spin_t upSpin[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = upSpin
    spin_t downSpin[MAX_NTROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = downSpin

    /* ======================== [I'M DIVIDING LINE] ========================*/
    /* Loop Stage */
LOOP_STAGE:
    for (u32_t stage = 0; stage < (MAX_NSPIN + MAX_NTROT - 1); stage++) {
#pragma HLS PIPELINE off
        /* Update Input State */
    UPDATE_INPUT_STATE:
        for (u32_t t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = iPrePack inter false
#pragma HLS DEPENDENCE variable = iPreSpin inter false
#pragma HLS DEPENDENCE variable = upSpin inter false
#pragma HLS DEPENDENCE variable = downSpin inter false
// #pragma HLS DEPENDENCE variable = trotters inter false
// #pragma HLS DEPENDENCE variable = h inter false
#pragma HLS DEPENDENCE variable = idxUp inter false
#pragma HLS DEPENDENCE variable = idxDown inter false
#pragma HLS DEPENDENCE variable = dH inter false
            /* Compute offset  & Clamp into [0~MAX_NSPIN) */
            u32_t offset     = ((stage + MAX_NSPIN - t) & (MAX_NSPIN - 1));
            u32_t packOffset = (offset >> (LOG2_PACKET_SIZE));
            u32_t spinOffset = (offset & (PACKET_SIZE - 1));
            /* Update iPre, upSpin/downSpin */
            iPrePack[t] = packOffset;
            iPreSpin[t] = spinOffset;
            upSpin[t]   = trotters[idxUp[t]][packOffset][spinOffset];
            downSpin[t] = trotters[idxDown[t]][packOffset][spinOffset];
            /* Reset dH */
            dH[t] = h[offset];
        }

        /* Loop Step */
    LOOP_STEP:
        for (u32_t step = 0, JcoupCount = 0; step < MAX_NSPIN;
             step += PACKET_SIZE, JcoupCount++) {
            //#pragma HLS PIPELINE
            /* Read New Jcoup */
            if (stage < MAX_NSPIN) {
                JcoupLocal[0][JcoupCount] = Jcoup.read();
            }

            /* Trotter Executions */
            TU::DuplicateTU<MAX_NTROT>(
                stage, step, iPrePack, iPreSpin, (step >> (LOG2_PACKET_SIZE)),
                (step & (PACKET_SIZE - 1)), trotters, dH, JcoupLocal,
                JcoupLoaclNextReg, JcoupCount, upSpin, downSpin, Beta, dHTunnel,
                logRandomNumber);

            /* Shift Down JcoupLocal */
        SHIFT_JcoupLocal:
            for (u32_t t = 0; t < MAX_NTROT - 1; t++) {
#pragma HLS UNROLL
                JcoupLocal[t + 1][JcoupCount] = JcoupLoaclNextReg[t];
            }
        }
    }
}
