source ~/Xilinx/Vitis/2021.1/settings64.sh
source /opt/xilinx/xrt/setup.sh
export PLATFORM_REPO_PATHS='/opt/xilinx/platforms'
export XILINX_PLATFORM='xilinx_u50_gen3x16_xdma_201920_3'
export DEVICE=${PLATFORM_REPO_PATHS}/${XILINX_PLATFORM}/${XILINX_PLATFORM}.xpfm
export DM_MODE=DMA

# Start at about 16:45 ~ 16:50

# write_bitstream failed
# ERROR: [Common 17-69] Command failed: This design contains one or more cells for which bitstream generation is not permitted:
# level0_i/ulp/eth0/inst/i_ethernet_0/inst/i_xxv_ethernet_x4_0_top_3/i_HSEC_CORES (<encrypted cellview>)
# level0_i/ulp/eth0/inst/i_ethernet_0/inst/i_xxv_ethernet_x4_0_top_2/i_HSEC_CORES (<encrypted cellview>)
# level0_i/ulp/eth0/inst/i_ethernet_0/inst/i_xxv_ethernet_x4_0_top_1/i_HSEC_CORES (<encrypted cellview>)
# If a new IP Core license was added, in order for the new license to be picked up, the current netlist needs to be updated by resetting and re-generating the IP output products before bitstream generation.
# INFO: [Common 17-206] Exiting Vivado at Thu Jul 29 19:53:12 2021...

# ===>The following messages were generated while  Compiling (bitstream) accelerator binary: aat Log file: /home/edci/AAT_21_1_2021Q2/Accelerated_Algorithmic_Trading/build/_x/link/vivado/vpl/prj/prj.runs/impl_1/runme.log  :
# ERROR: [VPL 17-69] Command failed: This design contains one or more cells for which bitstream generation is not permitted:
# level0_i/ulp/eth0/inst/i_ethernet_0/inst/i_xxv_ethernet_x4_0_top_3/i_HSEC_CORES (<encrypted cellview>)
# level0_i/ulp/eth0/inst/i_ethernet_0/inst/i_xxv_ethernet_x4_0_top_2/i_HSEC_CORES (<encrypted cellview>)
# level0_i/ulp/eth0/inst/i_ethernet_0/inst/i_xxv_ethernet_x4_0_top_1/i_HSEC_CORES (<encrypted cellview>)
# If a new IP Core license was added, in order for the new license to be picked up, the current netlist needs to be updated by resetting and re-generating the IP output products before bitstream generation.
# ERROR: [VPL 60-773] In '/home/edci/AAT_21_1_2021Q2/Accelerated_Algorithmic_Trading/build/_x/link/vivado/vpl/runme.log', caught Tcl error:  problem implementing dynamic region, impl_1: write_bitstream ERROR, please look at the run log file '/home/edci/AAT_21_1_2021Q2/Accelerated_Algorithmic_Trading/build/_x/link/vivado/vpl/prj/prj.runs/impl_1/runme.log' for more information
# WARNING: [VPL 60-732] Link warning: No monitor points found for BD automation.
# WARNING: [VPL 60-732] Link warning: One or more timing paths failed timing targeting 320 MHz for kernel clock 'clk_kernel_in'. The frequency is being automatically changed to 307.5 MHz to enable proper functionality
# ERROR: [VPL 60-704] Integration error, problem implementing dynamic region, impl_1: write_bitstream ERROR, please look at the run log file '/home/edci/AAT_21_1_2021Q2/Accelerated_Algorithmic_Trading/build/_x/link/vivado/vpl/prj/prj.runs/impl_1/runme.log' for more information
# ERROR: [VPL 60-1328] Vpl run 'vpl' failed
# ERROR: [VPL 60-806] Failed to finish platform linker
# INFO: [v++ 60-1442] [19:53:26] Run run_link: Step vpl: Failed
# Time (s): cpu = 00:02:24 ; elapsed = 02:31:01 . Memory (MB): peak = 1901.223 ; gain = 0.000 ; free physical = 50028 ; free virtual = 60728
# ERROR: [v++ 60-661] v++ link run 'run_link' failed
# ERROR: [v++ 60-626] Kernel link failed to complete
# ERROR: [v++ 60-703] Failed to finish linking
# INFO: [v++ 60-1653] Closing dispatch client.
# make: *** [Makefile:207: aat.xclbin] Error 1

# We need license, check the note on page 88 of user guide


# For sw hw_emu
export XCL_EMULATION_MODE=hw_emu
# rename build/aat_shell_exe as build/aat_shell_hw_emu_exe

# Generate HW EMU platform
export XCL_EMULATION_MODE=hw_emu
export PLATFORM_REPO_PATHS='/opt/xilinx/platforms'
emconfigutil --platform xilinx_u50_gen3x16_xdma_201920_3

# Run hw_emu
source ~/Xilinx/Vitis/2021.1/settings64.sh
source /opt/xilinx/xrt/setup.sh
export XCL_EMULATION_MODE=hw_emu
./aat_shell_hw_emu_exe -i run support/demo_setup_hw_emu.cfg

# Add following content to xrt.ini
# [Emulation]
# keep_run_dir=false
# debug_mode=gui

export XILINX_VIVADO='/home/edci/Xilinx/Vivado/2021.1'
source setup.sh
python3 aat_hw_emu.py -i ../../build/support/cme_input_arb.pcap -o aat_hw_emu_out.pcap -s 17