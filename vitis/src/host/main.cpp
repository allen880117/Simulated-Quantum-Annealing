#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <random>
#include <vector>

#include "../include/helper.hpp"
#include "../include/sqa.hpp"
#include "hls_stream.h"

#define BASIC 0

#define RECORD 1
#define REPLAY 1

#define U50 1

/* Field */
fp_t Jcoup[NUM_SPIN][NUM_SPIN];
fp_pack_t JcoupPack[NUM_SPIN][NUM_SPIN / PACKET_SIZE];
fp_t h[NUM_SPIN];
fp_pack_t hPack[NUM_SPIN / PACKET_SIZE];

/* Main Program */
int main(int argc, char *argv[]) {
    std::cout << "BASIC: " << BASIC << std::endl;
    std::cout << "U50: " << U50 << std::endl;

    /* Const nTrot and nSpin */
    const int nTrot = NUM_TROT;
    const int nSpin = NUM_SPIN;

    /* Random Generators */
    std::random_device rd;
    std::mt19937 rng(rd());
    std::uniform_real_distribution<fp_t> unif(0.0, 1.0);
    std::normal_distribution<fp_t> int_unif(0, 1);

    /* Trotters */
    spin_t trotters[NUM_TROT][NUM_SPIN];
#if !REPLAY
    generateRandomState(trotters, nTrot, nSpin);
#if RECORD
    /* Dump Initial Trotter */
    std::ofstream init_trotter("../../../init_trotter.txt");
    for (int t = 0; t < nTrot; t++) {
        for (int i = 0; i < nSpin; i++) {
            init_trotter << trotters[t][i] << " ";
        }
    }
    init_trotter.close();
#endif
#else
    /* Dump Initial Trotter */
    std::ifstream init_trotter("../../../init_trotter.txt");
    if (!init_trotter) {
        std::cout << "Can't find init_trotter.txt" << std::endl;
        return -1;
    }
    for (int t = 0; t < nTrot; t++) {
        for (int i = 0; i < nSpin; i++) {
            init_trotter >> trotters[t][i];
        }
    }
    init_trotter.close();
#endif

#if !BASIC
    spin_pack_t trottersPack[NUM_TROT][NUM_SPIN / PACKET_SIZE / NUM_STREAM];
    for (int t = 0; t < nTrot; t++) {
        for (int i = 0; i < nSpin / PACKET_SIZE / NUM_STREAM; i++) {
            for (int k = 0; k < PACKET_SIZE * NUM_STREAM; k++) {
                trottersPack[t][i][k] =
                    trotters[t][i * PACKET_SIZE * NUM_STREAM + k];
            }
        }
    }
#endif

    /* Generate Random Numbers */
    fp_t rndNum[NUM_SPIN];
    for (int i = 0; i < nSpin; i++) {
        // rndNum[i] = int_unif(rng);
        rndNum[i] = (float)(i + 1) / (float)nSpin;
    }

    /* Field Initialization */
    for (int i = 0; i < nSpin; i++) {
        h[i] = 0.0f;
        for (int j = 0; j < nSpin; j++) {
            Jcoup[i][j] = 0.0f;
        }
    }

    /* The problem we solved here is "Number Partition" */
    for (int i = 0; i < nSpin; i++) {
        for (int j = 0; j < nSpin; j++) {
            Jcoup[i][j] = -(rndNum[i] * rndNum[j]);
        }
    }

#if U50
    for (int i = 0; i < nSpin; i++) {
        for (int j = 0; j < nSpin / PACKET_SIZE; j++) {
            for (int k = 0; k < PACKET_SIZE; k++) {
                JcoupPack[i][j].data[k] = Jcoup[i][j * PACKET_SIZE + k];
                hPack[j].data[k] = 0.0f;
            }
        }
    }
#endif

    /* Parameters */
    fp_t iter = 500;                  // default 500
    fp_t maxBeta = ((fp_t)8) / 1.0f;  // default 8.0f
    fp_t Beta = 1 / ((fp_t)4096.0f);  // default 1/16
    fp_t G0 = 8.0f;                   // default 8.0f
    fp_t dBeta = (maxBeta - Beta) / (fp_t)iter;

    /* Best */
    fp_t bestEnergy = 10e22;
    spin_t bestTrotter[NUM_SPIN];
    int bestRun = 0;
    int bestTrotNum = 0;

    /* Log */
    std::ofstream out("out.txt");
#if !REPLAY
#if RECORD
    std::ofstream log_rnd("../../../log_rnd.txt");
#endif
#else
    std::ifstream log_rnd("../../../log_rnd.txt");
    if (!log_rnd) {
        std::cout << "Can't find log_rnd.txt" << std::endl;
        return -1;
    }
#endif

    /* SQA */
    for (int i = 0; i < iter; i++) {
        /* Print Progress */
        std::cout << std::setw(3) << i << " ";
        if ((i + 1) % 20 == 0) std::cout << std::endl;

        /* Generate Random Number for Flipping */
        fp_t logRandNum[NUM_TROT][NUM_SPIN];
        for (int j = 0; j < nTrot; j++) {
            for (int k = 0; k < nSpin; k++) {
                // for (int k = nSpin - 1; k > 0; k--) {
#if !REPLAY
                /* Do some computation first */
                logRandNum[j][k] = log(unif(rng)) * nTrot;
#if RECORD
                log_rnd << logRandNum[j][k] << " ";
#endif
#else
                log_rnd >> logRandNum[j][k];
#endif
            }
        }

        /* Get Jperp */
        fp_t Gamma = G0 * (1 - (float)i / iter);
        fp_t Jperp = -0.5 * log(tanh((Gamma / nTrot) * Beta)) / Beta;

#if !BASIC
#if !U50
        /* Make Jcoup Stream */
        hls::stream<fp_pack_t> JcoupStream_0;
        for (int j = 0; j < nSpin; j++) {
            for (int k = 0; k < nSpin; k += PACKET_SIZE) {
                fp_pack_t tmp;
                for (int l = 0; l < PACKET_SIZE; l++) {
                    tmp.data[l] = Jcoup[j][k + l];
                }
                JcoupStream_0 << tmp;
            }
        }
#endif
#endif
#if !BASIC
#if !U50
        /* Execute */
        QuantumMonteCarlo(trottersPack, JcoupStream_0, h, Jperp, Beta,
                          logRandNum);
#else
        QuantumMonteCarloU50(trottersPack, JcoupPack, h, Jperp, Beta,
                             logRandNum);
#endif
#else
        QuantumMonteCarloBasic(nTrot, nSpin, trotters, Jcoup, h, Jperp, Beta,
                               logRandNum);
#endif

#if !BASIC
        for (int t = 0; t < nTrot; t++) {
            for (int i = 0; i < nSpin / PACKET_SIZE / NUM_STREAM; i++) {
                for (int k = 0; k < PACKET_SIZE * NUM_STREAM; k++) {
                    trotters[t][i * PACKET_SIZE * NUM_STREAM + k] =
                        trottersPack[t][i][k];
                }
            }
        }
#endif

        /* Calculate energy of each turn */
        fp_t sumEnergy = 0;
        for (int t = 0; t < nTrot; t++) {
            /* Calcualte */
            fp_t energy = computeEnergyPerTrotter(nSpin, trotters[t], Jcoup, h);
            /* Compare */
            if (fabs(energy) < fabs(bestEnergy)) {
                bestEnergy = energy;
                memcpy(bestTrotter, trotters[t], NUM_SPIN * sizeof(spin_t));
                bestRun = i;
                bestTrotNum = t;
            }
            /* Sum up */
            sumEnergy += energy;
        }

        /* Sum of the energy of all trotters in this turn */
        out << "Energy: " << sumEnergy << std::endl;

        /* Beta Increment */
        Beta += dBeta;
    }

    /* Output Close */
    out.close();
#if RECORD || REPLAY
    log_rnd.close();
#endif

    /* Print Best Trotter */
    std::cout << "Run, Trotter: " << bestRun << " ," << bestTrotNum
              << std::endl;
    for (int i = 0; i < nSpin; i++) {
        std::cout << bestTrotter[i] << " ";
    }
    std::cout << std::endl;

    /* Print Best Energy */
    std::cout << "Energy: " << bestEnergy << std::endl;

    /* Calculate the summation of each set */
    fp_t a = 0, b = 0;
    for (int i = 0; i < nSpin; i++) {
        if (bestTrotter[i])
            a += rndNum[i];
        else
            b += rndNum[i];
    }

    /* Print out */
    std::cout << a << " " << b << std::endl;
}
