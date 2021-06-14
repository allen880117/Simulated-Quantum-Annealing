#include "../include/sqa.hpp"

#include <cmath>
#include <iostream>

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(const int nTrot, const int nSpin,
                       spin_t     trotters[MAX_NTROT][MAX_NSPIN],
                       const fp_t J[MAX_NSPIN][MAX_NSPIN],
                       const fp_t Jt[MAX_NSPIN], const fp_t Joffset,
                       const fp_t T, const fp_t Beta,
                       const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]) {
    for (int m = 0; m < MAX_NTROT; m++) {
        if (m == nTrot) break;
        for (int i = 0; i < MAX_NSPIN; i++) {
            if (i == nSpin) break;
            /* This Spin */
            spin_t this_spin = trotters[m][i];
            /* Local Field of spin(m, i, j) */
            fp_t dH = Joffset;
            /* Compute Energy from same trotter */
            for (int j = 0; j < MAX_NSPIN; j++) {
                if (j == nSpin) break;
                // dH += J[i][j] * trotters[m][j];
                if (trotters[m][j])
                    dH += J[i][j];
                else
                    dH -= J[i][j];
            }

            /* Compute Engery from up and down trotter */
            int up   = (m == 0) ? (nTrot - 1) : (m - 1);
            int down = (m == nTrot - 1) ? (0) : (m + 1);
            // dH -= Jt[i] * trotters[up][i];
            // dH += Jt[i] * trotters[down][i];
            spin_t up_trotter   = trotters[up][i];
            spin_t down_trotter = trotters[down][i];
            if (up_trotter != down_trotter) {
                if (up_trotter)
                    dH -= nTrot * Jt[i];
                else
                    dH += nTrot * Jt[i];
                if (down_trotter)
                    dH += nTrot * Jt[i];
                else
                    dH -= nTrot * Jt[i];
            }

            if (!this_spin) dH = -dH;

            /* Flip */
            // std::cout << fabs(dH) << std::endl;
            if ((-Beta * dH) > logRandNumber[m][i]) {
                trotters[m][i] = (!trotters[m][i]);
            }
        }
    }
}