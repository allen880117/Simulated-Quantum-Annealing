# Build Setup

## Environments

* PYNQ-Z2
* Vivado 2020.1
* Vivado HLS 2020.1

## Detailed Steps

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

   For simulation, please refer to the `Run Test`.

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

    Please refer to the `Run Test`.