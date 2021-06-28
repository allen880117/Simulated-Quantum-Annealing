# Implementation Results

## basic

* Naive implementation

* Time complexity is O(TNN)

* Memory usage is too large
  * Need a better interface for passing the coefficients, instead of sending all the coefficients to the kernel in once.

## opt1-faill (opt)

* Implement the optimized architecture mentioned in [1]
  * Using a streaming interface for some of the coefficents instead.

* But we failed at this version.

* Compiler can't resolve the data dependency, making all trotter units work in sequential in an iteration.

![opt1-failed](https://raw.githubusercontent.com/allen880117/Simulated-Quantum-Annealing/main/impl_result/image/opt1-failed-inter.png)

## opt1-success (opt)

* Adding more `#pragma HLS DEPENDENCE variable = xx inter false` to hint the cmpiler.

* Modify the passing parameters of the trotter units to hide the data dependency of the upper/lower trotter units.

* `#pragma HLS UNROLL` in the inner-most loop can't make all the trotter units work in parallel.
  * Explicitly unroll the loop.

* Success at exploiting inter-trotter parallelism
  * Time complexity now is O(N(N+T))

![opt1-success](https://raw.githubusercontent.com/allen880117/Simulated-Quantum-Annealing/main/impl_result/image/opt1-success-inter.png)

## opt2 (opt2)

* Adding intra-trotter parallelism, decreasing the latency a lot.

* Using template meta-programming to express the explicit unrolling and the reduction in more efficient way.

* The first version on board.
  * Showing us the problem that passing the random numbers from host to device is time-consuming.
  * Only 7% of the overall execution time is the execution time of the kernel.

## opt3 (opt3)

* According to the problem we oberserved at the version `Opt2`, we add the pseudo random generator in HLS.

* `Natrual Log` operation is time-consuming which harms the performance of the kernel a lot.

* The overall improvement in the whole system make this tradoff worth of it.

* The latency reported by the HLS synthesis report is not accurate, it assumes the generation of log random number executes at each iteration.
  * It actually executes once of `#Spins` iteraion.

## opt5 (opt5)

* Modify the un-complete boundary check to truly support the variable size of the trotters and the spins.
  * Modulo is a time-consuming operation.

* Break down the `LOOP_CTRL` into multiple loops to get the index of the current processing spin in a more efficient way.
  * Also making the HLS synthesis report calculate the latency in a more accurate way

* Previous version (The innermost loop is actually explicit unrolling)

```C++
#define NPC 16 // The factor of intra-trotter parallelsim
for (int ctlStep = 0; ctlStep < (nSpins + nTrots - 1) * nSpins; ctlStep+= NPC ){
  for (int  t = 0; t < nTrots; t++ ){
    int i = ctlStep >> LOG2(MAX_NSPIN); // The number of nSpins is fixed to the MAX_NSPIN
    int j = ctlStep & (MAX_NSPIN-1); // The number of nSpins is fixed to the MAX_NSPIN
    TrotterUnits(t, i, j);
  }
}

```

* Current version (The innermost loop is actually explicit unrolling)

```C++
#define NPC 16 // The factor of intra-trotter parallelsim
for (int ctlStep = 0; ctlStep < (nSpins + nTrots - 1); ctlStep++){
  for (int j = 0; j < nSpins; j+= NPC){
    for (int t = 0; t < nTrots; t++ ){
        int i = ctlStep / nSpins; // The number of nSpins is fixed to the MAX_NSPIN
        // int j = ctlStep % nSpins; No need of the modulation now
        TrotterUnits(t, i, j);
    }
  }
}
```

## opt5_sudoku (opt5S)

* Adding the support for sudoku

* Overall performance doesn't change (comparing to the `opt5`)

## opt5_adv (opt5Adv)

* Based on `opt5`

* To efficiently adopt the optimization in HLS
  * Remove some of the if-branch.
  * Remove the variable trotter size
  * Duplicate the data

* Overall performance grows.

## Reference

* [[1] Highly-Parallel FPGA Accelerator for Simulated Quantum Annealing](https://github.com/allen880117/Simulated-Quantum-Annealing/blob/main/docs/references/Highly-Parallel_FPGA-Accelerator_for_Simulated_Quantum_Annealing.pdf)
