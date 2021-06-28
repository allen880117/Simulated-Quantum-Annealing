#include "../include/prng.hpp"
#include "../include/sqa.hpp"

#include <cmath>
#include <iostream>

#include "ap_int.h"
#include "hls_stream.h"

#define NPC (16)

/* Reduction */
template <int SIZE> void reductionFP5Adv(fp_t fpBuffer[NPC]) {
    /* Force Inline */
#pragma HLS INLINE
    reductionFP5Adv<SIZE / 2>(fpBuffer);
    for (int i = 0; i < NPC; i += SIZE) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + SIZE / 2];
    }
}

template <> void reductionFP5Adv<2>(fp_t fpBuffer[NPC]) {
    /* Force Inline */
#pragma HLS INLINE
    for (int i = 0; i < NPC; i += 2) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + 1];
    }
}

/* Trotter Unit */
template <int t>
void TrotterUnit5Adv(const int nSpin, const int ctlStep, const int i,
                     const int j, spin_t trotters[MAX_NSPIN],
                     const spin_t up_trotter, const spin_t down_trotter,
                     fp_t &dH, const fp_t Beta, const fp_t dHTunnel,
                     const fp_t JcoupLocal[MAX_NSPIN],
                     const fp_t logRandNumber) {

#pragma HLS INLINE off

    fp_t fpBuffer[NPC];
#pragma HLS ARRAY_PARTITION variable = fpBuffer complete dim = 1

    if (0 <= i && i < nSpin) {
        /* Cache */
        fp_t dHTmp = dH;

        /* Summation */
        for (int k = 0; k < NPC; k++) {
#pragma HLS UNROLL
            if (j + k < nSpin) {
                if (trotters[j + k]) {
                    fpBuffer[k] = JcoupLocal[j + k];
                } else {
                    fpBuffer[k] = -JcoupLocal[j + k];
                }
            } else {
                fpBuffer[k] = 0;
            }
        }

        reductionFP5Adv<NPC>(fpBuffer);
        dHTmp += fpBuffer[0];

        /* Final Step of this Stage of J[t, i] */
        if (j + NPC >= nSpin) {

            /* More Cache */
            spin_t this_spin = trotters[i];

            /* Compute Engery from up and down trotter */
            if (up_trotter == down_trotter) {
                if (up_trotter)
                    dHTmp -= dHTunnel;
                else
                    dHTmp += dHTunnel;
            }

            /* Times 2 and itself */
            dHTmp *= 2.0f;
            if (!this_spin) {
                dHTmp = -dHTmp;
            }

            /* Flip */
            if ((-Beta * dHTmp) > logRandNumber) {
                trotters[i] = (!this_spin);
            }

            /* Reset */
            // dHTmp = hNext; // Move to Outer Loop
        }

        /* Store Back */
        dH = dHTmp;
    }
}

/* Explicit Duplicate Trotter Units */
template <int NTROT>
void DuplicateTrotterUnits5Adv(
    const int nSpin, const int ctlStep, const int iPre[MAX_NTROT], const int j,
    spin_t trotters[MAX_NTROT][MAX_NSPIN], const spin_t up_trotter[MAX_NTROT],
    const spin_t down_trotter[MAX_NTROT], fp_t dH[MAX_NTROT], const fp_t Beta,
    const fp_t dHTunnel, const fp_t JcoupLocal[MAX_NTROT][MAX_NSPIN],
    const fp_t logRandNumber[MAX_NTROT]) {
/* Force Inline */
#pragma HLS INLINE
    DuplicateTrotterUnits5Adv<NTROT - 1>(nSpin, ctlStep, iPre, j, trotters,
                                         up_trotter, down_trotter, dH, Beta,
                                         dHTunnel, JcoupLocal, logRandNumber);
    TrotterUnit5Adv<NTROT - 1>(
        nSpin, ctlStep, iPre[NTROT - 1], j, trotters[NTROT - 1],
        up_trotter[NTROT - 1], down_trotter[NTROT - 1], dH[NTROT - 1], Beta,
        dHTunnel, JcoupLocal[NTROT - 1], logRandNumber[NTROT - 1]);
};

template <>
void DuplicateTrotterUnits5Adv<1>(
    const int nSpin, const int ctlStep, const int iPre[MAX_NTROT], const int j,
    spin_t trotters[MAX_NTROT][MAX_NSPIN], const spin_t up_trotter[MAX_NTROT],
    const spin_t down_trotter[MAX_NTROT], fp_t dH[MAX_NTROT], const fp_t Beta,
    const fp_t dHTunnel, const fp_t JcoupLocal[MAX_NTROT][MAX_NSPIN],
    const fp_t logRandNumber[MAX_NTROT]) {
    /* Force Inline */
#pragma HLS INLINE
    TrotterUnit5Adv<0>(nSpin, ctlStep, iPre[0], j, trotters[0], up_trotter[0],
                       down_trotter[0], dH[0], Beta, dHTunnel, JcoupLocal[0],
                       logRandNumber[0]);
}

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt5Adv(
    const int nSpin, spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
#if !MAXI
    hls::stream<fp_t> &Jcoup, /* Stream of Jcoup */
#else
    volatile fp_t Jcoup[MAX_NSPIN][MAX_NSPIN],
#endif
    const fp_t h[MAX_NTROT][MAX_NSPIN], /* Arraay of h */
    const fp_t Jperp,                   /* Thermal Related  */
    const fp_t Beta /* Thermal Related  */) {
    /* Interface */
#if !MAXI
#pragma HLS INTERFACE axis register both port = Jcoup
#else
#pragma HLS INTERFACE m_axi depth = 1048576 port = Jcoup offset = slave
#endif
#pragma HLS INTERFACE s_axilite port = return
#pragma HLS INTERFACE s_axilite port = Beta
#pragma HLS INTERFACE s_axilite port = Jperp
#pragma HLS INTERFACE s_axilite port = trotters
#pragma HLS INTERFACE s_axilite port = h
#pragma HLS INTERFACE s_axilite port = nSpin

    /* Array Partition Needed for trotters, and logRandNumber */
#pragma HLS ARRAY_PARTITION variable = trotters complete dim = 1
#pragma HLS ARRAY_PARTITION variable = h complete dim = 1

    /* JcoupStream (Depth)*/
    fp_t JcoupLocal[MAX_NTROT][MAX_NSPIN];
#pragma HLS ARRAY_PARTITION variable = JcoupLocal complete dim = 1

    /* Tunnel-related energy */
    fp_t dHTunnel = Jperp * (2 * MAX_NTROT);

    /* Local Field and Start/End and UpIdx/DownIdx */
    fp_t dH[MAX_NTROT];
    int  up[MAX_NTROT];
    int  down[MAX_NTROT];

    /* Array Partition */
#pragma HLS ARRAY_PARTITION variable = dH complete dim = 1
#pragma HLS ARRAY_PARTITION variable = up complete dim = 1
#pragma HLS ARRAY_PARTITION variable = down complete dim = 1

    /* Loop Initialization */
LOOP_INIT:
    for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = up inter false
#pragma HLS DEPENDENCE variable = down inter false
#pragma HLS DEPENDENCE variable = h inter false
        up[t]   = (t == 0) ? (MAX_NTROT - 1) : (t - 1); // Up Index
        down[t] = (t == MAX_NTROT - 1) ? (0) : (t + 1); // Down Index
    }

    /* Up/Down */
    spin_t up_trotter[MAX_NTROT];
    spin_t down_trotter[MAX_NTROT];
#pragma HLS ARRAY_PARTITION variable = up_trotter complete dim = 1
#pragma HLS ARRAY_PARTITION variable = down_trotter complete dim = 1

    /* Precompute i/j */
    int iPre[MAX_NTROT];
#pragma HLS ARRAY_PARTITION variable = iPre complete dim = 1

    /* Log Random Number */
    fp_t logRandomNumber[MAX_NTROT];
    int  seed[MAX_NTROT];
#pragma HLS ARRAY_PARTITION variable = logRandomNumber complete dim = 1
#pragma HLS ARRAY_PARTITION variable = seed complete dim = 1
LOOP_SEED:
    for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = seed inter false
        seed[t] = t + 1;
    }

    /* Explicit Stage Control */
    /*
                   0 1 2 3 4 5 5 6 7
        Trotter 0: 0 1 2 3 4 5
        Trotter 1:   0 1 2 3 4 5
        Trotter 2:     0 1 2 3 4 5
        Trotter 3:       0 1 2 3 4 5

        Total Stage = nSpin + (nTrot - 1)
        Each Stage needs (nSpin) steps for summation of Jcoup
    */
LOOP_CTRL:
    for (int ctlStep = 0; ctlStep < (MAX_NSPIN + MAX_NTROT - 1); ctlStep++) {
#pragma HLS LOOP_TRIPCOUNT max = 1031
        /* Exit Condition */
        if (ctlStep >= nSpin + MAX_NTROT - 1)
            break;

    LOOP_CTRL_I_PRE:
        for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = iPre inter false
            int  offset = ctlStep - t;
            bool inside = (0 <= offset && offset < nSpin);
            iPre[t]     = (inside) ? ctlStep : (t);
        }

    LOOP_CTRL_DH_RESET:
        for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = dH inter false
#pragma HLS DEPENDENCE variable = h inter false
#pragma HLS DEPENDENCE variable = iPre inter false
            dH[t] = h[t][iPre[t]];
        }

    LOOP_CTRL_UPDATE_UD:
        for (int t = 1; t < MAX_NTROT - 1; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = trotters inter false
#pragma HLS DEPENDENCE variable = up inter false
#pragma HLS DEPENDENCE variable = down inter false
#pragma HLS DEPENDENCE variable = iPre inter false
#pragma HLS DEPENDENCE variable = up_trotter inter false
#pragma HLS DEPENDENCE variable = down_trotter inter false
            up_trotter[t]   = trotters[t - 1][iPre[t]];
            down_trotter[t] = trotters[t + 1][iPre[t]];
        }
        up_trotter[0]               = trotters[MAX_NTROT - 1][iPre[0]];
        down_trotter[MAX_NTROT - 1] = trotters[0][iPre[MAX_NTROT - 1]];

    LOOP_CTRL_GEN_LRN_1:
        for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            PIPELINE
#pragma HLS DEPENDENCE variable = logRandomNumber inter false
#pragma HLS DEPENDENCE variable = seed inter false
            logRandomNumber[t] = log(uniform01(seed[t])) * MAX_NTROT;
        }

    LOOP_CTRL_SHIFT_JLOCAL:
        for (int t = MAX_NTROT - 1; t > 0; t--) {
#pragma HLS UNROLL
        LOOP_CTRL_SHIFT_JLOCAL_2:
            for (int k = 0; k < MAX_NSPIN; k++) {
#pragma HLS UNROLL     factor   = 16
#pragma HLS DEPENDENCE variable = JcoupLocal inter false
                JcoupLocal[t][k] = JcoupLocal[t-1][k];
            }
        }

#if MAXI
        /* Read New Jcoup */
        if (ctlStep < nSpin) {
        LOOP_CTRL_READ_JCOUP:
            for (int k = 0; k < nSpin; k++) {
#pragma HLS LOOP_TRIPCOUNT max = 1024
#pragma HLS                PIPELINE
                JcoupLocal[0][k] = Jcoup[ctlStep][k];
            }
        }
#endif

    LOOP_CTRL_2:
        for (int j = 0; j < MAX_NSPIN; j += NPC) {
#pragma HLS LOOP_TRIPCOUNT max  = 64
#pragma HLS DEPENDENCE variable = h inter false
            /* Exit Condition */
            if (j >= nSpin)
                break;

            for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = iPre inter false
                int  offset = ctlStep - t;
                bool inside = (0 <= offset && offset < nSpin);
                iPre[t]     = (inside) ? ctlStep : (0);
            }

            /* Read New Jcoup */
            if (ctlStep < nSpin) {
                for (int k = 0; k < NPC; k++) {
#pragma HLS UNROLL
                    if (j + k < nSpin) {
                        Jcoup >> JcoupLocal[0][j + k];
                    }
                }
            }

            /* Parallel Trotter Units */
            DuplicateTrotterUnits5Adv<MAX_NTROT>(
                nSpin, ctlStep, iPre, j, trotters, up_trotter, down_trotter, dH,
                Beta, dHTunnel, JcoupLocal, logRandomNumber);
        }
    }
}
