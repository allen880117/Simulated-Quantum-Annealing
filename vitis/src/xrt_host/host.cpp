#include <iostream>
#include <string>

#include "experimental/xrt_bo.h"
#include "experimental/xrt_device.h"
#include "experimental/xrt_kernel.h"

int main(int argc, char **argv) {
    // Print usage
    if (argc != 2){
        std::cout << "./host binary.xclbin" << std::endl;
        return -1;
    }
    
    // Get path of xclbin
    std::string binary_file = argv[1];

    // Set device index
    int device_index = 0;

    // Open device, load binary and build kernel
    auto device = xrt::device(device_index);
    auto uuid = device.load_xclbin(binary_file);
    auto krnl = xrt::kernel(device, uuid, "QuantumMonteCarlo");

}