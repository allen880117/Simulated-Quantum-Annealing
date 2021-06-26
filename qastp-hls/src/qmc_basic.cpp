#include "../include/sqa.hpp"

#include <cmath>
#include <iostream>

/* Quantum Monte-Carlo */
void QuantumMonteCarloBasic(const int nTrot, const int nSpin,
                             spin_t     trotters[MAX_NTROT][MAX_NSPIN],
                             const fp_t Jcoup[MAX_NSPIN][MAX_NSPIN],
                             const fp_t h[MAX_NSPIN], const fp_t Jperp,
                             const fp_t Beta,
                             const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]) {
    /* Tunnel-related energy */
    fp_t dHTunnel = 2.0f * Jperp * nTrot;

/* Traverse all trotters */
LOOP_TROTTERS:
    for (int m = 0; m < MAX_NTROT; m++) {
        /* Exit condition */
        if (m == nTrot)
            break;

    /* Traverse all spins in trotter m */
    LOOP_SPINS:
        for (int i = 0; i < MAX_NSPIN; i++) {
            /* Exit condition */
            if (i == nSpin)
                break;

            /* Get this spin */
            spin_t this_spin = trotters[m][i];

            /* Local Field of spin(m, i, j) */
            /* Add h[i] at the initial */
            fp_t dH = h[i];

        /* Compute Energy from same trotter */
        LOOP_COUPLES:
            for (int j = 0; j < MAX_NSPIN; j++) {
                /* Exit Condition */
                if (j == nSpin)
                    break;
                if (trotters[m][j])
                    dH += Jcoup[i][j];
                else
                    dH -= Jcoup[i][j];
            }

            /* Compute Engery from up and down trotter */
            int    up           = (m == 0) ? (nTrot - 1) : (m - 1);
            int    down         = (m == nTrot - 1) ? (0) : (m + 1);
            spin_t up_trotter   = trotters[up][i];
            spin_t down_trotter = trotters[down][i];
            if (up_trotter == down_trotter) {
                if (up_trotter)
                    dH -= dHTunnel;
                else
                    dH += dHTunnel;
            }

            /* Times 2 and itself */
            dH *= 2.0f;
            if (!this_spin) {
                dH = -dH;
            }

            /* Flip */
            if ((-Beta * dH) > logRandNumber[m][i]) {
                trotters[m][i] = (!trotters[m][i]);
            }
        }
    }
}


