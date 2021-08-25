HLS_INCLUDE=/home/edci/Xilinx/Vitis_HLS/2021.1/include/

all: host.cpp
	g++ -g -std=c++14 -I$(HLS_INCLUDE) -I$(XILINX_XRT)/include -L$(XILINX_XRT)/lib -o host.exe host.cpp -lxrt_coreutil -pthread