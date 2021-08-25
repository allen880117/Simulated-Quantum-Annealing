############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SQA-Vitis
set_top QuantumMonteCarloU50
#add_files Simulated-Quantum-Annealing/vitis/src/kernel/qmc.cpp
add_files Simulated-Quantum-Annealing/vitis/src/kernel/qmc_u50.cpp
add_files Simulated-Quantum-Annealing/vitis/src/include/sqa.hpp
add_files -tb Simulated-Quantum-Annealing/vitis/src/host/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Simulated-Quantum-Annealing/vitis/src/helper/helper.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xcvu35p-fsvh2892-2-e}
create_clock -period 300MHz -name default
#source "./SQA-Vitis/solution1/directives.tcl"
#csim_design -profile
csynth_design
#cosim_design
#export_design -format ip_catalog
