# Simulated-Quantum-Annealing

## Introduction

This project is aimed to implementing the simulated quantum annealing in HLS and reproduce the paper [[1]](https://github.com/allen880117/Simulated-Quantum-Annealing/blob/main/docs/references/Highly-Parallel_FPGA-Accelerator_for_Simulated_Quantum_Annealing.pdf).

We exploit the inter-trotter parallelism and the intra-trotter parallelism by reffering to the [1], and design the interface which is more suitable our environment.

After the first on-board test, we furtherly add the pseudo random number generator into the kernel to speed up the wholse system.

* [[1] Highly-Parallel FPGA Accelerator for Simulated Quantum Annealing](https://github.com/allen880117/Simulated-Quantum-Annealing/blob/main/docs/references/Highly-Parallel_FPGA-Accelerator_for_Simulated_Quantum_Annealing.pdf)

## Major Optimizations 

### Problem of the Naive Implementation

According to the [1] and our analysis, we find out that the naive implementation has the following problems:

* Time complexity is O(TSS)

* Not exploit the inter-trotter parallelism
  * Although there exists data dependencies between two trotters, it's still possible to perform some transformation to overlap the update of each trotters in parallel.

* Not exploit the intra-trotter parallelism
  * Need a better scheme for reduction.

* Need a huge memory to store the coefficients.
  * On-chip memory size is not enough to store all the coefficients.

* Low reuse rate of the coefficients (`J coupling`).

### Our Optimizations

* According to optimized access pattern of the coefficients, we design the interface with `hls::stream`, successfully decrease the usage of the memory with minor tradeoff.

* By the array partition, indicating loop dependencies, and the explicit loop unrolling, we successfully overlap the execution stage of the trotter units.

* Adding pseudo random number generator ([reference](https://people.sc.fsu.edu/~jburkardt/cpp_src/uniform/uniform.html)) into the kerenl to speed up the whole system.

* Adding the support to the variable boundary.

* Time complexity is O(S(S+T)), which the number of trotter won't harm the performance as huge as the naive implementation.

### Further Report

For further comparison and the detailed report, you can check the [README](https://github.com/allen880117/Simulated-Quantum-Annealing/tree/main/impl_result) at the `impl_result`, we explain the detailed technique and the reason there.

## Folder Structure

```
simulated-quantum-annealing/
├── build
├── data
│   └── (empty)
├── docs
│   ├── references
│   └── report_images
├── impl_result
│   ├── basic_t16
│   ├── basic_t8
│   ├── image
│   ├── opt1_fail
│   ├── opt1_success_t8
│   ├── opt2_t16
│   ├── opt2_t8
│   ├── opt3
│   ├── opt5
│   ├── opt5_adv
│   └── opt5_sudoku
├── src
│   ├── helper
│   ├── host
│   │   └── sudoku
│   │       └── examples
│   │           ├── empty-10
│   │           ├── empty-15
│   │           ├── empty-20
│   │           ├── empty-25
│   │           └── empty-5
│   ├── include
│   ├── kernel_opt1
│   ├── kernel_opt2
│   ├── kernel_opt3
│   ├── kernel_opt5
│   ├── kernel_opt5_advance
│   ├── kernel_opt5_sudoku
│   └── original
└── tests
```

## Build Setup

### Environments

* PYNQ-Z2
* Vivado 2020.1
* Vivado HLS 2020.1

### Detailed Steps

Since it's hard to write a script to build for us now. I will show the build step here.

1. Creae a new HLS project.

    1.1. Select the board, `PYNQ-Z2`.

    1.2. Select the frequency, we recommand `100 MHz` which is `10ns` here.

2. Adding all the sources in the following list into the `sources`:

    ```text
    ./src/helper/prng.cpp

    ./src/original/*.cpp

    ./src/kerenl_opt1/*.cpp
    ./src/kernel_opt2/*.cpp
    ./src/kernel_opt3/*.cpp
    ./src/kernel_opt5/*.cpp
    ./src/kernel_opt5_advacne/*.cpp
    ./src/kernel_opt5_sudoku/*.cpp
    ```

3. Adding all the sources in the following list into the `testbench`:

    ```text
    ./src/helper/helper.cpp
    ./src/host/host.cpp
    ```

4. Simulation

   For simulation, please refer to the section `Run Test` below.

5. Select the top function and synthesis:

    Since all the pragma is already inline into the sources, just select your top function and run the synthesis. 

    ||Version|Function Name|
    |-|-|-|
    |1|Basic|QuantumMonteCarlo|
    |2|Opt1|QuantumMonteCarloOpt|
    |3|Opt2|QuantumMonteCarloOpt2|
    |4|Opt3|QuantumMonteCarloOpt3|
    |5|Opt5|QuantumMonteCarloOpt5|
    |6|Opt5-Sudoku|QuantumMonteCarloOpt5S|
    |7|Opt5-Advance|QuantumMonteCarloOpt5Adv|

6. Create a Vivado Project

    6.1. Select the board, `PYNQ-Z2`

    6.2. Adding our HLS IP into the IP Catalog.

7. Create a new block diagram

    Configure the `PS-PL Configuration` of `ZYNQ7 Processing System` to enable at least one Slave AXI interface for PS.

    ![ps_pl_config](https://raw.githubusercontent.com/allen880117/Simulated-Quantum-Annealing/main/docs/report_images/ps_pl_config.png)

    Route as the following diagram. (Only suitable for the Opt-Series, not for Basic)

    ![bd](https://raw.githubusercontent.com/allen880117/Simulated-Quantum-Annealing/main/docs/report_images/block_diagram.png)

8. Generate Bitstream

    8.1 Press `Generate Bitstream` direclty

    8.2 Get `.bit` and `.hwh` for `On-Board Test`

    ```text
    ./<vivado_project>.srcs/sources_1/bd/<design>/hw_handoff/<design>.hwh
    ./<vivado_project>.runs/impl_1/<design>_wrapper.bit
    ```

    Remember to rename the two files to have same prefix.

    ```text
    SQA.hwh
    SQA.bit
    ```

9. Run Test

    Please refer to the below section `Run Test`.

## Run Test

### Simulation

1. Follow the `Build Steps` `1~3`

2. The host code `main.cpp` will perform the test of `Number Partition Problem`.

    2.1. It will generate the data by itself.
    
    2.2. Then it will run the 500 iterations of SQA.
    
    2.3. It will dump the following information at the end of the execution.

    ```text
    [Best Energy]
    [Best Run] [Trotter Number] [Sum of 1st Subset] [Sum of 2nd Subset]
    ```

    2.4. It will also generate a `out.txt` file which dump the summation of the energy in each run. You can use the script `./tests/vision.ipynb` to visualize it.

### Co-Simulation

We don't recommand do co-simulation here. 

There exists some problem about the connection of the DSP when do co-simulation in Vivado HLS 2020.1. The time needed for co-simulation will be extremely slow down due to the message output.

The detailed discussion can be found at [here](https://forums.xilinx.com/t5/Simulation-and-Verification/Warning-OPMODE-Input-Warning-The-OPMODE-0110X0X-with-CARRYINSEL/td-p/702538) and [here](https://www.xilinx.com/support/answers/73689.html)

### On-Board Test

1. Follow the `Build Steps` `1~8` to build the `.bit` and `.hwh` file.

2. Move them into the board.

3. We provide following host files to test:

    ```text
    ./src/host/SQA-Opt2.ipynb
    ./src/host/SQA-Opt3.ipynb
    ./src/host/SQA-Opt5.ipynb
    ./src/host/SQA-Opt5-Adv.ipynb
    ./src/host/sudoku/SQA-sudoku.ipynb
    ```

    The detail about the test on `SQA-Opt5-Sudoku`, please refer to the [here](https://github.com/allen880117/Simulated-Quantum-Annealing/tree/main/src/host/sudoku).
