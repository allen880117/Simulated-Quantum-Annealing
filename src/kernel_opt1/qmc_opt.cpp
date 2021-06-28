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

/* Trotter Unit */
#if !UNROLL_TEST
template <int t>
void TrotterUnit(const int nTrot, const int nSpin, const int ctlStep,
                 const int i, const int j, const int startStep,
                 const int endStep, spin_t trotters[MAX_NSPIN],
                 const spin_t up_trotter, const spin_t down_trotter, fp_t &dH,
                 const fp_t hNext, const fp_t Beta, const fp_t dHTunnel,
                 const fp_t logRandNumber[MAX_NSPIN],
                 const fp_t JcoupLocal[MAX_NSPIN]) {
#else
void TrotterUnit(const int nTrot, const int nSpin, const int ctlStep,
                 const int t, const int i, const int j, const int startStep,
                 const int endStep, spin_t trotters[MAX_NSPIN],
                 const spin_t up_trotter, const spin_t down_trotter, fp_t &dH,
                 const fp_t hNext, const fp_t Beta, const fp_t dHTunnel,
                 const fp_t logRandNumber[MAX_NSPIN],
                 const fp_t JcoupLocal[MAX_NSPIN]) {
#endif
    if (t < nTrot) {
        if (startStep <= ctlStep && ctlStep < endStep) {
            /* Cache */
            fp_t dHTmp = dH;

            /* Summation */
            if (trotters[j]) {
                dHTmp += JcoupLocal[j];
            } else {
                dHTmp -= JcoupLocal[j];
            }

            /* Final Step of this Stage of J[t, i] */
            if (j == nSpin - 1) {
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
                if ((-Beta * dHTmp) > logRandNumber[i]) {
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

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt(const int nTrot, const int nSpin,
                          spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
                          hls::stream<fp_t> &Jcoup,        /* Stream of Jcoup */
                          const fp_t         h[MAX_NSPIN], /* Arraay of h */
                          const fp_t         Jperp, /* Thermal Related  */
                          const fp_t         Beta,  /* Thermal Related  */
                          const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]) {
    /* Interface */
#pragma HLS INTERFACE axis register both port = Jcoup
#pragma HLS INTERFACE s_axilite          port = return
#pragma HLS INTERFACE s_axilite          port = logRandNumber
#pragma HLS INTERFACE s_axilite          port = nTrot
#pragma HLS INTERFACE s_axilite          port = Beta
#pragma HLS INTERFACE s_axilite          port = Jperp
#pragma HLS INTERFACE s_axilite          port = trotters
#pragma HLS INTERFACE s_axilite          port = h
#pragma HLS INTERFACE s_axilite          port = nSpin

    /* Array Partition Needed for trotters, and logRandNumber */
#pragma HLS ARRAY_PARTITION variable = logRandNumber complete dim = 1
#pragma HLS ARRAY_PARTITION variable = trotters complete dim = 1
#pragma HLS ARRAY_PARTITION variable = h cyclic factor = 4 dim = 1

    /* JcoupStream (Depth + 1 for Avoiding Overflow )*/
#if !UNIT
    static hls::stream<fp_t, MAX_NSPIN + 1> JcoupStream[MAX_NTROT + 1];
#else
    /* Last One for Pre-Read */
    fp_t JcoupLocal[MAX_NTROT][MAX_NSPIN];
#pragma HLS ARRAY_PARTITION variable = JcoupLocal complete dim = 1
#endif

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
    for (int ctlStep = 0; ctlStep < MAX_CTLSTEP; ctlStep++) {
        /* Exit Condition */
        if (ctlStep == (nSpin + (nTrot - 1)) * nSpin)
            break;

/* Update iPre, j */
#if !FAST_MATH
        int j = (ctlStep) % nSpin;
        for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = startStep inter false
#pragma HLS DEPENDENCE variable = iPre inter false
            iPre[t] = (ctlStep - startStep[t]) / nSpin;
        }
#else
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
#endif

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

#if !UNIT
        /* Read Jcoup */
        if (ctlStep < endStep[0]) {
            JcoupStream[0] << Jcoup.read();
        }
#else
        /* Shift Down Old Jcoup */
        for (int t = MAX_NTROT - 1; t > 0; t--) {
#pragma HLS UNROLL
            JcoupLocal[t][j] = JcoupLocal[t - 1][j];
        }

        /* Read New Jcoup */
        if (ctlStep < endStep[0]) {
            Jcoup >> JcoupLocal[0][j];
        }
#endif

#if !UNIT
    /* For Each Trotter */
    LOOP_TROTTERS:
        for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = trotters inter false
#pragma HLS DEPENDENCE variable = logRandNumber inter false
#pragma HLS DEPENDENCE variable = JcoupStream inter false
#pragma HLS DEPENDENCE variable = dH inter false
#pragma HLS DEPENDENCE variable = startStep inter false
#pragma HLS DEPENDENCE variable = endStep inter false
#pragma HLS DEPENDENCE variable = up inter false
#pragma HLS DEPENDENCE variable = down inter false
#pragma HLS DEPENDENCE variable = up_trotter inter false
#pragma HLS DEPENDENCE variable = down_trotter inter false
#pragma HLS DEPENDENCE variable = iPre inter false
            /* If the CtlStep falls in the active area of the trotter[t] */
            if (t < nTrot) {
                if (startStep[t] <= ctlStep && ctlStep < endStep[t]) {
                    /* Cache */
                    fp_t dHTmp = dH[t];
                    int  i     = iPre[t]; /* Index of This Spin */

                    /* Read Jcoup[i, j] */
                    fp_t JcoupTmp = JcoupStream[t].read();

                    /* Summation */
                    if (trotters[t][j]) {
                        dHTmp += JcoupTmp;
                    } else {
                        dHTmp -= JcoupTmp;
                    }

                    /* Pass Down to Next Trotter */
                    if (t != nTrot - 1) {
                        JcoupStream[t + 1] << JcoupTmp;
                    }

                    /* Final Step of this Stage of J[t, i] */
                    if (j == nSpin - 1) {
                        /* More Cache */
                        fp_t   hNext     = (i != nSpin - 1) ? h[i + 1] : 0.0f;
                        spin_t this_spin = trotters[t][i];

                        /* Compute Engery from up and down trotter */
                        if (up_trotter[t] == down_trotter[t]) {
                            if (up_trotter[t])
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
                        if ((-Beta * dHTmp) > logRandNumber[t][i]) {
                            trotters[t][i] = (!this_spin);
                        }

                        /* Reset */
                        dHTmp = hNext;
                    }

                    /* Store Back */
                    dH[t] = dHTmp;
                }
            }
#else

#if !UNROLL_TEST
        fp_t hNext_0 = (iPre[0] != nSpin - 1) ? h[iPre[0] + 1] : 0.0f;
        TrotterUnit<0>(nTrot, nSpin, ctlStep, iPre[0], j, startStep[0],
                       endStep[0], trotters[0], up_trotter[0], down_trotter[0],
                       dH[0], hNext_0, Beta, dHTunnel, logRandNumber[0],
                       JcoupLocal[0]);

        fp_t hNext_1 = (iPre[1] != nSpin - 1) ? h[iPre[1] + 1] : 0.0f;
        TrotterUnit<1>(nTrot, nSpin, ctlStep, iPre[1], j, startStep[1],
                       endStep[1], trotters[1], up_trotter[1], down_trotter[1],
                       dH[1], hNext_1, Beta, dHTunnel, logRandNumber[1],
                       JcoupLocal[1]);

        fp_t hNext_2 = (iPre[2] != nSpin - 1) ? h[iPre[2] + 1] : 0.0f;
        TrotterUnit<2>(nTrot, nSpin, ctlStep, iPre[2], j, startStep[2],
                       endStep[2], trotters[2], up_trotter[2], down_trotter[2],
                       dH[2], hNext_2, Beta, dHTunnel, logRandNumber[2],
                       JcoupLocal[2]);
                       
        fp_t hNext_3 = (iPre[3] != nSpin - 1) ? h[iPre[3] + 1] : 0.0f;
        TrotterUnit<3>(nTrot, nSpin, ctlStep, iPre[3], j, startStep[3],
                       endStep[3], trotters[3], up_trotter[3], down_trotter[3],
                       dH[3], hNext_3, Beta, dHTunnel, logRandNumber[3],
                       JcoupLocal[3]);
#else
    LOOP_TROTTERS:
        for (int t = 0; t < MAX_NTROT; t++) {
#pragma HLS            UNROLL
#pragma HLS DEPENDENCE variable = trotters inter false
#pragma HLS DEPENDENCE variable = logRandNumber inter false
#pragma HLS DEPENDENCE variable = JcoupLocal inter false
#pragma HLS DEPENDENCE variable = dH inter false
#pragma HLS DEPENDENCE variable = startStep inter false
#pragma HLS DEPENDENCE variable = endStep inter false
#pragma HLS DEPENDENCE variable = up inter false
#pragma HLS DEPENDENCE variable = down inter false
#pragma HLS DEPENDENCE variable = up_trotter inter false
#pragma HLS DEPENDENCE variable = down_trotter inter false
#pragma HLS DEPENDENCE variable = iPre inter false
            int  i     = iPre[t];
            fp_t hNext = (i != nSpin - 1) ? h[i + 1] : 0.0f;
            TrotterUnit(nTrot, nSpin, ctlStep, t, i, j, startStep[t],
                        endStep[t], trotters[t], up_trotter[t], down_trotter[t],
                        dH[t], hNext, Beta, dHTunnel, logRandNumber[t],
                        JcoupLocal[t]);
        }
#endif

#endif
#if !UNIT
        }
#endif
    }
}
