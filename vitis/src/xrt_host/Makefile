HLS_INCLUDE=/home/edci/Xilinx/Vitis_HLS/2021.1/include/
PYTHON_PATH=/usr/include/python3.8
CFLAG=-g -std=c++14 -I$(HLS_INCLUDE) -I$(XILINX_XRT)/include -I$(PYTHON_PATH) -L$(XILINX_XRT)/lib
CFLAG_POST=-lxrt_coreutil -pthread -lpython3.8 -DWITHOUT_NUMPY

all: host.exe host_am.exe host.c2.exe

host.exe: host.cpp
	g++ $(CFLAG) -o host.exe host.cpp $(CFLAG_POST)

host.c2.exe: host.c2.cpp
	g++ $(CFLAG) -o host.c2.exe host.c2.cpp $(CFLAG_POST)

host_am.exe: host_am.cpp
	g++ $(CFLAG) -o host_am.exe host_am.cpp $(CFLAG_POST)

clean:
	rm -f host.exe host_am.exe host.c2.exe
	rm -f time_log.txt trot_log.txt out.txt xclbin.run_summary native_trace.csv