#include "../include/prng.hpp"
#include "../include/sqa.hpp"

#include <cmath>
#include <iostream>

#include "ap_int.h"
#include "hls_stream.h"

#define MAX_CTLSTEP ((MAX_NSPIN + (MAX_NTROT - 1)) * MAX_NSPIN)
#define FAST_MATH 1

#define UNIT 1
#define UNROLL_TEST 0
#define DEP 1

#define NPC (16)

/* Reduction */
template <int SIZE> void reductionFP3(fp_t fpBuffer[NPC]) {
    /* Force Inline */
#pragma HLS INLINE
    reductionFP3<SIZE / 2>(fpBuffer);
    for (int i = 0; i < NPC; i += SIZE) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + SIZE / 2];
    }
}

template <> void reductionFP3<2>(fp_t fpBuffer[NPC]) {
    /* Force Inline */
#pragma HLS INLINE
    for (int i = 0; i < NPC; i += 2) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + 1];
    }
}

/* Trotter Unit */
#if !UNROLL_TEST
template <int t>
void TrotterUnit3(const int nTrot, const int nSpin, const int ctlStep,
                  const int i, const int j, const int startStep,
                  const int endStep, spin_t trotters[MAX_NSPIN],
                  const spin_t up_trotter, const spin_t down_trotter, fp_t &dH,
                  const fp_t hNext, const fp_t Beta, const fp_t dHTunnel,
                  const fp_t JcoupLocal[MAX_NSPIN], const fp_t logRandNumber) {
#else
#endif

#pragma HLS INLINE off

    fp_t fpBuffer[NPC];
#pragma HLS ARRAY_PARTITION variable = fpBuffer complete dim = 1

    if (t < nTrot) {
        if (startStep <= ctlStep && ctlStep < endStep) {
            /* Cache */
            fp_t dHTmp = dH;

            /* Summation */
            for (int k = 0; k < NPC; k++) {
#pragma HLS UNROLL
                if (trotters[j + k]) {
                    fpBuffer[k] = JcoupLocal[j + k];
                } else {
                    fpBuffer[k] = -JcoupLocal[j + k];
                }
            }

            reductionFP3<NPC>(fpBuffer);
            dHTmp += fpBuffer[0];

            /* Final Step of this Stage of J[t, i] */
            if (j + NPC == nSpin) {

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
                dHTmp = hNext;
            }

            /* Store Back */
            dH = dHTmp;
        }
    }
}

/* Explicit Duplicate Trotter Units */
template <int NTROT>
void DuplicateTrotterUnits3(
    const int nTrot, const int nSpin, const int ctlStep,
    const int iPre[MAX_NTROT], const int j, const int startStep[MAX_NTROT],
    const int endStep[MAX_NTROT], spin_t trotters[MAX_NTROT][MAX_NSPIN],
    const spin_t up_trotter[MAX_NTROT], const spin_t down_trotter[MAX_NTROT],
    fp_t dH[MAX_NTROT], const fp_t h[MAX_NTROT], const fp_t Beta,
    const fp_t dHTunnel, const fp_t JcoupLocal[MAX_NTROT][MAX_NSPIN],
    const fp_t logRandNumber[MAX_NTROT]) {
/* Force Inline */
#pragma HLS INLINE
    DuplicateTrotterUnits3<NTROT - 1>(nTrot, nSpin, ctlStep, iPre, j, startStep,
                                      endStep, trotters, up_trotter,
                                      down_trotter, dH, h, Beta, dHTunnel,
                                      JcoupLocal, logRandNumber);

    fp_t hNext = (iPre[NTROT - 1] != nSpin - 1) ? h[iPre[NTROT - 1] + 1] : 0.0f;
    TrotterUnit3<NTROT - 1>(
        nTrot, nSpin, ctlStep, iPre[NTROT - 1], j, startStep[NTROT - 1],
        endStep[NTROT - 1], trotters[NTROT - 1], up_trotter[NTROT - 1],
        down_trotter[NTROT - 1], dH[NTROT - 1], hNext, Beta, dHTunnel,
        JcoupLocal[NTROT - 1], logRandNumber[NTROT - 1]);
};

template <>
void DuplicateTrotterUnits3<1>(
    const int nTrot, const int nSpin, const int ctlStep,
    const int iPre[MAX_NTROT], const int j, const int startStep[MAX_NTROT],
    const int endStep[MAX_NTROT], spin_t trotters[MAX_NTROT][MAX_NSPIN],
    const spin_t up_trotter[MAX_NTROT], const spin_t down_trotter[MAX_NTROT],
    fp_t dH[MAX_NTROT], const fp_t h[MAX_NTROT], const fp_t Beta,
    const fp_t dHTunnel, const fp_t JcoupLocal[MAX_NTROT][MAX_NSPIN],
    const fp_t logRandNumber[MAX_NTROT]) {
    /* Force Inline */
#pragma HLS INLINE
    fp_t hNext_0 = (iPre[0] != nSpin - 1) ? h[iPre[0] + 1] : 0.0f;
    TrotterUnit3<0>(nTrot, nSpin, ctlStep, iPre[0], j, startStep[0], endStep[0],
                    trotters[0], up_trotter[0], down_trotter[0], dH[0], hNext_0,
                    Beta, dHTunnel, JcoupLocal[0], logRandNumber[0]);
}

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt3(const int nTrot, const int nSpin,
                           spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
                           hls::stream<fp_t> &Jcoup, /* Stream of Jcoup */
                           const fp_t         h[MAX_NSPIN], /* Arraay of h */
                           const fp_t         Jperp, /* Thermal Related  */
                           const fp_t         Beta /* Thermal Related  */) {
    /* Interface */
#pragma HLS INTERFACE axis register both port = Jcoup
#pragma HLS INTERFACE s_axilite          port = return
#pragma HLS INTERFACE s_axilite          port = nTrot
#pragma HLS INTERFACE s_axilite          port = Beta
#pragma HLS INTERFACE s_axilite          port = Jperp
#pragma HLS INTERFACE s_axilite          port = trotters
#pragma HLS INTERFACE s_axilite          port = h
#pragma HLS INTERFACE s_axilite          port = nSpin

    /* Array Partition Needed for trotters, and logRandNumber */
#pragma HLS ARRAY_PARTITION variable = trotters complete dim = 1
#pragma HLS ARRAY_PARTITION variable = h cyclic factor = 8 dim = 1

    /* JcoupStream (Depth)*/
    fp_t JcoupLocal[MAX_NTROT][MAX_NSPIN];
#pragma HLS ARRAY_PARTITION variable = JcoupLocal complete dim = 1

    /* Tunnel-related energy */
    fp_t dHTunnel = Jperp * (2 * nTrot);

    /* Local Field and Start/End and UpIdx/DownIdx */
    fp_t dH[MAX_NTROT];
    int  startStep[MAX_NTROT];
    int  endStep[MAX_NTROT];
    int  up[MAX_NTROT];
    int  down[MAX_NTROT];

    /* Array Partition */
#pragma HLS ARRAY_PARTITION variable = dH complete dim = 1
#pragma HLS ARRAY_PARTITION variable = startStep complete dim = 1
#pragma HLS ARRAY_PARTITION variable = endStep complete dim = 1
#pragma HLS ARRAY_PARTITION variable = up complete dim = 1
#pragma HLS ARRAY_PARTITION variable = down complete dim = 1

    /* Loop Initialization */
LOOP_INIT:
    for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = dH inter false
#pragma HLS DEPENDENCE variable = startStep inter false
#pragma HLS DEPENDENCE variable = endStep inter false
#pragma HLS DEPENDENCE variable = up inter false
#pragma HLS DEPENDENCE variable = down inter false
#pragma HLS DEPENDENCE variable = h inter false
        dH[t]        = h[t];                  // Energy Initialization
        startStep[t] = (nSpin * (t));         // Start Latency of Trotter Unit
        endStep[t]   = (nSpin * (t + nSpin)); // Start Latency + Full Step
        up[t]        = (t == 0) ? (nTrot - 1) : (t - 1); // Up Index
        down[t]      = (t == nTrot - 1) ? (0) : (t + 1); // Down Index
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
#pragma HLS ARRAY_PARTITION variable = logRandomNumber complete dim = 1
    int seed = 1;

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
    for (int ctlStep = 0; ctlStep < MAX_CTLSTEP; ctlStep += NPC) {
        /* Exit Condition */
        if (ctlStep == (nSpin + (nTrot - 1)) * nSpin)
            break;

        /* Only Support for MAX_NSPIN is 2^N */
        int j = (ctlStep) & (MAX_NSPIN - 1);
        for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS UNROLL
#if DEP
#pragma HLS DEPENDENCE variable = startStep inter false
#pragma HLS DEPENDENCE variable = endStep inter false
#pragma HLS DEPENDENCE variable = iPre inter false
#endif
            int  offset = ctlStep - startStep[t];
            bool inside = (startStep[t] <= ctlStep && ctlStep < endStep[t]);
            iPre[t]     = (inside) ? (offset >> LOG2_MAX_NSPIN) : (0);
        }

        /* Update Up/Down Trotter */
        if (j == 0) {
            for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS UNROLL
#if DEP
#pragma HLS DEPENDENCE variable = trotters inter false
#pragma HLS DEPENDENCE variable = up inter false
#pragma HLS DEPENDENCE variable = down inter false
#pragma HLS DEPENDENCE variable = iPre inter false
#pragma HLS DEPENDENCE variable = up_trotter inter false
#pragma HLS DEPENDENCE variable = down_trotter inter false
#endif
                up_trotter[t]   = trotters[up[t]][iPre[t]];
                down_trotter[t] = trotters[down[t]][iPre[t]];
            }
        }

        /* Compute Log Random Number */
        for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS DEPENDENCE variable = logRandomNumber inter false
            logRandomNumber[t] = log(uniform01(seed)) * nTrot;
        }

        /* Shift Down Old Jcoup */
        for (int t = MAX_NTROT - 1; t > 0; t--) {
#pragma HLS UNROLL
            for (int k = 0; k < NPC; k++) {
#pragma HLS UNROLL
                JcoupLocal[t][j + k] = JcoupLocal[t - 1][j + k];
            }
        }

        /* Read New Jcoup */
        if (ctlStep < endStep[0]) {
            for (int k = 0; k < NPC; k++) {
#pragma HLS UNROLL
                Jcoup >> JcoupLocal[0][j + k];
            }
        }

        DuplicateTrotterUnits3<MAX_NTROT>(
            nTrot, nSpin, ctlStep, iPre, j, startStep, endStep, trotters,
            up_trotter, down_trotter, dH, h, Beta, dHTunnel, JcoupLocal,
            logRandomNumber);
    }
}
