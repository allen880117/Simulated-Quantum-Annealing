#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <iostream>
#include <random>
#include <vector>

#include "../include/sqa.hpp"

/* Trotters::Generate and Shuffle */
void generate_and_shuffle(spin_t trotters[MAX_NTROT][MAX_NSPIN], int nTrot,
                          int nCity) {
    /* Random Device & Random Number Generator */
    static std::random_device rd;
    static std::mt19937       rng(rd());
    /* A Trotter */
    int singleTrotter[MAX_NSPIN];
    /* Generate Diagonal Values */
    for (int i = 0; i < nCity; i++) {
        for (int j = 0; j < nCity; j++)
            if (i == j)
                singleTrotter[i * nCity + j] = true;
            else
                singleTrotter[i * nCity + j] = false;
    }

    /* Form Trotters */
    /* First Trotter */
    memcpy(trotters, singleTrotter, MAX_NSPIN * sizeof(spin_t));
    /* Other Trotters */
    for (int i = 1; i < nTrot; i++) {
        /* Random Shuffle */
        /* - Only Need to Shuffle ns Trotters */
        std::shuffle(singleTrotter, singleTrotter + nCity * nCity, rng);
        /* Copy into Trotters */
        memcpy(trotters + i, singleTrotter, MAX_NSPIN * sizeof(spin_t));
    }
}

#define PBSTR "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
#define PBWIDTH 60
void printProgress(double percentage) {
    int val  = (int)(percentage * 100);
    int lpad = (int)(percentage * PBWIDTH);
    int rpad = PBWIDTH - lpad;
    printf("\r%3d%% [%.*s%*s]", val, lpad, PBSTR, rpad, "");
    fflush(stdout);
    if (val == 100) printf("\n");
}

fp_t compute_energy(int nSpin, spin_t trotter[MAX_NSPIN],
                    fp_t J[MAX_NSPIN][MAX_NSPIN], fp_t Jt[MAX_NSPIN],
                    fp_t Joffset) {
    fp_t H = 0;
    for (int i = 0; i < nSpin; i++) {
        for (int j = 0; j < nSpin; j++) {
            if (trotter[i] == trotter[j])
                H += J[i][j];
            else
                H -= J[i][j];
        }
        if (trotter[i])
            H += Jt[i];
        else
            H -= Jt[i];
    }
    return fabs(H + Joffset);
}

/* Field */
fp_t J[MAX_NSPIN][MAX_NSPIN];
fp_t Jt[MAX_NSPIN];
fp_t Joffset;

#include <cmath>

void GenerateCoeff(const int ns, fp_t J[MAX_NSPIN][MAX_NSPIN],
                   fp_t Jt[MAX_NSPIN], fp_t &Offset, const int ncity,
                   const fp_t citys[MAX_NCITY][2]) {
    /* Initialization: Reset to 0 */
    for (int i = 0; i < MAX_NSPIN; i++) {
        if (i == ns) break;
        Jt[i] = 0.0f;
        for (int j = 0; j < MAX_NSPIN; j++) {
            if (j == ns) break;
            J[i][j] = 0.0f;
        }
    }
    Offset = 0;

    /* Calculate City Distances */
    fp_t city_distances[MAX_NCITY][MAX_NCITY];
    fp_t max_distance = -1;
    fp_t min_distance = 10e22;
    for (int i = 0; i < MAX_NCITY; i++) {
        if (i == ncity) break;
        for (int j = i + 1; j < MAX_NCITY; j++) {
            if (j == ncity) break;
            fp_t x0              = citys[i][0];
            fp_t y0              = citys[i][1];
            fp_t x1              = citys[j][0];
            fp_t y1              = citys[j][1];
            fp_t dx              = x1 - x0;
            fp_t dy              = y1 - y0;
            fp_t dist            = sqrt(dx * dx + dy * dy);
            city_distances[i][j] = dist;
            city_distances[j][i] = dist;

            if (dist > max_distance) max_distance = dist;
            if (dist < min_distance) min_distance = dist;
        }
    }

    /* First Term : Total Distances */
    for (int i = 0; i < MAX_NCITY; i++) {
        if (i == ncity) break;
        for (int j = 0; j < MAX_NCITY; j++) {
            if (j == ncity) break;

            fp_t dij = city_distances[i][j];

            for (int a = 0; a < MAX_NCITY; a++) {
                if (a == ncity) break;

                int up   = (a == 0) ? (ncity - 1) : (a - 1);
                int down = (a == ncity - 1) ? 0 : (a + 1);

                int SaiIdx    = a * ncity + i;
                int SdownjIdx = down * ncity + j;
                int SupjIdx   = up * ncity + j;

                /* PyQubo only calculate the up-trangle of J */
                /* So it will times 2 for the quad terms */
                J[SaiIdx][SdownjIdx] += dij / 8;
                J[SaiIdx][SupjIdx] += dij / 8;

                Jt[SaiIdx] += dij / 4;     // It has better form
                Jt[SupjIdx] += dij / 8;    // It has better form
                Jt[SdownjIdx] += dij / 8;  // It has better form

                Offset += dij / 4;  // It has better form
            }
        }
    }
    /* Add Row, Column Constraint First */
    /*
        1. For each Row, There is only 1 city is positive
        2. For each Column, There is only 1 city is positive
     */
    fp_t Klinear = 1;

    fp_t tmp0 = (ncity - 2.0f) / 2.0f;
    for (int i = 0; i < MAX_NCITY; i++) {
        if (i == ncity) break;
        for (int a = 0; a < MAX_NCITY; a++) {
            if (a == ncity) break;
            int SaiIdx = a * ncity + i;

            for (int b = 0; b < MAX_NCITY; b++) {
                if (b >= ncity) break;
                int SbiIdx = b * ncity + i;
                J[SaiIdx][SbiIdx] += Klinear * 0.25f;
            }

            Jt[SaiIdx] += Klinear * tmp0;
        }
    }

    Offset += Klinear * tmp0 * tmp0 * ncity;

    for (int a = 0; a < MAX_NCITY; a++) {
        if (a == ncity) break;
        for (int i = 0; i < MAX_NCITY; i++) {
            if (i == ncity) break;
            int SaiIdx = a * ncity + i;

            for (int b = 0; b < MAX_NCITY; b++) {
                if (b >= ncity) break;
                int SbiIdx = b * ncity + i;
                J[SaiIdx][SbiIdx] += Klinear * 0.25f;
            }

            Jt[SaiIdx] += Klinear * tmp0;
        }
    }

    Offset += Klinear * tmp0 * tmp0 * ncity;
}

#define AAA 1

/* Main Program */
int main(int argc, char *argv[]) {
#if AAA
    if (argc != 6) {
        printf("./sqa [quad.txt] [linear.txt] [offset.txt][nTrot] [nCity]\n");
        return -1;
    }
    /* Number of Trotters and Number of Spins */
    const int nTrot = atoi(argv[4]);
    const int nCity = atoi(argv[5]);
    const int nSpin = nCity * nCity;
#else
    if (argc != 4) {
        printf("./sqa [data.txt] [nTrot] [nCity]\n");
        return -1;
    }
    /* Number of Trotters and Number of Spins */
    const int nTrot = atoi(argv[2]);
    const int nCity = atoi(argv[3]);
    const int nSpin = nCity * nCity;
#endif

    /* Random Generators */
    std::random_device                   rd;
    std::mt19937                         rng(rd());
    std::uniform_real_distribution<fp_t> unif(0.0, 1.0);
    // std::uniform_int_distribution<int>   int_unif(0, 27545);
    std::normal_distribution<fp_t>   int_unif(0, 1);

    /* Trotters */
    spin_t trotters[MAX_NTROT][MAX_NSPIN];
    generate_and_shuffle(trotters, nTrot, nCity);
    /* Field Initialization */
    for (int i = 0; i < nSpin; i++) {
        Jt[i] = 0.0f;
        for (int j = 0; j < nSpin; j++) {
            J[i][j] = 0.0f;
        }
    }

#if AAA
    // /* Read Field */
    // std::ifstream quad(argv[1]);
    // std::ifstream linear(argv[2]);
    // std::ifstream offset(argv[3]);
    // if (!quad || !linear || !offset) {
    //     std::cout << "Can't find file." << std::endl;
    //     return -1;
    // } else {
    //     int  x, y;
    //     fp_t q;
    //     while (quad >> x >> y >> q) {
    //         J[x][y] = q/2;
    //         J[y][x] = q/2;
    //     }
    //     while (linear >> x >> q) Jt[x] = q;
    //     offset >> Joffset;
    // }
    // quad.close();
    // linear.close();
    
    fp_t rndNum[nSpin];
    for (int i = 0; i < nSpin; i++) {
        rndNum[i] = int_unif(rng);
    }

    for (int i = 0; i < nSpin; i++) {
        for (int j = 0; j < nSpin; j++) {
            J[i][j] = -(rndNum[i] * rndNum[j]);
        }
    }

#else
    /* Read Citys */
    std::ifstream data(argv[1]);
    fp_t          citys[MAX_NSPIN][2];
    for (int i = 0; i < nCity; i++) {
        data >> citys[i][0] >> citys[i][1];
    }
    data.close();
    /* Generate Field */
    GenerateCoeff(nSpin, J, Jt, Joffset, nCity, citys);
#endif

    /* Parameters */
    fp_t iter    = 2000;               // default 500
    fp_t maxBeta = 1 / 1.0f;           // default 8.0f
    fp_t Beta    = 1 / (fp_t)1024.0f;  // default 1/16
    fp_t dBeta   = (maxBeta - Beta) / (fp_t)iter;
    fp_t G0      = 1.0f;  // default 8.0f
    /* Best */
    fp_t   bestEnergy = 10e22;
    spin_t bestTrotter[MAX_NSPIN];
    int    bestRun     = 0;
    int    bestTrotNum = 0;
    /* Log */
    std::ofstream out("out.txt");
    /* SQA */
    for (int i = 0; i < iter; i++) {
        printProgress(i/(iter-1));

        fp_t logRandNum[MAX_NTROT][MAX_NSPIN];
        for (int j = 0; j < nTrot; j++) {
            for (int k = 0; k < nSpin; k++) {
                logRandNum[j][k] = log(unif(rng)) * nTrot;
            }
        }

        fp_t Gamma = G0 * (1 - (float)i / iter);
        fp_t Jperp = -0.5 * log(tanh((Gamma / nTrot) * Beta)) / Beta;

        QuantumMonteCarlo(nTrot, nSpin, trotters, J, Jt, Joffset, Jperp, Beta,
                          logRandNum);

        fp_t sumEnergy = 0;
        for (int t = 0; t < nTrot; t++) {
            // out << "Run, Trotter: " << i << " ," << t << std::endl;
            // for (int j = 0; j < nCity; j++) {
            //     for (int k = 0; k < nCity; k++) {
            //         out << trotters[t][j * nCity + k] << " ";
            //     }
            //     out << std::endl;
            // }

            fp_t energy = compute_energy(nSpin, trotters[t], J, Jt, Joffset);
            if (energy < bestEnergy) {
                bestEnergy = energy;
                memcpy(bestTrotter, trotters[t], MAX_NSPIN * sizeof(spin_t));
                bestRun     = i;
                bestTrotNum = t;
            }

            sumEnergy += energy;
        }
        out << "Energy: " << sumEnergy << std::endl;
        out << std::endl;

        Beta += dBeta;
    }
    /* Output Close */
    out.close();

    /* Print */
    std::cout << "Run, Trotter: " << bestRun << " ," << bestTrotNum
              << std::endl;
    for (int j = 0; j < nCity; j++) {
        for (int k = 0; k < nCity; k++) {
            std::cout << bestTrotter[j * nCity + k] << " ";
        }
        std::cout << std::endl;
    }

    std::cout << "Energy: " << bestEnergy << std::endl;
    std::cout << std::endl;

    fp_t a = 0;
    fp_t b = 0;
    for (int j = 0; j < nSpin; j++) {
        if (bestTrotter[j]) a+= rndNum[j];
        else b+=rndNum[j];
    }
    std::cout << a << " " << b << std::endl;
}