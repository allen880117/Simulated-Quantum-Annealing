#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>

#include "experimental/xrt_bo.h"
#include "experimental/xrt_device.h"
#include "experimental/xrt_kernel.h"

#define NUM_TROT 4
#define NUM_SPIN 4096
#define PACKET_SIZE 16
#define LOG2_PACKET_SIZE 4
#define NUM_STREAM 16
#define LOG2_NUM_STREAM 4
#define HALF_NUM_STREAM 8
#define NUM_FADD 64
/* V1 use COPYSIGNF */
#define COPYSIGNF 1
/* V2 doesn't use */

typedef unsigned int u32_t;
typedef int i32_t;

#include "ap_int.h"

typedef float fp_t;
typedef ap_uint<1> spin_t;
typedef struct {
  fp_t data[PACKET_SIZE];
} fp_pack_t;
typedef ap_uint<PACKET_SIZE * NUM_STREAM> spin_pack_t;
typedef ap_uint<PACKET_SIZE> spin_pack_u50_t;

fp_t Jcoup[NUM_SPIN][NUM_SPIN];
fp_t h[NUM_SPIN];

#define PBSTR "============================================================"
#define PBWIDTH 60

void printProgress(int run, int max_run) {
  float percentage = (float)run / (float)max_run;
  int val = (int)(percentage * 100);
  int lpad = (int)(percentage * PBWIDTH);
  int rpad = PBWIDTH - lpad;
  printf("\r[STAT][%3d%%] [%.*s%*s] %4d/%4d", val, lpad, PBSTR, rpad, "", run,
         max_run);
  fflush(stdout);
}

int main(int argc, char** argv) {
  // Print usage
  if (argc != 2) {
    std::cout << "./host binary.xclbin" << std::endl;
    return -1;
  }

  // Get path of xclbin
  std::string binary_file = argv[1];

  // Set device index
  int device_index = 0;

  // Open device
  xrt::device device = xrt::device(device_index);
  std::cout << "[INFO][O] -> Open Device with Index: " << device_index
            << std::endl;

  // Show the name of the device
  std::string device_name = device.get_info<xrt::info::device::name>();
  std::cout << "[INFO][-] -> Device Name: " << device_name << std::endl;

  // Load the binary (xclbin)
  xrt::uuid uuid = device.load_xclbin(binary_file);
  std::cout << "[INFO][O] -> Load binary(.xclbin) : " << binary_file
            << std::endl;

  // Build the kernel
  xrt::kernel krnl = xrt::kernel(device, uuid, "QuantumMonteCarloU50");

  // Allocate input buffer in global memory
  std::cout << "[INFO][-] -> Allocate Buffer in Global Memory" << std::endl;

  const size_t trots_size_in_bytes =
      NUM_TROT * NUM_SPIN / PACKET_SIZE * sizeof(spin_pack_u50_t);
  const size_t Jcoup_size_in_bytes =
      NUM_SPIN * NUM_SPIN / PACKET_SIZE * sizeof(fp_pack_t);
  const size_t h_size_in_bytes = NUM_SPIN * sizeof(fp_t);
  const size_t logRand_size_in_bytes = NUM_TROT * NUM_SPIN * sizeof(fp_t);

  xrt::bo bo_trotters = xrt::bo(device, trots_size_in_bytes, krnl.group_id(0));
  xrt::bo bo_Jcoup = xrt::bo(device, Jcoup_size_in_bytes, krnl.group_id(1));
  xrt::bo bo_h = xrt::bo(device, h_size_in_bytes, krnl.group_id(2));
  xrt::bo bo_logRand = xrt::bo(device, logRand_size_in_bytes, krnl.group_id(5));

  // Map the contents of the buffer object into host memory
  std::cout << "[INFO][-] -> Map the buffer into the host memory" << std::endl;
  spin_pack_u50_t* bo_trotters_map =
      bo_trotters
          .map<spin_pack_u50_t*>();  // Type Cast from spin_pack_u50_t to spin_t
  fp_pack_t* bo_Jcoup_map =
      bo_Jcoup.map<fp_pack_t*>();  // Type cast from fp_pack_t to fp_t
  fp_t* bo_h_map = bo_h.map<fp_t*>();
  fp_t* bo_logRand_map = bo_logRand.map<fp_t*>();

  // Create the test data of trotters
  std::cout << "[INFO][-] -> Create initial trotters" << std::endl;

  // Do Nothing

  // Create the test data of Jcoup
  std::cout << "[INFO][-] -> Create random number and Jcoup" << std::endl;

  std::random_device rd;
  std::mt19937 rng(rd());
  std::uniform_real_distribution<fp_t> unif(0.0, 1.0);
  std::normal_distribution<fp_t> int_unif(0, 1);

  fp_t rand_num[NUM_SPIN];

  for (int i = 0; i < NUM_SPIN; i++) {
    rand_num[i] = (float)(i + 1) / (float)NUM_SPIN / 4.0f;
  }

  for (int i = 0; i < NUM_SPIN; i++) {
    for (int j = 0; j < NUM_SPIN / PACKET_SIZE; j++) {
      fp_pack_t tmp;
      for (int k = 0; k < PACKET_SIZE; k++) {
        tmp.data[k] = -(rand_num[i] * rand_num[j * PACKET_SIZE + k]);
      }
      bo_Jcoup_map[i * NUM_SPIN / PACKET_SIZE + j] = tmp;
    }
  }

  // Create the test data of h
  std::cout << "[INFO][-] -> Create h" << std::endl;

  for (int i = 0; i < NUM_SPIN; i++) {
    bo_h_map[i] = 0.0f;
  }

  // Iter Arguments
  fp_t iter = 500;                   // default 500
  fp_t beta = 1 / ((fp_t)4096.0f);   // default 1/16
  fp_t max_beta = ((fp_t)8) / 1.0f;  // default 8.0f
  fp_t d_beta = (max_beta - beta) / (fp_t)iter;
  fp_t G0 = 8.0f;  // default 8.0f

  // Best Status
  fp_t bestEnergy = 10e22;
  fp_t bestA, bestB;
  int bestRun = 0;
  int bestTrot = 0;

  // Log File
  std::ofstream out("out.txt");
  std::ofstream time_log("time_log.txt");

  // Sync Input Buffers (which won't change by host in the iterations)
  bo_trotters.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_Jcoup.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_h.sync(XCL_BO_SYNC_BO_TO_DEVICE);

  // Iteration
  std::cout << "[INFO][!] -> Start Iterations of SQA" << std::endl;

  xrt::run run;
  for (int i = 0; i < iter; i++) {
    // Print Progress
    printProgress(i + 1, iter);

    // Read Log Random Number for Flipping
    for (int k = 0; k < NUM_TROT * NUM_SPIN; k++) {
      bo_logRand_map[k] = log(unif(rng)) * NUM_TROT;
    }

    // Sync bo_logRand
    bo_logRand.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    // Get Jperp
    fp_t Gamma = G0 * (1 - (float)i / iter);
    fp_t Jperp = -0.5 * log(tanh((Gamma / NUM_TROT) * beta)) / beta;

    // Set Timer
    std::chrono::system_clock::time_point start =
        std::chrono::system_clock::now();

    // Run the kernel
    if (i == 0) {
      run = krnl(bo_trotters, bo_Jcoup, bo_h, Jperp, beta, bo_logRand);
    } else {
      run.set_arg(3, Jperp);
      run.set_arg(4, beta);
      run.start();
    }
    run.wait();

    // End Timer
    std::chrono::system_clock::time_point end =
        std::chrono::system_clock::now();
    time_log << "Run " << i << ": "
             << std::chrono::duration_cast<std::chrono::microseconds>(end -
                                                                      start)
                    .count()
             << " us" << std::endl;

    // Increase beta
    beta += d_beta;

    // Sync trotters back
    bo_trotters.sync(XCL_BO_SYNC_BO_FROM_DEVICE);

    // Compute Energy
    fp_t sumEnergy = 0;
    for (int t = 0; t < NUM_TROT; t++) {
      fp_t a = 0, b = 0;
      for (int i = 0; i < NUM_SPIN / PACKET_SIZE; i++) {
        for (int k = 0; k < PACKET_SIZE; k++) {
          if (bo_trotters_map[t * NUM_SPIN / PACKET_SIZE + i][k]) {
            a += rand_num[i * PACKET_SIZE + k];
          } else {
            b += rand_num[i * PACKET_SIZE + k];
          }
        }
      }

      out << "T" << t << ": " << a << " " << b << std::endl;
      sumEnergy += (a - b) * (a - b);

      if (fabs(a - b) < bestEnergy) {
        bestEnergy = fabs(a - b);
        bestA = a;
        bestB = b;
        bestRun = i;
        bestTrot = t;
      }
    }
    out << "SUM: " << sumEnergy << std::endl;
  }

  std::cout << "\n[INFO][!] -> Done" << std::endl;

  // Print best
  std::cout << "\nbest energy  : " << bestEnergy << "\nbest (a,b)   : " << bestA
            << "," << bestB << "\nbest run     : " << bestRun
            << "\nbest trotter : " << bestTrot << std::endl;

  // Close the out
  out.close();
  time_log.close();
}
