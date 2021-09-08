HLS_INCLUDE=/home/edci/Xilinx/Vitis_HLS/2021.1/include/
PYTHON_PATH=/usr/include/python3.8

all: host.exe host_am.exe

host.exe: host.cpp
	g++ -g -std=c++14 -I$(HLS_INCLUDE) -I$(XILINX_XRT)/include -L$(XILINX_XRT)/lib -o host.exe host.cpp -lxrt_coreutil -pthread

host_am.exe: host_am.cpp
	g++ -g -std=c++14 -I$(HLS_INCLUDE) -I$(XILINX_XRT)/include -I$(PYTHON_PATH) -L$(XILINX_XRT)/lib -o host_am.exe host_am.cpp -lxrt_coreutil -pthread -lpython3.8 -DWITHOUT_NUMPY

clean:
	rm -f host.exe host_am.exe
	rm -f time_log.txt trot_log.txt xclbin.run_summary native_trace.csv