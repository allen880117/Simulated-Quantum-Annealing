# Solve Sudoku problem using SQA

`sudoku.ipynb` is used to generate `J.in`, `h.in`, and sudoku board (`board.in` and `board.ans`).

`SQA-sudoku.ipynb` solve the problem using SQA.

`compute_energy.c` compute the energy of each monte carlo step, and return the best step and best trotter slice. (since computing energy in python is too slow...)

`examples/` directory store some test cases with different difficulty and the corresponding hyper parameters of SQA.
