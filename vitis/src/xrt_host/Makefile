HLS_INCLUDE=/home/edci/Xilinx/Vitis_HLS/2021.1/include/

all: host.cpp host_am.cpp
	g++ -g -std=c++14 -I$(HLS_INCLUDE) -I$(XILINX_XRT)/include -L$(XILINX_XRT)/lib -o host.exe host.cpp -lxrt_coreutil -pthread
	g++ -g -std=c++14 -I$(HLS_INCLUDE) -I$(XILINX_XRT)/include -L$(XILINX_XRT)/lib -o host_am.exe host_am.cpp -lxrt_coreutil -pthread
