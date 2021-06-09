#include "../include/sqa.hpp"

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(const int nt, const int ns, int trotters[MAX_NT][MAX_NS],
                       const fp_t J[MAX_NS][MAX_NS], const fp_t Jt[MAX_NS],
                       const fp_t T, const fp_t logRandNumber[MAX_NT][MAX_NS]) {
    for (int m = 0; m < MAX_NT; m++) {
        if (m == nt) break;
        for (int i = 0; i < MAX_NS; i++) {
            if (i == ns) break;
            /* Local Field of spin(m, i, j) */
            fp_t dH = 0;
            /* Compute Energy from same trotter */
            for (int j = 0; j < MAX_NS; j++) {
                if (j == ns) break;
                dH += J[i][j] * trotters[m][j];
            }
            /* Compute Engery from up and down trotter */
            int up   = (m == 0) ? (ns - 1) : m - 1;
            int down = (m == ns - 1) ? (0) : m + 1;
            dH -= Jt[i] * trotters[up][i];
            dH += Jt[i] * trotters[down][i];
            /* Flip */
            if ((-dH) / T > logRandNumber[m][i]) {
                trotters[m][i] = -trotters[m][i];
            }
        }
    }
}