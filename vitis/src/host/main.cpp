#include <cmath>
#include <fstream>
#include <iostream>

#include "../include/helper.hpp"
#include "../include/sqa.hpp"

#define U50 0
#define AM 1

// Jcoup
fp_t Jcoup[NUM_SPIN][NUM_SPIN];
fp_pack_t Jcoup_pack[NUM_SPIN][NUM_SPIN / PACKET_SIZE];

int main(int argc, char **argv) {
    // Dump value of macros
    std::cout << "Current host settings:" << std::endl;
    std::cout << "-> U50: " << U50 << std::endl;
    std::cout << "-> AM : " << AM << std::endl;

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
    spin_t trotters[NUM_TROT][NUM_SPIN];
    spin_pack_u50_t trotters_pack[NUM_TROT][NUM_SPIN / PACKET_SIZE];

    // h
    fp_t h[NUM_SPIN];

    // Generate Trotters
    GenerateRandomState(trotters, nTrot, nSpin);

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
#endif

    // Iteration Record
#if U50
    std::ofstream out_log("out_log.u50.txt");
#else
    std::ofstream out_log("out_log.basic.txt");
#endif

    // Iteration parameters
#if AM
    const int iter = 500;           // default 500
    const fp_t gamma_start = 3.0f;  // default 3.0f
    const fp_t T = 0.3f;            // default 0.3f
#else
    const int iter = 500;           // default 500
    const fp_t gamma_start = 3.0f;  // default 3.0f
    const fp_t T = 128.0f;           // default 0.3f
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
        GenerateLogRandomNumber(nTrot, log_rand_nums);

#if U50
        // Run QMC-U50
        QuantumMonteCarloU50(trotters_pack, Jcoup_pack, h, Jperp, 1.0f / T,
                             log_rand_nums);
        // Unpack Trotters
        UnpackTrotters(trotters_pack, trotters);
#else
        // Run QMC-Basic
        QuantumMonteCarloBasic(nTrot, nSpin, trotters, Jcoup, h, Jperp,
                               1.0f / T, log_rand_nums);
#endif

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
}
