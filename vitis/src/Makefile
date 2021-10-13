HLS_INCLUDE=/home/edci/Xilinx/Vitis_HLS/2021.1/include/
PYTHON_PATH=/usr/include/python3.8
CFLAG=-g -std=c++14 -I$(HLS_INCLUDE) -I$(XILINX_XRT)/include -I$(PYTHON_PATH) -L$(XILINX_XRT)/lib
CFLAG_POST=-lxrt_coreutil -pthread -lpython3.8 -DWITHOUT_NUMPY 
CFLAG_POST_2=-DAM=0 -DREPLAY=0 -DU50=0 -DCUR_SIM=2

SRC=host/main.cpp kernel/qmc_basic.cpp helper/helper.cpp

all: naive.exe

naive.exe: $(SRC)
	g++ $(CFLAG) -o $@ $(SRC) $(CFLAG_POST) $(CFLAG_POST_2)

clean:
	rm -f naive.exe
	rm -f time_log.basic.txt out_log.basic.txt