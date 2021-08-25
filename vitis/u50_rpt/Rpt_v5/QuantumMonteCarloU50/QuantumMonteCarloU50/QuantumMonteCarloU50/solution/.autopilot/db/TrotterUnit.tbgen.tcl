set moduleName TrotterUnit
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {TrotterUnit}
set C_modelType { float 32 }
set C_modelArgList {
	{ t_offset int 2 regular  }
	{ stage int 13 regular  }
	{ packOfst int 8 regular  }
	{ trotters int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters1 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters2 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters3 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters4 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters5 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters6 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters7 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters8 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters9 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters10 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters11 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters12 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters13 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters14 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trotters15 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ dH_read float 32 regular  }
	{ JcoupLocal int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal16 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal17 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal18 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal19 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal20 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal21 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal22 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal23 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal24 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal25 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal26 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal27 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal28 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal29 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal30 int 512 regular {array 16 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stage", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "packOfst", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "trotters", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trotters15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "dH_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal16", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal17", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal18", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal19", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal20", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal21", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal22", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal23", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal24", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal25", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal26", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal27", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal28", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal29", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal30", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 204
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ t_offset sc_in sc_lv 2 signal 0 } 
	{ stage sc_in sc_lv 13 signal 1 } 
	{ packOfst sc_in sc_lv 8 signal 2 } 
	{ trotters_address0 sc_out sc_lv 4 signal 3 } 
	{ trotters_ce0 sc_out sc_logic 1 signal 3 } 
	{ trotters_q0 sc_in sc_lv 16 signal 3 } 
	{ trotters_address1 sc_out sc_lv 4 signal 3 } 
	{ trotters_ce1 sc_out sc_logic 1 signal 3 } 
	{ trotters_q1 sc_in sc_lv 16 signal 3 } 
	{ trotters1_address0 sc_out sc_lv 4 signal 4 } 
	{ trotters1_ce0 sc_out sc_logic 1 signal 4 } 
	{ trotters1_q0 sc_in sc_lv 16 signal 4 } 
	{ trotters1_address1 sc_out sc_lv 4 signal 4 } 
	{ trotters1_ce1 sc_out sc_logic 1 signal 4 } 
	{ trotters1_q1 sc_in sc_lv 16 signal 4 } 
	{ trotters2_address0 sc_out sc_lv 4 signal 5 } 
	{ trotters2_ce0 sc_out sc_logic 1 signal 5 } 
	{ trotters2_q0 sc_in sc_lv 16 signal 5 } 
	{ trotters2_address1 sc_out sc_lv 4 signal 5 } 
	{ trotters2_ce1 sc_out sc_logic 1 signal 5 } 
	{ trotters2_q1 sc_in sc_lv 16 signal 5 } 
	{ trotters3_address0 sc_out sc_lv 4 signal 6 } 
	{ trotters3_ce0 sc_out sc_logic 1 signal 6 } 
	{ trotters3_q0 sc_in sc_lv 16 signal 6 } 
	{ trotters3_address1 sc_out sc_lv 4 signal 6 } 
	{ trotters3_ce1 sc_out sc_logic 1 signal 6 } 
	{ trotters3_q1 sc_in sc_lv 16 signal 6 } 
	{ trotters4_address0 sc_out sc_lv 4 signal 7 } 
	{ trotters4_ce0 sc_out sc_logic 1 signal 7 } 
	{ trotters4_q0 sc_in sc_lv 16 signal 7 } 
	{ trotters4_address1 sc_out sc_lv 4 signal 7 } 
	{ trotters4_ce1 sc_out sc_logic 1 signal 7 } 
	{ trotters4_q1 sc_in sc_lv 16 signal 7 } 
	{ trotters5_address0 sc_out sc_lv 4 signal 8 } 
	{ trotters5_ce0 sc_out sc_logic 1 signal 8 } 
	{ trotters5_q0 sc_in sc_lv 16 signal 8 } 
	{ trotters5_address1 sc_out sc_lv 4 signal 8 } 
	{ trotters5_ce1 sc_out sc_logic 1 signal 8 } 
	{ trotters5_q1 sc_in sc_lv 16 signal 8 } 
	{ trotters6_address0 sc_out sc_lv 4 signal 9 } 
	{ trotters6_ce0 sc_out sc_logic 1 signal 9 } 
	{ trotters6_q0 sc_in sc_lv 16 signal 9 } 
	{ trotters6_address1 sc_out sc_lv 4 signal 9 } 
	{ trotters6_ce1 sc_out sc_logic 1 signal 9 } 
	{ trotters6_q1 sc_in sc_lv 16 signal 9 } 
	{ trotters7_address0 sc_out sc_lv 4 signal 10 } 
	{ trotters7_ce0 sc_out sc_logic 1 signal 10 } 
	{ trotters7_q0 sc_in sc_lv 16 signal 10 } 
	{ trotters7_address1 sc_out sc_lv 4 signal 10 } 
	{ trotters7_ce1 sc_out sc_logic 1 signal 10 } 
	{ trotters7_q1 sc_in sc_lv 16 signal 10 } 
	{ trotters8_address0 sc_out sc_lv 4 signal 11 } 
	{ trotters8_ce0 sc_out sc_logic 1 signal 11 } 
	{ trotters8_q0 sc_in sc_lv 16 signal 11 } 
	{ trotters8_address1 sc_out sc_lv 4 signal 11 } 
	{ trotters8_ce1 sc_out sc_logic 1 signal 11 } 
	{ trotters8_q1 sc_in sc_lv 16 signal 11 } 
	{ trotters9_address0 sc_out sc_lv 4 signal 12 } 
	{ trotters9_ce0 sc_out sc_logic 1 signal 12 } 
	{ trotters9_q0 sc_in sc_lv 16 signal 12 } 
	{ trotters9_address1 sc_out sc_lv 4 signal 12 } 
	{ trotters9_ce1 sc_out sc_logic 1 signal 12 } 
	{ trotters9_q1 sc_in sc_lv 16 signal 12 } 
	{ trotters10_address0 sc_out sc_lv 4 signal 13 } 
	{ trotters10_ce0 sc_out sc_logic 1 signal 13 } 
	{ trotters10_q0 sc_in sc_lv 16 signal 13 } 
	{ trotters10_address1 sc_out sc_lv 4 signal 13 } 
	{ trotters10_ce1 sc_out sc_logic 1 signal 13 } 
	{ trotters10_q1 sc_in sc_lv 16 signal 13 } 
	{ trotters11_address0 sc_out sc_lv 4 signal 14 } 
	{ trotters11_ce0 sc_out sc_logic 1 signal 14 } 
	{ trotters11_q0 sc_in sc_lv 16 signal 14 } 
	{ trotters11_address1 sc_out sc_lv 4 signal 14 } 
	{ trotters11_ce1 sc_out sc_logic 1 signal 14 } 
	{ trotters11_q1 sc_in sc_lv 16 signal 14 } 
	{ trotters12_address0 sc_out sc_lv 4 signal 15 } 
	{ trotters12_ce0 sc_out sc_logic 1 signal 15 } 
	{ trotters12_q0 sc_in sc_lv 16 signal 15 } 
	{ trotters12_address1 sc_out sc_lv 4 signal 15 } 
	{ trotters12_ce1 sc_out sc_logic 1 signal 15 } 
	{ trotters12_q1 sc_in sc_lv 16 signal 15 } 
	{ trotters13_address0 sc_out sc_lv 4 signal 16 } 
	{ trotters13_ce0 sc_out sc_logic 1 signal 16 } 
	{ trotters13_q0 sc_in sc_lv 16 signal 16 } 
	{ trotters13_address1 sc_out sc_lv 4 signal 16 } 
	{ trotters13_ce1 sc_out sc_logic 1 signal 16 } 
	{ trotters13_q1 sc_in sc_lv 16 signal 16 } 
	{ trotters14_address0 sc_out sc_lv 4 signal 17 } 
	{ trotters14_ce0 sc_out sc_logic 1 signal 17 } 
	{ trotters14_q0 sc_in sc_lv 16 signal 17 } 
	{ trotters14_address1 sc_out sc_lv 4 signal 17 } 
	{ trotters14_ce1 sc_out sc_logic 1 signal 17 } 
	{ trotters14_q1 sc_in sc_lv 16 signal 17 } 
	{ trotters15_address0 sc_out sc_lv 4 signal 18 } 
	{ trotters15_ce0 sc_out sc_logic 1 signal 18 } 
	{ trotters15_q0 sc_in sc_lv 16 signal 18 } 
	{ trotters15_address1 sc_out sc_lv 4 signal 18 } 
	{ trotters15_ce1 sc_out sc_logic 1 signal 18 } 
	{ trotters15_q1 sc_in sc_lv 16 signal 18 } 
	{ dH_read sc_in sc_lv 32 signal 19 } 
	{ JcoupLocal_address0 sc_out sc_lv 4 signal 20 } 
	{ JcoupLocal_ce0 sc_out sc_logic 1 signal 20 } 
	{ JcoupLocal_q0 sc_in sc_lv 512 signal 20 } 
	{ JcoupLocal_address1 sc_out sc_lv 4 signal 20 } 
	{ JcoupLocal_ce1 sc_out sc_logic 1 signal 20 } 
	{ JcoupLocal_q1 sc_in sc_lv 512 signal 20 } 
	{ JcoupLocal16_address0 sc_out sc_lv 4 signal 21 } 
	{ JcoupLocal16_ce0 sc_out sc_logic 1 signal 21 } 
	{ JcoupLocal16_q0 sc_in sc_lv 512 signal 21 } 
	{ JcoupLocal16_address1 sc_out sc_lv 4 signal 21 } 
	{ JcoupLocal16_ce1 sc_out sc_logic 1 signal 21 } 
	{ JcoupLocal16_q1 sc_in sc_lv 512 signal 21 } 
	{ JcoupLocal17_address0 sc_out sc_lv 4 signal 22 } 
	{ JcoupLocal17_ce0 sc_out sc_logic 1 signal 22 } 
	{ JcoupLocal17_q0 sc_in sc_lv 512 signal 22 } 
	{ JcoupLocal17_address1 sc_out sc_lv 4 signal 22 } 
	{ JcoupLocal17_ce1 sc_out sc_logic 1 signal 22 } 
	{ JcoupLocal17_q1 sc_in sc_lv 512 signal 22 } 
	{ JcoupLocal18_address0 sc_out sc_lv 4 signal 23 } 
	{ JcoupLocal18_ce0 sc_out sc_logic 1 signal 23 } 
	{ JcoupLocal18_q0 sc_in sc_lv 512 signal 23 } 
	{ JcoupLocal18_address1 sc_out sc_lv 4 signal 23 } 
	{ JcoupLocal18_ce1 sc_out sc_logic 1 signal 23 } 
	{ JcoupLocal18_q1 sc_in sc_lv 512 signal 23 } 
	{ JcoupLocal19_address0 sc_out sc_lv 4 signal 24 } 
	{ JcoupLocal19_ce0 sc_out sc_logic 1 signal 24 } 
	{ JcoupLocal19_q0 sc_in sc_lv 512 signal 24 } 
	{ JcoupLocal19_address1 sc_out sc_lv 4 signal 24 } 
	{ JcoupLocal19_ce1 sc_out sc_logic 1 signal 24 } 
	{ JcoupLocal19_q1 sc_in sc_lv 512 signal 24 } 
	{ JcoupLocal20_address0 sc_out sc_lv 4 signal 25 } 
	{ JcoupLocal20_ce0 sc_out sc_logic 1 signal 25 } 
	{ JcoupLocal20_q0 sc_in sc_lv 512 signal 25 } 
	{ JcoupLocal20_address1 sc_out sc_lv 4 signal 25 } 
	{ JcoupLocal20_ce1 sc_out sc_logic 1 signal 25 } 
	{ JcoupLocal20_q1 sc_in sc_lv 512 signal 25 } 
	{ JcoupLocal21_address0 sc_out sc_lv 4 signal 26 } 
	{ JcoupLocal21_ce0 sc_out sc_logic 1 signal 26 } 
	{ JcoupLocal21_q0 sc_in sc_lv 512 signal 26 } 
	{ JcoupLocal21_address1 sc_out sc_lv 4 signal 26 } 
	{ JcoupLocal21_ce1 sc_out sc_logic 1 signal 26 } 
	{ JcoupLocal21_q1 sc_in sc_lv 512 signal 26 } 
	{ JcoupLocal22_address0 sc_out sc_lv 4 signal 27 } 
	{ JcoupLocal22_ce0 sc_out sc_logic 1 signal 27 } 
	{ JcoupLocal22_q0 sc_in sc_lv 512 signal 27 } 
	{ JcoupLocal22_address1 sc_out sc_lv 4 signal 27 } 
	{ JcoupLocal22_ce1 sc_out sc_logic 1 signal 27 } 
	{ JcoupLocal22_q1 sc_in sc_lv 512 signal 27 } 
	{ JcoupLocal23_address0 sc_out sc_lv 4 signal 28 } 
	{ JcoupLocal23_ce0 sc_out sc_logic 1 signal 28 } 
	{ JcoupLocal23_q0 sc_in sc_lv 512 signal 28 } 
	{ JcoupLocal23_address1 sc_out sc_lv 4 signal 28 } 
	{ JcoupLocal23_ce1 sc_out sc_logic 1 signal 28 } 
	{ JcoupLocal23_q1 sc_in sc_lv 512 signal 28 } 
	{ JcoupLocal24_address0 sc_out sc_lv 4 signal 29 } 
	{ JcoupLocal24_ce0 sc_out sc_logic 1 signal 29 } 
	{ JcoupLocal24_q0 sc_in sc_lv 512 signal 29 } 
	{ JcoupLocal24_address1 sc_out sc_lv 4 signal 29 } 
	{ JcoupLocal24_ce1 sc_out sc_logic 1 signal 29 } 
	{ JcoupLocal24_q1 sc_in sc_lv 512 signal 29 } 
	{ JcoupLocal25_address0 sc_out sc_lv 4 signal 30 } 
	{ JcoupLocal25_ce0 sc_out sc_logic 1 signal 30 } 
	{ JcoupLocal25_q0 sc_in sc_lv 512 signal 30 } 
	{ JcoupLocal25_address1 sc_out sc_lv 4 signal 30 } 
	{ JcoupLocal25_ce1 sc_out sc_logic 1 signal 30 } 
	{ JcoupLocal25_q1 sc_in sc_lv 512 signal 30 } 
	{ JcoupLocal26_address0 sc_out sc_lv 4 signal 31 } 
	{ JcoupLocal26_ce0 sc_out sc_logic 1 signal 31 } 
	{ JcoupLocal26_q0 sc_in sc_lv 512 signal 31 } 
	{ JcoupLocal26_address1 sc_out sc_lv 4 signal 31 } 
	{ JcoupLocal26_ce1 sc_out sc_logic 1 signal 31 } 
	{ JcoupLocal26_q1 sc_in sc_lv 512 signal 31 } 
	{ JcoupLocal27_address0 sc_out sc_lv 4 signal 32 } 
	{ JcoupLocal27_ce0 sc_out sc_logic 1 signal 32 } 
	{ JcoupLocal27_q0 sc_in sc_lv 512 signal 32 } 
	{ JcoupLocal27_address1 sc_out sc_lv 4 signal 32 } 
	{ JcoupLocal27_ce1 sc_out sc_logic 1 signal 32 } 
	{ JcoupLocal27_q1 sc_in sc_lv 512 signal 32 } 
	{ JcoupLocal28_address0 sc_out sc_lv 4 signal 33 } 
	{ JcoupLocal28_ce0 sc_out sc_logic 1 signal 33 } 
	{ JcoupLocal28_q0 sc_in sc_lv 512 signal 33 } 
	{ JcoupLocal28_address1 sc_out sc_lv 4 signal 33 } 
	{ JcoupLocal28_ce1 sc_out sc_logic 1 signal 33 } 
	{ JcoupLocal28_q1 sc_in sc_lv 512 signal 33 } 
	{ JcoupLocal29_address0 sc_out sc_lv 4 signal 34 } 
	{ JcoupLocal29_ce0 sc_out sc_logic 1 signal 34 } 
	{ JcoupLocal29_q0 sc_in sc_lv 512 signal 34 } 
	{ JcoupLocal29_address1 sc_out sc_lv 4 signal 34 } 
	{ JcoupLocal29_ce1 sc_out sc_logic 1 signal 34 } 
	{ JcoupLocal29_q1 sc_in sc_lv 512 signal 34 } 
	{ JcoupLocal30_address0 sc_out sc_lv 4 signal 35 } 
	{ JcoupLocal30_ce0 sc_out sc_logic 1 signal 35 } 
	{ JcoupLocal30_q0 sc_in sc_lv 512 signal 35 } 
	{ JcoupLocal30_address1 sc_out sc_lv 4 signal 35 } 
	{ JcoupLocal30_ce1 sc_out sc_logic 1 signal 35 } 
	{ JcoupLocal30_q1 sc_in sc_lv 512 signal 35 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "t_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "t_offset", "role": "default" }} , 
 	{ "name": "stage", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "stage", "role": "default" }} , 
 	{ "name": "packOfst", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packOfst", "role": "default" }} , 
 	{ "name": "trotters_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters", "role": "address0" }} , 
 	{ "name": "trotters_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters", "role": "ce0" }} , 
 	{ "name": "trotters_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters", "role": "q0" }} , 
 	{ "name": "trotters_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters", "role": "address1" }} , 
 	{ "name": "trotters_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters", "role": "ce1" }} , 
 	{ "name": "trotters_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters", "role": "q1" }} , 
 	{ "name": "trotters1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters1", "role": "address0" }} , 
 	{ "name": "trotters1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters1", "role": "ce0" }} , 
 	{ "name": "trotters1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters1", "role": "q0" }} , 
 	{ "name": "trotters1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters1", "role": "address1" }} , 
 	{ "name": "trotters1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters1", "role": "ce1" }} , 
 	{ "name": "trotters1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters1", "role": "q1" }} , 
 	{ "name": "trotters2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters2", "role": "address0" }} , 
 	{ "name": "trotters2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters2", "role": "ce0" }} , 
 	{ "name": "trotters2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters2", "role": "q0" }} , 
 	{ "name": "trotters2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters2", "role": "address1" }} , 
 	{ "name": "trotters2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters2", "role": "ce1" }} , 
 	{ "name": "trotters2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters2", "role": "q1" }} , 
 	{ "name": "trotters3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters3", "role": "address0" }} , 
 	{ "name": "trotters3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters3", "role": "ce0" }} , 
 	{ "name": "trotters3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters3", "role": "q0" }} , 
 	{ "name": "trotters3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters3", "role": "address1" }} , 
 	{ "name": "trotters3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters3", "role": "ce1" }} , 
 	{ "name": "trotters3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters3", "role": "q1" }} , 
 	{ "name": "trotters4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters4", "role": "address0" }} , 
 	{ "name": "trotters4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters4", "role": "ce0" }} , 
 	{ "name": "trotters4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters4", "role": "q0" }} , 
 	{ "name": "trotters4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters4", "role": "address1" }} , 
 	{ "name": "trotters4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters4", "role": "ce1" }} , 
 	{ "name": "trotters4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters4", "role": "q1" }} , 
 	{ "name": "trotters5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters5", "role": "address0" }} , 
 	{ "name": "trotters5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters5", "role": "ce0" }} , 
 	{ "name": "trotters5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters5", "role": "q0" }} , 
 	{ "name": "trotters5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters5", "role": "address1" }} , 
 	{ "name": "trotters5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters5", "role": "ce1" }} , 
 	{ "name": "trotters5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters5", "role": "q1" }} , 
 	{ "name": "trotters6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters6", "role": "address0" }} , 
 	{ "name": "trotters6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters6", "role": "ce0" }} , 
 	{ "name": "trotters6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters6", "role": "q0" }} , 
 	{ "name": "trotters6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters6", "role": "address1" }} , 
 	{ "name": "trotters6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters6", "role": "ce1" }} , 
 	{ "name": "trotters6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters6", "role": "q1" }} , 
 	{ "name": "trotters7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters7", "role": "address0" }} , 
 	{ "name": "trotters7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters7", "role": "ce0" }} , 
 	{ "name": "trotters7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters7", "role": "q0" }} , 
 	{ "name": "trotters7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters7", "role": "address1" }} , 
 	{ "name": "trotters7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters7", "role": "ce1" }} , 
 	{ "name": "trotters7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters7", "role": "q1" }} , 
 	{ "name": "trotters8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters8", "role": "address0" }} , 
 	{ "name": "trotters8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters8", "role": "ce0" }} , 
 	{ "name": "trotters8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters8", "role": "q0" }} , 
 	{ "name": "trotters8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters8", "role": "address1" }} , 
 	{ "name": "trotters8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters8", "role": "ce1" }} , 
 	{ "name": "trotters8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters8", "role": "q1" }} , 
 	{ "name": "trotters9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters9", "role": "address0" }} , 
 	{ "name": "trotters9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters9", "role": "ce0" }} , 
 	{ "name": "trotters9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters9", "role": "q0" }} , 
 	{ "name": "trotters9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters9", "role": "address1" }} , 
 	{ "name": "trotters9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters9", "role": "ce1" }} , 
 	{ "name": "trotters9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters9", "role": "q1" }} , 
 	{ "name": "trotters10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters10", "role": "address0" }} , 
 	{ "name": "trotters10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters10", "role": "ce0" }} , 
 	{ "name": "trotters10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters10", "role": "q0" }} , 
 	{ "name": "trotters10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters10", "role": "address1" }} , 
 	{ "name": "trotters10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters10", "role": "ce1" }} , 
 	{ "name": "trotters10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters10", "role": "q1" }} , 
 	{ "name": "trotters11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters11", "role": "address0" }} , 
 	{ "name": "trotters11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters11", "role": "ce0" }} , 
 	{ "name": "trotters11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters11", "role": "q0" }} , 
 	{ "name": "trotters11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters11", "role": "address1" }} , 
 	{ "name": "trotters11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters11", "role": "ce1" }} , 
 	{ "name": "trotters11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters11", "role": "q1" }} , 
 	{ "name": "trotters12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters12", "role": "address0" }} , 
 	{ "name": "trotters12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters12", "role": "ce0" }} , 
 	{ "name": "trotters12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters12", "role": "q0" }} , 
 	{ "name": "trotters12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters12", "role": "address1" }} , 
 	{ "name": "trotters12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters12", "role": "ce1" }} , 
 	{ "name": "trotters12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters12", "role": "q1" }} , 
 	{ "name": "trotters13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters13", "role": "address0" }} , 
 	{ "name": "trotters13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters13", "role": "ce0" }} , 
 	{ "name": "trotters13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters13", "role": "q0" }} , 
 	{ "name": "trotters13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters13", "role": "address1" }} , 
 	{ "name": "trotters13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters13", "role": "ce1" }} , 
 	{ "name": "trotters13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters13", "role": "q1" }} , 
 	{ "name": "trotters14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters14", "role": "address0" }} , 
 	{ "name": "trotters14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters14", "role": "ce0" }} , 
 	{ "name": "trotters14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters14", "role": "q0" }} , 
 	{ "name": "trotters14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters14", "role": "address1" }} , 
 	{ "name": "trotters14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters14", "role": "ce1" }} , 
 	{ "name": "trotters14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters14", "role": "q1" }} , 
 	{ "name": "trotters15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters15", "role": "address0" }} , 
 	{ "name": "trotters15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters15", "role": "ce0" }} , 
 	{ "name": "trotters15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters15", "role": "q0" }} , 
 	{ "name": "trotters15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters15", "role": "address1" }} , 
 	{ "name": "trotters15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters15", "role": "ce1" }} , 
 	{ "name": "trotters15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters15", "role": "q1" }} , 
 	{ "name": "dH_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_read", "role": "default" }} , 
 	{ "name": "JcoupLocal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal", "role": "address0" }} , 
 	{ "name": "JcoupLocal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal", "role": "q0" }} , 
 	{ "name": "JcoupLocal_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal", "role": "address1" }} , 
 	{ "name": "JcoupLocal_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal", "role": "q1" }} , 
 	{ "name": "JcoupLocal16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal16", "role": "address0" }} , 
 	{ "name": "JcoupLocal16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal16", "role": "ce0" }} , 
 	{ "name": "JcoupLocal16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal16", "role": "q0" }} , 
 	{ "name": "JcoupLocal16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal16", "role": "address1" }} , 
 	{ "name": "JcoupLocal16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal16", "role": "ce1" }} , 
 	{ "name": "JcoupLocal16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal16", "role": "q1" }} , 
 	{ "name": "JcoupLocal17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal17", "role": "address0" }} , 
 	{ "name": "JcoupLocal17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal17", "role": "ce0" }} , 
 	{ "name": "JcoupLocal17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal17", "role": "q0" }} , 
 	{ "name": "JcoupLocal17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal17", "role": "address1" }} , 
 	{ "name": "JcoupLocal17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal17", "role": "ce1" }} , 
 	{ "name": "JcoupLocal17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal17", "role": "q1" }} , 
 	{ "name": "JcoupLocal18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal18", "role": "address0" }} , 
 	{ "name": "JcoupLocal18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal18", "role": "ce0" }} , 
 	{ "name": "JcoupLocal18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal18", "role": "q0" }} , 
 	{ "name": "JcoupLocal18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal18", "role": "address1" }} , 
 	{ "name": "JcoupLocal18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal18", "role": "ce1" }} , 
 	{ "name": "JcoupLocal18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal18", "role": "q1" }} , 
 	{ "name": "JcoupLocal19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal19", "role": "address0" }} , 
 	{ "name": "JcoupLocal19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal19", "role": "ce0" }} , 
 	{ "name": "JcoupLocal19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal19", "role": "q0" }} , 
 	{ "name": "JcoupLocal19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal19", "role": "address1" }} , 
 	{ "name": "JcoupLocal19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal19", "role": "ce1" }} , 
 	{ "name": "JcoupLocal19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal19", "role": "q1" }} , 
 	{ "name": "JcoupLocal20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal20", "role": "address0" }} , 
 	{ "name": "JcoupLocal20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal20", "role": "ce0" }} , 
 	{ "name": "JcoupLocal20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal20", "role": "q0" }} , 
 	{ "name": "JcoupLocal20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal20", "role": "address1" }} , 
 	{ "name": "JcoupLocal20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal20", "role": "ce1" }} , 
 	{ "name": "JcoupLocal20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal20", "role": "q1" }} , 
 	{ "name": "JcoupLocal21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal21", "role": "address0" }} , 
 	{ "name": "JcoupLocal21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal21", "role": "ce0" }} , 
 	{ "name": "JcoupLocal21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal21", "role": "q0" }} , 
 	{ "name": "JcoupLocal21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal21", "role": "address1" }} , 
 	{ "name": "JcoupLocal21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal21", "role": "ce1" }} , 
 	{ "name": "JcoupLocal21_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal21", "role": "q1" }} , 
 	{ "name": "JcoupLocal22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal22", "role": "address0" }} , 
 	{ "name": "JcoupLocal22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal22", "role": "ce0" }} , 
 	{ "name": "JcoupLocal22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal22", "role": "q0" }} , 
 	{ "name": "JcoupLocal22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal22", "role": "address1" }} , 
 	{ "name": "JcoupLocal22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal22", "role": "ce1" }} , 
 	{ "name": "JcoupLocal22_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal22", "role": "q1" }} , 
 	{ "name": "JcoupLocal23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal23", "role": "address0" }} , 
 	{ "name": "JcoupLocal23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal23", "role": "ce0" }} , 
 	{ "name": "JcoupLocal23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal23", "role": "q0" }} , 
 	{ "name": "JcoupLocal23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal23", "role": "address1" }} , 
 	{ "name": "JcoupLocal23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal23", "role": "ce1" }} , 
 	{ "name": "JcoupLocal23_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal23", "role": "q1" }} , 
 	{ "name": "JcoupLocal24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal24", "role": "address0" }} , 
 	{ "name": "JcoupLocal24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal24", "role": "ce0" }} , 
 	{ "name": "JcoupLocal24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal24", "role": "q0" }} , 
 	{ "name": "JcoupLocal24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal24", "role": "address1" }} , 
 	{ "name": "JcoupLocal24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal24", "role": "ce1" }} , 
 	{ "name": "JcoupLocal24_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal24", "role": "q1" }} , 
 	{ "name": "JcoupLocal25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal25", "role": "address0" }} , 
 	{ "name": "JcoupLocal25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal25", "role": "ce0" }} , 
 	{ "name": "JcoupLocal25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal25", "role": "q0" }} , 
 	{ "name": "JcoupLocal25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal25", "role": "address1" }} , 
 	{ "name": "JcoupLocal25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal25", "role": "ce1" }} , 
 	{ "name": "JcoupLocal25_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal25", "role": "q1" }} , 
 	{ "name": "JcoupLocal26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal26", "role": "address0" }} , 
 	{ "name": "JcoupLocal26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal26", "role": "ce0" }} , 
 	{ "name": "JcoupLocal26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal26", "role": "q0" }} , 
 	{ "name": "JcoupLocal26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal26", "role": "address1" }} , 
 	{ "name": "JcoupLocal26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal26", "role": "ce1" }} , 
 	{ "name": "JcoupLocal26_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal26", "role": "q1" }} , 
 	{ "name": "JcoupLocal27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal27", "role": "address0" }} , 
 	{ "name": "JcoupLocal27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal27", "role": "ce0" }} , 
 	{ "name": "JcoupLocal27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal27", "role": "q0" }} , 
 	{ "name": "JcoupLocal27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal27", "role": "address1" }} , 
 	{ "name": "JcoupLocal27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal27", "role": "ce1" }} , 
 	{ "name": "JcoupLocal27_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal27", "role": "q1" }} , 
 	{ "name": "JcoupLocal28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal28", "role": "address0" }} , 
 	{ "name": "JcoupLocal28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal28", "role": "ce0" }} , 
 	{ "name": "JcoupLocal28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal28", "role": "q0" }} , 
 	{ "name": "JcoupLocal28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal28", "role": "address1" }} , 
 	{ "name": "JcoupLocal28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal28", "role": "ce1" }} , 
 	{ "name": "JcoupLocal28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal28", "role": "q1" }} , 
 	{ "name": "JcoupLocal29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal29", "role": "address0" }} , 
 	{ "name": "JcoupLocal29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal29", "role": "ce0" }} , 
 	{ "name": "JcoupLocal29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal29", "role": "q0" }} , 
 	{ "name": "JcoupLocal29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal29", "role": "address1" }} , 
 	{ "name": "JcoupLocal29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal29", "role": "ce1" }} , 
 	{ "name": "JcoupLocal29_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal29", "role": "q1" }} , 
 	{ "name": "JcoupLocal30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal30", "role": "address0" }} , 
 	{ "name": "JcoupLocal30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal30", "role": "ce0" }} , 
 	{ "name": "JcoupLocal30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal30", "role": "q0" }} , 
 	{ "name": "JcoupLocal30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal30", "role": "address1" }} , 
 	{ "name": "JcoupLocal30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal30", "role": "ce1" }} , 
 	{ "name": "JcoupLocal30_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal30", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96"],
		"CDFG" : "TrotterUnit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "72", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "packOfst", "Type" : "None", "Direction" : "I"},
			{"Name" : "trotters", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dH_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "JcoupLocal", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal30", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U213", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U214", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U215", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U216", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U217", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U218", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U219", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U220", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U221", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U222", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U223", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U224", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U225", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U226", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U227", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U228", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U229", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U230", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U231", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U232", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U233", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U234", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U235", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U236", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U237", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U238", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U239", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U240", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U241", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U242", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U243", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U244", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U245", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U246", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U247", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U248", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U249", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U250", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U251", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U252", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U253", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U254", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U255", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U256", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U257", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U258", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U259", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U260", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U261", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U262", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U263", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U264", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U265", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U266", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U267", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U268", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U269", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U270", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U271", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U272", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U273", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U274", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U275", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U276", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U277", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U278", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U279", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U280", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U281", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U282", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U283", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U284", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U285", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U286", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U287", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U288", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U289", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U290", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U291", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U292", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U293", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U294", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U295", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U296", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U297", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U298", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U299", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U300", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U301", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U302", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U303", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U304", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U305", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U306", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U307", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_512_1_1_U308", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TrotterUnit {
		t_offset {Type I LastRead 7 FirstWrite -1}
		stage {Type I LastRead 7 FirstWrite -1}
		packOfst {Type I LastRead 0 FirstWrite -1}
		trotters {Type I LastRead 8 FirstWrite -1}
		trotters1 {Type I LastRead 8 FirstWrite -1}
		trotters2 {Type I LastRead 8 FirstWrite -1}
		trotters3 {Type I LastRead 8 FirstWrite -1}
		trotters4 {Type I LastRead 8 FirstWrite -1}
		trotters5 {Type I LastRead 8 FirstWrite -1}
		trotters6 {Type I LastRead 8 FirstWrite -1}
		trotters7 {Type I LastRead 8 FirstWrite -1}
		trotters8 {Type I LastRead 8 FirstWrite -1}
		trotters9 {Type I LastRead 8 FirstWrite -1}
		trotters10 {Type I LastRead 8 FirstWrite -1}
		trotters11 {Type I LastRead 8 FirstWrite -1}
		trotters12 {Type I LastRead 8 FirstWrite -1}
		trotters13 {Type I LastRead 8 FirstWrite -1}
		trotters14 {Type I LastRead 8 FirstWrite -1}
		trotters15 {Type I LastRead 8 FirstWrite -1}
		dH_read {Type I LastRead 7 FirstWrite -1}
		JcoupLocal {Type I LastRead 8 FirstWrite -1}
		JcoupLocal16 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal17 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal18 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal19 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal20 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal21 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal22 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal23 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal24 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal25 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal26 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal27 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal28 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal29 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal30 {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "72", "Max" : "72"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t_offset { ap_none {  { t_offset in_data 0 2 } } }
	stage { ap_none {  { stage in_data 0 13 } } }
	packOfst { ap_none {  { packOfst in_data 0 8 } } }
	trotters { ap_memory {  { trotters_address0 mem_address 1 4 }  { trotters_ce0 mem_ce 1 1 }  { trotters_q0 mem_dout 0 16 }  { trotters_address1 MemPortADDR2 1 4 }  { trotters_ce1 MemPortCE2 1 1 }  { trotters_q1 MemPortDOUT2 0 16 } } }
	trotters1 { ap_memory {  { trotters1_address0 mem_address 1 4 }  { trotters1_ce0 mem_ce 1 1 }  { trotters1_q0 mem_dout 0 16 }  { trotters1_address1 MemPortADDR2 1 4 }  { trotters1_ce1 MemPortCE2 1 1 }  { trotters1_q1 MemPortDOUT2 0 16 } } }
	trotters2 { ap_memory {  { trotters2_address0 mem_address 1 4 }  { trotters2_ce0 mem_ce 1 1 }  { trotters2_q0 mem_dout 0 16 }  { trotters2_address1 MemPortADDR2 1 4 }  { trotters2_ce1 MemPortCE2 1 1 }  { trotters2_q1 MemPortDOUT2 0 16 } } }
	trotters3 { ap_memory {  { trotters3_address0 mem_address 1 4 }  { trotters3_ce0 mem_ce 1 1 }  { trotters3_q0 mem_dout 0 16 }  { trotters3_address1 MemPortADDR2 1 4 }  { trotters3_ce1 MemPortCE2 1 1 }  { trotters3_q1 MemPortDOUT2 0 16 } } }
	trotters4 { ap_memory {  { trotters4_address0 mem_address 1 4 }  { trotters4_ce0 mem_ce 1 1 }  { trotters4_q0 mem_dout 0 16 }  { trotters4_address1 MemPortADDR2 1 4 }  { trotters4_ce1 MemPortCE2 1 1 }  { trotters4_q1 MemPortDOUT2 0 16 } } }
	trotters5 { ap_memory {  { trotters5_address0 mem_address 1 4 }  { trotters5_ce0 mem_ce 1 1 }  { trotters5_q0 mem_dout 0 16 }  { trotters5_address1 MemPortADDR2 1 4 }  { trotters5_ce1 MemPortCE2 1 1 }  { trotters5_q1 MemPortDOUT2 0 16 } } }
	trotters6 { ap_memory {  { trotters6_address0 mem_address 1 4 }  { trotters6_ce0 mem_ce 1 1 }  { trotters6_q0 mem_dout 0 16 }  { trotters6_address1 MemPortADDR2 1 4 }  { trotters6_ce1 MemPortCE2 1 1 }  { trotters6_q1 MemPortDOUT2 0 16 } } }
	trotters7 { ap_memory {  { trotters7_address0 mem_address 1 4 }  { trotters7_ce0 mem_ce 1 1 }  { trotters7_q0 mem_dout 0 16 }  { trotters7_address1 MemPortADDR2 1 4 }  { trotters7_ce1 MemPortCE2 1 1 }  { trotters7_q1 MemPortDOUT2 0 16 } } }
	trotters8 { ap_memory {  { trotters8_address0 mem_address 1 4 }  { trotters8_ce0 mem_ce 1 1 }  { trotters8_q0 mem_dout 0 16 }  { trotters8_address1 MemPortADDR2 1 4 }  { trotters8_ce1 MemPortCE2 1 1 }  { trotters8_q1 MemPortDOUT2 0 16 } } }
	trotters9 { ap_memory {  { trotters9_address0 mem_address 1 4 }  { trotters9_ce0 mem_ce 1 1 }  { trotters9_q0 mem_dout 0 16 }  { trotters9_address1 MemPortADDR2 1 4 }  { trotters9_ce1 MemPortCE2 1 1 }  { trotters9_q1 MemPortDOUT2 0 16 } } }
	trotters10 { ap_memory {  { trotters10_address0 mem_address 1 4 }  { trotters10_ce0 mem_ce 1 1 }  { trotters10_q0 mem_dout 0 16 }  { trotters10_address1 MemPortADDR2 1 4 }  { trotters10_ce1 MemPortCE2 1 1 }  { trotters10_q1 MemPortDOUT2 0 16 } } }
	trotters11 { ap_memory {  { trotters11_address0 mem_address 1 4 }  { trotters11_ce0 mem_ce 1 1 }  { trotters11_q0 mem_dout 0 16 }  { trotters11_address1 MemPortADDR2 1 4 }  { trotters11_ce1 MemPortCE2 1 1 }  { trotters11_q1 MemPortDOUT2 0 16 } } }
	trotters12 { ap_memory {  { trotters12_address0 mem_address 1 4 }  { trotters12_ce0 mem_ce 1 1 }  { trotters12_q0 mem_dout 0 16 }  { trotters12_address1 MemPortADDR2 1 4 }  { trotters12_ce1 MemPortCE2 1 1 }  { trotters12_q1 MemPortDOUT2 0 16 } } }
	trotters13 { ap_memory {  { trotters13_address0 mem_address 1 4 }  { trotters13_ce0 mem_ce 1 1 }  { trotters13_q0 mem_dout 0 16 }  { trotters13_address1 MemPortADDR2 1 4 }  { trotters13_ce1 MemPortCE2 1 1 }  { trotters13_q1 MemPortDOUT2 0 16 } } }
	trotters14 { ap_memory {  { trotters14_address0 mem_address 1 4 }  { trotters14_ce0 mem_ce 1 1 }  { trotters14_q0 mem_dout 0 16 }  { trotters14_address1 MemPortADDR2 1 4 }  { trotters14_ce1 MemPortCE2 1 1 }  { trotters14_q1 MemPortDOUT2 0 16 } } }
	trotters15 { ap_memory {  { trotters15_address0 mem_address 1 4 }  { trotters15_ce0 mem_ce 1 1 }  { trotters15_q0 mem_dout 0 16 }  { trotters15_address1 MemPortADDR2 1 4 }  { trotters15_ce1 MemPortCE2 1 1 }  { trotters15_q1 MemPortDOUT2 0 16 } } }
	dH_read { ap_none {  { dH_read in_data 0 32 } } }
	JcoupLocal { ap_memory {  { JcoupLocal_address0 mem_address 1 4 }  { JcoupLocal_ce0 mem_ce 1 1 }  { JcoupLocal_q0 mem_dout 0 512 }  { JcoupLocal_address1 MemPortADDR2 1 4 }  { JcoupLocal_ce1 MemPortCE2 1 1 }  { JcoupLocal_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal16 { ap_memory {  { JcoupLocal16_address0 mem_address 1 4 }  { JcoupLocal16_ce0 mem_ce 1 1 }  { JcoupLocal16_q0 mem_dout 0 512 }  { JcoupLocal16_address1 MemPortADDR2 1 4 }  { JcoupLocal16_ce1 MemPortCE2 1 1 }  { JcoupLocal16_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal17 { ap_memory {  { JcoupLocal17_address0 mem_address 1 4 }  { JcoupLocal17_ce0 mem_ce 1 1 }  { JcoupLocal17_q0 mem_dout 0 512 }  { JcoupLocal17_address1 MemPortADDR2 1 4 }  { JcoupLocal17_ce1 MemPortCE2 1 1 }  { JcoupLocal17_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal18 { ap_memory {  { JcoupLocal18_address0 mem_address 1 4 }  { JcoupLocal18_ce0 mem_ce 1 1 }  { JcoupLocal18_q0 mem_dout 0 512 }  { JcoupLocal18_address1 MemPortADDR2 1 4 }  { JcoupLocal18_ce1 MemPortCE2 1 1 }  { JcoupLocal18_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal19 { ap_memory {  { JcoupLocal19_address0 mem_address 1 4 }  { JcoupLocal19_ce0 mem_ce 1 1 }  { JcoupLocal19_q0 mem_dout 0 512 }  { JcoupLocal19_address1 MemPortADDR2 1 4 }  { JcoupLocal19_ce1 MemPortCE2 1 1 }  { JcoupLocal19_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal20 { ap_memory {  { JcoupLocal20_address0 mem_address 1 4 }  { JcoupLocal20_ce0 mem_ce 1 1 }  { JcoupLocal20_q0 mem_dout 0 512 }  { JcoupLocal20_address1 MemPortADDR2 1 4 }  { JcoupLocal20_ce1 MemPortCE2 1 1 }  { JcoupLocal20_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal21 { ap_memory {  { JcoupLocal21_address0 mem_address 1 4 }  { JcoupLocal21_ce0 mem_ce 1 1 }  { JcoupLocal21_q0 mem_dout 0 512 }  { JcoupLocal21_address1 MemPortADDR2 1 4 }  { JcoupLocal21_ce1 MemPortCE2 1 1 }  { JcoupLocal21_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal22 { ap_memory {  { JcoupLocal22_address0 mem_address 1 4 }  { JcoupLocal22_ce0 mem_ce 1 1 }  { JcoupLocal22_q0 mem_dout 0 512 }  { JcoupLocal22_address1 MemPortADDR2 1 4 }  { JcoupLocal22_ce1 MemPortCE2 1 1 }  { JcoupLocal22_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal23 { ap_memory {  { JcoupLocal23_address0 mem_address 1 4 }  { JcoupLocal23_ce0 mem_ce 1 1 }  { JcoupLocal23_q0 mem_dout 0 512 }  { JcoupLocal23_address1 MemPortADDR2 1 4 }  { JcoupLocal23_ce1 MemPortCE2 1 1 }  { JcoupLocal23_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal24 { ap_memory {  { JcoupLocal24_address0 mem_address 1 4 }  { JcoupLocal24_ce0 mem_ce 1 1 }  { JcoupLocal24_q0 mem_dout 0 512 }  { JcoupLocal24_address1 MemPortADDR2 1 4 }  { JcoupLocal24_ce1 MemPortCE2 1 1 }  { JcoupLocal24_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal25 { ap_memory {  { JcoupLocal25_address0 mem_address 1 4 }  { JcoupLocal25_ce0 mem_ce 1 1 }  { JcoupLocal25_q0 mem_dout 0 512 }  { JcoupLocal25_address1 MemPortADDR2 1 4 }  { JcoupLocal25_ce1 MemPortCE2 1 1 }  { JcoupLocal25_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal26 { ap_memory {  { JcoupLocal26_address0 mem_address 1 4 }  { JcoupLocal26_ce0 mem_ce 1 1 }  { JcoupLocal26_q0 mem_dout 0 512 }  { JcoupLocal26_address1 MemPortADDR2 1 4 }  { JcoupLocal26_ce1 MemPortCE2 1 1 }  { JcoupLocal26_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal27 { ap_memory {  { JcoupLocal27_address0 mem_address 1 4 }  { JcoupLocal27_ce0 mem_ce 1 1 }  { JcoupLocal27_q0 mem_dout 0 512 }  { JcoupLocal27_address1 MemPortADDR2 1 4 }  { JcoupLocal27_ce1 MemPortCE2 1 1 }  { JcoupLocal27_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal28 { ap_memory {  { JcoupLocal28_address0 mem_address 1 4 }  { JcoupLocal28_ce0 mem_ce 1 1 }  { JcoupLocal28_q0 mem_dout 0 512 }  { JcoupLocal28_address1 MemPortADDR2 1 4 }  { JcoupLocal28_ce1 MemPortCE2 1 1 }  { JcoupLocal28_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal29 { ap_memory {  { JcoupLocal29_address0 mem_address 1 4 }  { JcoupLocal29_ce0 mem_ce 1 1 }  { JcoupLocal29_q0 mem_dout 0 512 }  { JcoupLocal29_address1 MemPortADDR2 1 4 }  { JcoupLocal29_ce1 MemPortCE2 1 1 }  { JcoupLocal29_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal30 { ap_memory {  { JcoupLocal30_address0 mem_address 1 4 }  { JcoupLocal30_ce0 mem_ce 1 1 }  { JcoupLocal30_q0 mem_dout 0 512 }  { JcoupLocal30_address1 MemPortADDR2 1 4 }  { JcoupLocal30_ce1 MemPortCE2 1 1 }  { JcoupLocal30_q1 MemPortDOUT2 0 512 } } }
}
