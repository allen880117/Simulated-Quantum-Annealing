#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <iostream>
#include <random>
#include <vector>

#include "../include/sqa.hpp"

/* Trotters::Generate and Shuffle */
void generate_and_shuffle(int trotters[MAX_NT][MAX_NS][MAX_NS], int nt,
                          int ns) {
    /* Random Device & Random Number Generator */
    static std::random_device rd;
    static std::mt19937       rng(rd());
    /* A Trotter */
    int singleTrotter[MAX_NS][MAX_NS];
    /* Generate Diagonal Values */
    for (int i = 0; i < ns; i++) {
        for (int j = 0; j < ns; j++)
            if (i == j)
                singleTrotter[i][j] = 1;
            else
                singleTrotter[i][j] = -1;
    }

    /* Form Trotters */
    /* First Trotter */
    memcpy(trotters, singleTrotter, MAX_NS * MAX_NS * sizeof(int));
    /* Other Trotters */
    for (int i = 1; i < nt; i++) {
        /* Random Shuffle */
        /* - Only Need to Shuffle ns Trotters */
        std::shuffle(singleTrotter, singleTrotter + ns, rng);
        /* Copy into Trotters */
        memcpy(trotters + i, singleTrotter, MAX_NS * MAX_NS * sizeof(int));
    }
}

/* Print 2D Array */
template <typename T, int R, int C>
void print_2d_array(T arr[R][C]) {
    for (int i = 0; i < R; i++) {
        for (int j = 0; j < C; j++) std::cout << arr[i][j] << " ";
        std::cout << std::endl;
    }
}

/* Get All Trotter Distance */
void get_best(int best_path[MAX_NS], fp_t &best_dist, fp_t &min_dist, int nt,
              int ns, int trotters[MAX_NT][MAX_NS][MAX_NS],
              fp_t city_distances[MAX_NS][MAX_NS]) {
    min_dist = 10e20;
    for (int tr = 0; tr < nt; tr++) {
        /* Init. */
        fp_t dist = 0;
        int  path[MAX_NS];
        /* Get City-Trace */
        for (int i = 0; i < ns; i++) {
            for (int j = 0; j < ns; j++) {
                if (trotters[tr][i][j] == 1) {
                    path[i] = j;
                    break;
                }
            }
        }
        /* Calculate Distances */
        for (int i = 1; i < ns; i++) {
            int from = path[i - 1];
            int to   = path[i];
            dist += city_distances[from][to];
        }
        dist += city_distances[path[ns - 1]][path[0]];
        /*  Check best or not */
        if (dist < min_dist) {
            min_dist = dist;
        }
        if (dist < best_dist) {
            best_dist = dist;
            memcpy(best_path, path, MAX_NS * sizeof(int));
        }
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

/* Main Program */
int main(int argc, char *argv[]) {
    /* Number of Trotters and Number of Spins */
    const int nt = 10;
    const int ns = 38;
    /* Random Generators */
    std::random_device                   rd;
    std::mt19937                         rng(rd());
    std::uniform_real_distribution<fp_t> unif(0.0, 1.0);
    std::uniform_real_distribution<fp_t> unif_sp(1.0, ns);
    std::uniform_real_distribution<fp_t> unif_tr(0.0, nt);
    /* Trotters */
    int trotters[MAX_NT][MAX_NS][MAX_NS];
    generate_and_shuffle(trotters, nt, ns);
    /* City */
    fp_t citys[MAX_NS][2];
    fp_t city_distances[MAX_NS][MAX_NS];
    fp_t max_distance = -1;
    /* Read Coordinate of Cities */
    std::ifstream data(argv[1]);
    for (int i = 0; i < ns; i++) {
        data >> citys[i][0] >> citys[i][1];
    }
    data.close();
    /* Calculate Distances of Cities */
    for (int i = 0; i < ns; i++) {
        for (int j = i + 1; j < ns; j++) {
            fp_t dx              = citys[i][0] - citys[j][0];
            fp_t dy              = citys[i][1] - citys[j][1];
            fp_t dist            = sqrt(dx * dx + dy * dy);
            city_distances[i][j] = dist;
            city_distances[j][i] = dist;
            /* Get Max */
            if (dist > max_distance) max_distance = dist;
        }
    }
    /* Parameters */
    fp_t beta     = 50;     // default 50
    fp_t ann_para = 1;      // default 1
    fp_t reduc    = 0.99;   // default 0.99
    fp_t iter     = 500;    // default 500
    int  mc_step  = 15000;  // default 15000
    /* Information of Best Route */
    int  best_path[MAX_NS];
    fp_t best_distance = 10e20;  // A large-enough number
    /* Output File */
    std::ofstream out("../data/out.txt");
    std::ofstream logfile("../data/log.txt");
    /* SQA */
    for (int i = 0; i < iter; i++) {
        printProgress(i / (iter - 1));

        /* Cost QR - Annealing-related */
        fp_t cost_qr =
            (1.0f / beta) * log(1.0f / tanh(beta * ann_para / ((fp_t)nt)));
        /* QMC */
        for (int j = 0; j < mc_step; j++) {
            /* Generate Random Number */
            fp_t log_uni_rn = log(unif(rng));
            /* Randomly Choose two points */
            int a = round(unif_sp(rng) - 0.5);
            int b = round(unif_sp(rng) - 0.5);
            while (a == b) b = round(unif_sp(rng) - 0.5);
            /* Randomly Choose a Trotter */
            int tr = round(unif_tr(rng) - 0.5);
            /* QMC */
            QuantumMonteCarlo(nt, ns, trotters, city_distances, max_distance,
                              cost_qr, beta, log_uni_rn, a, b, tr);
        }
        /* Cool Down */
        ann_para *= reduc;
        /* Get Best Path among trotters */
        fp_t min_dist;
        get_best(best_path, best_distance, min_dist, nt, ns, trotters,
                 city_distances);
        /* Output */
        for (int i = 0; i < ns; i++) out << best_path[i] << " ";
        out << std::endl;
        /* Log */
        logfile << best_distance << " " << min_dist << std::endl;
    }
    /* Output Close */
    out.close();
    logfile.close();
}