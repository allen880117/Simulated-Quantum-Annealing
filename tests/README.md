# Run Test

## Simulation

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

## Co-Simulation

We don't recommand do co-simulation here. 

There exists some problem about the connection of the DSP when do co-simulation in Vivado HLS 2020.1. The time needed for co-simulation will be extremely slow down due to the message output.

The detailed discussion can be found at [here](https://forums.xilinx.com/t5/Simulation-and-Verification/Warning-OPMODE-Input-Warning-The-OPMODE-0110X0X-with-CARRYINSEL/td-p/702538) and [here](https://www.xilinx.com/support/answers/73689.html)

## On-Board Test

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
