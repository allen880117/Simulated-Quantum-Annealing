#include <chrono>
#include <cmath>
#include <fstream>
#include <iostream>

#include "../include/helper.hpp"
#include "../include/sqa.hpp"

#ifndef U50
    #define U50 1
#endif
#ifndef AM
    #define AM 0
#endif
#ifndef REPLAY
    #define REPLAY 1
#endif

// Jcoup
fp_t      Jcoup[NUM_SPIN][NUM_SPIN];
fp_pack_t Jcoup_pack[NUM_SPIN][NUM_SPIN / PACKET_SIZE];
fp_pack_t Jcoup_pack_0[NUM_SPIN][NUM_SPIN / PACKET_SIZE / NUM_STREAM];
fp_pack_t Jcoup_pack_1[NUM_SPIN][NUM_SPIN / PACKET_SIZE / NUM_STREAM];
fp_pack_t Jcoup_pack_2[NUM_SPIN][NUM_SPIN / PACKET_SIZE / NUM_STREAM];
fp_pack_t Jcoup_pack_3[NUM_SPIN][NUM_SPIN / PACKET_SIZE / NUM_STREAM];

int main(int argc, char **argv) {
    // Dump value of macros
    std::cout << "Current host settings:" << std::endl;
    std::cout << "-> U50    : " << U50 << std::endl;
    std::cout << "-> AM     : " << AM << std::endl;
    std::cout << "-> REPLAY : " << REPLAY << std::endl;
    std::cout << "-> #SPIN  : " << NUM_SPIN << std::endl;
    std::cout << "-> #TROT  : " << NUM_TROT << std::endl;

#if AM
    // Set nTrot and nSpin
    int nTrot = NUM_TROT;
    int nSpin = 18;
#else
    // Set nTrot and nSpin
    int nTrot = NUM_TROT;
    int nSpin = NUM_SPIN;
#endif

    // Trotters
    spin_t          trotters[NUM_TROT][NUM_SPIN];
    spin_pack_u50_t trotters_pack[NUM_TROT][NUM_SPIN / PACKET_SIZE];

    // h
    fp_t h[NUM_SPIN];

#if REPLAY
    // Read Trotters
    ReadRandomState(trotters, nTrot, nSpin, "../../../init_trotter.txt");
#else
    // Generate Trotters
    GenerateRandomState(trotters, nTrot, nSpin);
#endif

#if AM
    // Read Jcoup, h
    ReadJcoupAM(nSpin, Jcoup, "../../../J_r.txt");
    ReadHAM(nSpin, h, "../../../h_r.txt");
#else
    // Generate Jcoup, h
    fp_t rand_nums[NUM_SPIN];
    GenerateJcoupNP(nSpin, Jcoup, rand_nums);
    GenerateHNP(nSpin, h);
#endif

#if U50
    // Convert into pack form
    PackTrotters(trotters_pack, trotters);
    PackJcoup(Jcoup_pack, Jcoup);
    // Dispatch
    for (u32_t i = 0; i < NUM_SPIN; i++) {
        for (u32_t pack_ofst = 0;
             pack_ofst < NUM_SPIN / PACKET_SIZE / NUM_STREAM; pack_ofst++) {
            Jcoup_pack_0[i][pack_ofst] =
                Jcoup_pack[i][pack_ofst * NUM_STREAM + 0];
            Jcoup_pack_1[i][pack_ofst] =
                Jcoup_pack[i][pack_ofst * NUM_STREAM + 1];
            Jcoup_pack_2[i][pack_ofst] =
                Jcoup_pack[i][pack_ofst * NUM_STREAM + 2];
            Jcoup_pack_3[i][pack_ofst] =
                Jcoup_pack[i][pack_ofst * NUM_STREAM + 3];
        }
    }
#endif

    // Iteration Record
#if U50
    std::ofstream out_log("out_log.u50.txt");
    std::ofstream time_log("time_log.u50.txt");
#else
    std::ofstream out_log("out_log.basic.txt");
    std::ofstream time_log("time_log.basic.txt");
#endif

    // Iteration parameters
#if AM
    const int  iter        = 500;   // default 500
    const fp_t gamma_start = 3.0f;  // default 3.0f
    const fp_t T           = 0.3f;  // default 0.3f
#else
    const int     iter        = 500;     // default 500
    const fp_t    gamma_start = 3.0f;    // default 3.0f
    const fp_t    T           = 128.0f;  // default 0.3f
#endif

#if REPLAY
    // Read Log Random Number
    std::ifstream file_lrn("../../../log_rnd.txt");
#endif

    // Iteration of SQA
    for (int i = 0; i < iter; i++) {
        // Print progress
        if ((i + 1) % 20 == 0)
            std::cout << (i + 1) << " iterations done..." << std::endl;

        // Get Jperp
        fp_t gamma = gamma_start * (1.0f - ((fp_t)i / (fp_t)iter));
        fp_t Jperp = -0.5 * T * log(tanh(gamma / (fp_t)nTrot / T));

        // Generate Log Rand Number = log(unif(rng)) * nTrot
        fp_t log_rand_nums[NUM_TROT][NUM_SPIN];
#if REPLAY
        for (int t = 0; t < nTrot; t++) {
            for (int i = 0; i < nSpin; i++) { file_lrn >> log_rand_nums[t][i]; }
        }
#else
        GenerateLogRandomNumber(nTrot, log_rand_nums);
#endif

        // Set Timer
        std::chrono::system_clock::time_point start =
            std::chrono::system_clock::now();

#if U50
        // Run QMC-U50
        QuantumMonteCarloU50(trotters_pack, Jcoup_pack_0, Jcoup_pack_1,
                             Jcoup_pack_2, Jcoup_pack_3, h, Jperp, 1.0f / T,
                             log_rand_nums);
        // Unpack Trotters
        UnpackTrotters(trotters_pack, trotters);
#else
        // Run QMC-Basic
        QuantumMonteCarloBasic(nTrot, nSpin, trotters, Jcoup, h, Jperp,
                               1.0f / T, log_rand_nums);
#endif

        // End Timer
        std::chrono::system_clock::time_point end =
            std::chrono::system_clock::now();
        time_log << "Run " << i << ": "
                 << std::chrono::duration_cast<std::chrono::microseconds>(end -
                                                                          start)
                        .count()
                 << " us" << std::endl;

        // Current state energy
        fp_t sum_energy = 0.0f;

        // Compute energy
        for (int t = 0; t < nTrot; t++) {
            // Get energy of each trotters
            fp_t energy = ComputeEnergyPerTrotter(nSpin, trotters[t], Jcoup, h);

            // Sum up
            sum_energy += energy;

            // Write out to log
            out_log << "T" << t << ": " << energy << std::endl;
        }

        // Write out total energy
        out_log << "Energy: " << sum_energy << std::endl;
    }

    // Close out_log
    out_log.close();
    time_log.close();

#if REPLAY
    // Close file_lrn
    file_lrn.close();
#endif
}
