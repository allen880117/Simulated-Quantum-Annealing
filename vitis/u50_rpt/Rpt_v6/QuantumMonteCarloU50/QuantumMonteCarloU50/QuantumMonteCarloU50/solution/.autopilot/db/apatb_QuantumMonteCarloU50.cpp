#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.QuantumMonteCarloU50.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.QuantumMonteCarloU50.autotvout_gmem.dat"
// wrapc file define:
#define AUTOTB_TVIN_trotters "../tv/cdatafile/c.QuantumMonteCarloU50.autotvin_trotters.dat"
#define AUTOTB_TVOUT_trotters "../tv/cdatafile/c.QuantumMonteCarloU50.autotvout_trotters.dat"
// wrapc file define:
#define AUTOTB_TVIN_Jcoup "../tv/cdatafile/c.QuantumMonteCarloU50.autotvin_Jcoup.dat"
#define AUTOTB_TVOUT_Jcoup "../tv/cdatafile/c.QuantumMonteCarloU50.autotvout_Jcoup.dat"
// wrapc file define:
#define AUTOTB_TVIN_h "../tv/cdatafile/c.QuantumMonteCarloU50.autotvin_h.dat"
#define AUTOTB_TVOUT_h "../tv/cdatafile/c.QuantumMonteCarloU50.autotvout_h.dat"
// wrapc file define:
#define AUTOTB_TVIN_Jperp "../tv/cdatafile/c.QuantumMonteCarloU50.autotvin_Jperp.dat"
#define AUTOTB_TVOUT_Jperp "../tv/cdatafile/c.QuantumMonteCarloU50.autotvout_Jperp.dat"
// wrapc file define:
#define AUTOTB_TVIN_Beta "../tv/cdatafile/c.QuantumMonteCarloU50.autotvin_Beta.dat"
#define AUTOTB_TVOUT_Beta "../tv/cdatafile/c.QuantumMonteCarloU50.autotvout_Beta.dat"
// wrapc file define:
#define AUTOTB_TVIN_logRand "../tv/cdatafile/c.QuantumMonteCarloU50.autotvin_logRand.dat"
#define AUTOTB_TVOUT_logRand "../tv/cdatafile/c.QuantumMonteCarloU50.autotvout_logRand.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.QuantumMonteCarloU50.autotvout_gmem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_trotters "../tv/rtldatafile/rtl.QuantumMonteCarloU50.autotvout_trotters.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_Jcoup "../tv/rtldatafile/rtl.QuantumMonteCarloU50.autotvout_Jcoup.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_h "../tv/rtldatafile/rtl.QuantumMonteCarloU50.autotvout_h.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_Jperp "../tv/rtldatafile/rtl.QuantumMonteCarloU50.autotvout_Jperp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_Beta "../tv/rtldatafile/rtl.QuantumMonteCarloU50.autotvout_Beta.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_logRand "../tv/rtldatafile/rtl.QuantumMonteCarloU50.autotvout_logRand.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem_depth = 0;
  trotters_depth = 0;
  Jcoup_depth = 0;
  h_depth = 0;
  Jperp_depth = 0;
  Beta_depth = 0;
  logRand_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem " << gmem_depth << "}\n";
  total_list << "{trotters " << trotters_depth << "}\n";
  total_list << "{Jcoup " << Jcoup_depth << "}\n";
  total_list << "{h " << h_depth << "}\n";
  total_list << "{Jperp " << Jperp_depth << "}\n";
  total_list << "{Beta " << Beta_depth << "}\n";
  total_list << "{logRand " << logRand_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem_depth;
    int trotters_depth;
    int Jcoup_depth;
    int h_depth;
    int Jperp_depth;
    int Beta_depth;
    int logRand_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s40__ { char data[64]; };
extern "C" void QuantumMonteCarloU50_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, float, float, volatile void *);

extern "C" void apatb_QuantumMonteCarloU50_hw(volatile void * __xlx_apatb_param_trotters, volatile void * __xlx_apatb_param_Jcoup, volatile void * __xlx_apatb_param_h, float __xlx_apatb_param_Jperp, float __xlx_apatb_param_Beta, volatile void * __xlx_apatb_param_logRand) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > gmem_pc_buffer(1049888);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 32; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_trotters)[j*8+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_trotters)[j*8+1] = gmem_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_trotters)[j*8+2] = gmem_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_trotters)[j*8+3] = gmem_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_trotters)[j*8+4] = gmem_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_trotters)[j*8+5] = gmem_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_trotters)[j*8+6] = gmem_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_trotters)[j*8+7] = gmem_pc_buffer[i].range(511,448).to_int64();
}
            for (int j = 0, e = 1048576; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_Jcoup)[j*8+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_Jcoup)[j*8+1] = gmem_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_Jcoup)[j*8+2] = gmem_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_Jcoup)[j*8+3] = gmem_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_Jcoup)[j*8+4] = gmem_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_Jcoup)[j*8+5] = gmem_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_Jcoup)[j*8+6] = gmem_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_Jcoup)[j*8+7] = gmem_pc_buffer[i].range(511,448).to_int64();
}
            for (int j = 0, e = 256; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_h)[j*8+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_h)[j*8+1] = gmem_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_h)[j*8+2] = gmem_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_h)[j*8+3] = gmem_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_h)[j*8+4] = gmem_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_h)[j*8+5] = gmem_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_h)[j*8+6] = gmem_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_h)[j*8+7] = gmem_pc_buffer[i].range(511,448).to_int64();
}
            for (int j = 0, e = 1024; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_logRand)[j*8+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_logRand)[j*8+1] = gmem_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_logRand)[j*8+2] = gmem_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_logRand)[j*8+3] = gmem_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_logRand)[j*8+4] = gmem_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_logRand)[j*8+5] = gmem_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_logRand)[j*8+6] = gmem_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_logRand)[j*8+7] = gmem_pc_buffer[i].range(511,448).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem
aesl_fh.touch(AUTOTB_TVIN_gmem);
aesl_fh.touch(AUTOTB_TVOUT_gmem);
//trotters
aesl_fh.touch(AUTOTB_TVIN_trotters);
aesl_fh.touch(AUTOTB_TVOUT_trotters);
//Jcoup
aesl_fh.touch(AUTOTB_TVIN_Jcoup);
aesl_fh.touch(AUTOTB_TVOUT_Jcoup);
//h
aesl_fh.touch(AUTOTB_TVIN_h);
aesl_fh.touch(AUTOTB_TVOUT_h);
//Jperp
aesl_fh.touch(AUTOTB_TVIN_Jperp);
aesl_fh.touch(AUTOTB_TVOUT_Jperp);
//Beta
aesl_fh.touch(AUTOTB_TVIN_Beta);
aesl_fh.touch(AUTOTB_TVOUT_Beta);
//logRand
aesl_fh.touch(AUTOTB_TVIN_logRand);
aesl_fh.touch(AUTOTB_TVOUT_logRand);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_trotters = 0;
unsigned __xlx_offset_byte_param_Jcoup = 0;
unsigned __xlx_offset_byte_param_h = 0;
unsigned __xlx_offset_byte_param_logRand = 0;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_trotters = 0*64;
  if (__xlx_apatb_param_trotters) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_trotters)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_trotters)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_trotters)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_trotters)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_trotters)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_trotters)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_trotters)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_trotters)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_Jcoup = 32*64;
  if (__xlx_apatb_param_Jcoup) {
    for (int j = 0  - 0, e = 1048576 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_h = 1048608*64;
  if (__xlx_apatb_param_h) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_h)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_h)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_h)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_h)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_h)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_h)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_h)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_h)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_logRand = 1048864*64;
  if (__xlx_apatb_param_logRand) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_logRand)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_logRand)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_logRand)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_logRand)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_logRand)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_logRand)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_logRand)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_logRand)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(1049888, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
}
// print trotters Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_trotters, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_trotters;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_trotters, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.trotters_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_trotters, __xlx_sprintf_buffer.data());
}
// print Jcoup Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Jcoup, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_Jcoup;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_Jcoup, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.Jcoup_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Jcoup, __xlx_sprintf_buffer.data());
}
// print h Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_h, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_h;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_h, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.h_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_h, __xlx_sprintf_buffer.data());
}
// print Jperp Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Jperp, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_Jperp);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_Jperp, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.Jperp_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Jperp, __xlx_sprintf_buffer.data());
}
// print Beta Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Beta, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_Beta);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_Beta, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.Beta_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Beta, __xlx_sprintf_buffer.data());
}
// print logRand Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_logRand, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_logRand;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_logRand, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.logRand_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_logRand, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
QuantumMonteCarloU50_hw_stub_wrapper(__xlx_apatb_param_trotters, __xlx_apatb_param_Jcoup, __xlx_apatb_param_h, __xlx_apatb_param_Jperp, __xlx_apatb_param_Beta, __xlx_apatb_param_logRand);
CodeState = DUMP_OUTPUTS;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_trotters = 0*64;
  if (__xlx_apatb_param_trotters) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_trotters)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_trotters)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_trotters)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_trotters)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_trotters)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_trotters)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_trotters)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_trotters)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_Jcoup = 32*64;
  if (__xlx_apatb_param_Jcoup) {
    for (int j = 0  - 0, e = 1048576 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_Jcoup)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_h = 1048608*64;
  if (__xlx_apatb_param_h) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_h)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_h)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_h)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_h)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_h)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_h)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_h)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_h)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_logRand = 1048864*64;
  if (__xlx_apatb_param_logRand) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_logRand)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_logRand)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_logRand)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_logRand)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_logRand)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_logRand)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_logRand)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_logRand)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(1049888, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
