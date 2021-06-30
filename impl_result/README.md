# Implementation Results

## original (basic)

* Naive implementation

* Time complexity is O(TSS)

* Memory usage is too large
  * Need a better interface for passing the coefficients, instead of sending all the coefficients to the kernel at once.

## opt1-faill (opt)

* Implement the optimized architecture mentioned in [1]
  * Using a streaming interface for some of the coefficients instead.

* But we failed at this version.

* Compiler can't resolve the data dependency, making all trotter units work in sequential in an iteration.

![opt1-failed](https://raw.githubusercontent.com/allen880117/Simulated-Quantum-Annealing/main/impl_result/image/opt1-failed-inter.png)

## opt1-success (opt)

* Adding `#pragma HLS ARRAY_PARTITION variable = xx complete dim = 1` 
  * Make each totter unit can have its independent memory port for accessing.

* Adding more `#pragma HLS DEPENDENCE variable = xx inter false` to hint the compiler.

* Modify the passing parameters of the trotter units 
  * Hide the data dependency of the upper/lower trotter units.

* `#pragma HLS UNROLL` in the inner-most loop can't make all the trotter units work in parallel.
  * Explicitly unroll the loop.

* Success at exploiting the inter-trotter parallelism
  * Time complexity now is O(S(S+T))

![opt1-success](https://raw.githubusercontent.com/allen880117/Simulated-Quantum-Annealing/main/impl_result/image/opt1-success-inter.png)

## opt2 (opt2)

* Adding intra-trotter parallelism, decreasing the latency a lot.

* Using template meta-programming to express the explicit unrolling and the reduction in a more efficient way.

* The first version for the on-board test.
  * Show us the problem that passing the random numbers from host to device is time-consuming.
  * Only 7% of the overall execution time is the execution time of the kernel.

  * ![rng](https://raw.githubusercontent.com/allen880117/Simulated-Quantum-Annealing/main/impl_result/image/rng_time.png)

## opt3 (opt3)

* According to the problem we observed at the version `Opt2`, we add the pseudorandom generator in HLS. ([Reference](https://people.sc.fsu.edu/~jburkardt/cpp_src/uniform/uniform.html))

* `Natural Log` operation is time-consuming which harms the performance of the kernel a lot.

* The overall improvement in the whole system make this tradeoff worth it.

* The latency reported by the HLS synthesis report is not accurate, it assumes the generation of log random number executes at each iteration.
  * It executes once every `#Spins` iterations.

## opt5 (opt5)

* Modify the un-complete boundary check to truly support the variable size of the trotters and the spins.
  * Modulo is a time-consuming operation.

* Break down the `LOOP_CTRL` into multiple loops to get the index of the current processing spin more efficiently.
  * Also making the HLS synthesis report calculate the latency in a more accurate way

* Previous version (The innermost loop is explicit unrolling)

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

* Current version (The innermost loop is explicit unrolling)

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

* [[1] Highly-Parallel FPGA Accelerator for Simulated Quantum Annealing](https://ieeexplore.ieee.org/document/8918417)
* [[2] UNIFORM - A Uniform Random Number Generator (RNG)](https://people.sc.fsu.edu/~jburkardt/cpp_src/uniform/uniform.html)
