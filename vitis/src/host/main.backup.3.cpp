#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <iostream>
#include <random>
#include <vector>

#include "../include/helper.hpp"
#include "../include/sqa.hpp"
#include "hls_stream.h"

/* Change These Options to Test */
/* You can only enable 1 unit each time*/
#define BASIC 1
#define PACK 1

/* Field */
fp_t Jcoup[MAX_NSPIN][MAX_NSPIN];
fp_t h[MAX_NSPIN];

/* Main Program */
int main(int argc, char *argv[]) {
    /* Const nTrot and nSpin */
    const int nTrot = MAX_NTROT;
    const int nSpin = MAX_NSPIN;

    /* Random Generators */
    std::random_device rd;
    std::mt19937 rng(rd());
    std::uniform_real_distribution<fp_t> unif(0.0, 1.0);
    std::normal_distribution<fp_t> int_unif(0, 1);

    /* Trotters */
    spin_t trotters[MAX_NTROT][MAX_NSPIN];
    generateRandomState(trotters, nTrot, nSpin);

    spin_pack_t trottersPack[MAX_NTROT][MAX_NSPIN / PACKET_SIZE];
    for (int t = 0; t < nTrot; t++) {
        for (int i = 0; i < nSpin / PACKET_SIZE; i++) {
            for (int k = 0; k < PACKET_SIZE; k++) {
                trottersPack[t][i][k] = trotters[t][i * PACKET_SIZE + k];
            }
        }
    }

    /* Generate Random Numbers */
    fp_t rndNum[MAX_NSPIN];
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

    /* Parameters */
    fp_t iter = 500;                 // default 500
    fp_t maxBeta = ((fp_t)8) / 1.0f; // default 8.0f
    fp_t Beta = 1 / ((fp_t)4096.0f); // default 1/16
    fp_t G0 = 8.0f;                  // default 8.0f
    fp_t dBeta = (maxBeta - Beta) / (fp_t)iter;

    /* Best */
    fp_t bestEnergy = 10e22;
    spin_t bestTrotter[MAX_NSPIN];
    int bestRun = 0;
    int bestTrotNum = 0;

    /* Log */
    std::ofstream out("out.txt");

    /* SQA */
    for (int i = 0; i < iter; i++) {
        std::cout << i << std::endl;

        /* Generate Random Number for Flipping */
        fp_t logRandNum[MAX_NTROT][MAX_NSPIN];
        for (int j = 0; j < nTrot; j++) {
            for (int k = 0; k < nSpin; k++) {
                /* Do some computation first */
                logRandNum[j][k] = log(unif(rng)) * nTrot;
            }
        }

        /* Get Jperp */
        fp_t Gamma = G0 * (1 - (float)i / iter);
        fp_t Jperp = -0.5 * log(tanh((Gamma / nTrot) * Beta)) / Beta;

        /* Do Quantum Monte-Carlo */
        hls::stream<fp_pack_t> JcoupStream;
        for (int j = 0; j < nSpin; j++) {
            for (int k = 0; k < nSpin; k += PACKET_SIZE) {
                fp_pack_t tmp;
                for (int l = 0; l < PACKET_SIZE; l++) {
                    tmp[l] = Jcoup[j][k + l];
                }
                JcoupStream << tmp;
            }
        }

        /* Execute */
        QuantumMonteCarlo(trottersPack, JcoupStream, h, Jperp, Beta,
                          logRandNum);

        /* Convert */
        for (int t = 0; t < nTrot; t++) {
            for (int i = 0; i < nSpin / PACKET_SIZE; i++) {
                for (int k = 0; k < PACKET_SIZE; k++) {
                    trotters[t][i * PACKET_SIZE + k] = trottersPack[t][i][k];
                }
            }
        }

        /* Calculate energy of each turn */
        fp_t sumEnergy = 0;
        for (int t = 0; t < nTrot; t++) {
            /* Calcualte */
            fp_t energy = computeEnergyPerTrotter(nSpin, trotters[t], Jcoup, h);
            /* Compare */
            if (fabs(energy) < fabs(bestEnergy)) {
                bestEnergy = energy;
                memcpy(bestTrotter, trotters[t], MAX_NSPIN * sizeof(spin_t));
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
