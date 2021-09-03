#include "../include/helper.hpp"

#include <cmath>
#include <fstream>
#include <random>
#include <string>

void PrintProgress(double percentage) {
    int val = (int)(percentage * 100);
    int lpad = (int)(percentage * PBWIDTH);
    int rpad = PBWIDTH - lpad;
    printf("\r%3d%% [%.*s%*s]", val, lpad, PBSTR, rpad, "");
    fflush(stdout);
    if (val == 100) printf("\n");
}

void GenerateRandomState(spin_t trotters[NUM_TROT][NUM_SPIN], int nTrot,
                         int nSpin) {
    /* Random Device & Random Number Generator */
    static std::random_device rd;
    static std::mt19937 rng(rd());
    static std::uniform_int_distribution<int> unif(0, 1);
    /* Generate */
    for (int i = 0; i < nTrot; i++) {
        for (int j = 0; j < nSpin; j++) {
            trotters[i][j] = (bool)unif(rng);
        }
    }
}

void GenerateLogRandomNumber(int nTrot,
                             fp_t log_rand_nums[NUM_TROT][NUM_SPIN]) {
    // Random Generator
    static std::random_device rd;
    static std::mt19937 rng(rd());
    std::uniform_real_distribution<fp_t> unif(0.0, 1.0);

    // Generate Log Rand Number = log(unif(rng)) * nTrot
    for (int t = 0; t < NUM_TROT; t++) {
        for (int i = 0; i < NUM_SPIN; i++) {
            log_rand_nums[t][i] = log(unif(rng)) * nTrot;
        }
    }
}

fp_t ComputeEnergyPerTrotter(int nSpin, spin_t trotter[NUM_SPIN],
                             fp_t Jcoup[NUM_SPIN][NUM_SPIN], fp_t h[NUM_SPIN]) {
    /* Follow the Formula */

    /* Total Energy */
    fp_t H = 0;

    /* Traverse All Spins */
    for (int i = 0; i < nSpin; i++) {
        /* Two-Spin Energy */
        for (int j = 0; j < nSpin; j++) {
            if (trotter[i] == trotter[j])
                H += Jcoup[i][j];
            else
                H -= Jcoup[i][j];
        }
        /* One-Spin Energy */
        if (trotter[i])
            H += h[i];
        else
            H -= h[i];
    }

    /* Return */
    return (H);
}

void PackTrotters(
    spin_pack_u50_t trotters_pack[NUM_TROT][NUM_SPIN / PACKET_SIZE],
    spin_t trotters[NUM_TROT][NUM_SPIN]) {
    for (int t = 0; t < NUM_TROT; t++) {
        for (int i = 0; i < NUM_SPIN / PACKET_SIZE; i++) {
            for (int k = 0; k < PACKET_SIZE; k++) {
                trotters_pack[t][i][k] = trotters[t][i * PACKET_SIZE + k];
            }
        }
    }
}

void UnpackTrotters(
    spin_pack_u50_t trotters_pack[NUM_TROT][NUM_SPIN / PACKET_SIZE],
    spin_t trotters[NUM_TROT][NUM_SPIN]) {
    for (int t = 0; t < NUM_TROT; t++) {
        for (int i = 0; i < NUM_SPIN / PACKET_SIZE; i++) {
            for (int k = 0; k < PACKET_SIZE; k++) {
                trotters[t][i * PACKET_SIZE + k] = trotters_pack[t][i][k];
            }
        }
    }
}

void PackJcoup(fp_pack_t Jcoup_pack[NUM_SPIN][NUM_SPIN / PACKET_SIZE],
               fp_t Jcoup[NUM_SPIN][NUM_SPIN]) {
    for (int i = 0; i < NUM_SPIN; i++) {
        for (int j = 0; j < NUM_SPIN / PACKET_SIZE; j++) {
            for (int k = 0; k < PACKET_SIZE; k++) {
                Jcoup_pack[i][j].data[k] = Jcoup[i][j * PACKET_SIZE + k];
            }
        }
    }
}

void GenerateJcoupNP(int nSpin, fp_t Jcoup[NUM_SPIN][NUM_SPIN],
                     fp_t rand_nums[NUM_SPIN]) {
    for (int i = 0; i < nSpin; i++) {
        rand_nums[i] = (float)(i + 1) / (float)nSpin;
    }

    for (int i = 0; i < nSpin; i++) {
        for (int j = 0; j < nSpin; j++) {
            Jcoup[i][j] = rand_nums[i] * rand_nums[j];
        }
    }
}

void ReadJcoupAM(int nSpin, fp_t Jcoup[NUM_SPIN][NUM_SPIN],
                 std::string J_file_path) {
    std::ifstream J_r(J_file_path);
    for (int i = 0; i < nSpin; i++) {
        for (int j = 0; j < nSpin; j++) {
            J_r >> Jcoup[i][j];
        }
    }
}

void GenerateHNP(int nSpin, fp_t h[NUM_SPIN]) {
    for (int i = 0; i < nSpin; i++) {
        h[i] = 0.0f;
    }
}

void ReadHAM(int nSpin, fp_t h[NUM_SPIN], std::string h_file_path) {
    std::ifstream h_r(h_file_path);
    for (int i = 0; i < nSpin; i++) {
        h_r >> h[i];
    }
}