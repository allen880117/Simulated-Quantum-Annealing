set moduleName TrotterUnitFinal
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {TrotterUnitFinal}
set C_modelType { void 0 }
set C_modelArgList {
	{ t_offset int 2 regular  }
	{ stage int 13 regular  }
	{ iPack int 8 regular  }
	{ iSpin int 32 regular  }
	{ trotters int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters1 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters2 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters3 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters4 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters5 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters6 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters7 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters8 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters9 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters10 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters11 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters12 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters13 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters14 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ trotters15 int 16 regular {array 16 { 2 3 } 1 1 }  }
	{ dH float 32 regular  }
	{ upSpin int 1 regular  }
	{ downSpin int 1 regular  }
	{ Beta float 32 regular  }
	{ dHTunnel float 32 regular  }
	{ logRandNumber float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stage", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "iPack", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "iSpin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trotters", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters8", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters9", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters10", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters11", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters12", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters13", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters14", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "trotters15", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "dH", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "upSpin", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "downSpin", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Beta", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dHTunnel", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "logRandNumber", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 96
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_offset sc_in sc_lv 2 signal 0 } 
	{ stage sc_in sc_lv 13 signal 1 } 
	{ iPack sc_in sc_lv 8 signal 2 } 
	{ iSpin sc_in sc_lv 32 signal 3 } 
	{ trotters_address0 sc_out sc_lv 4 signal 4 } 
	{ trotters_ce0 sc_out sc_logic 1 signal 4 } 
	{ trotters_we0 sc_out sc_logic 1 signal 4 } 
	{ trotters_d0 sc_out sc_lv 16 signal 4 } 
	{ trotters_q0 sc_in sc_lv 16 signal 4 } 
	{ trotters1_address0 sc_out sc_lv 4 signal 5 } 
	{ trotters1_ce0 sc_out sc_logic 1 signal 5 } 
	{ trotters1_we0 sc_out sc_logic 1 signal 5 } 
	{ trotters1_d0 sc_out sc_lv 16 signal 5 } 
	{ trotters1_q0 sc_in sc_lv 16 signal 5 } 
	{ trotters2_address0 sc_out sc_lv 4 signal 6 } 
	{ trotters2_ce0 sc_out sc_logic 1 signal 6 } 
	{ trotters2_we0 sc_out sc_logic 1 signal 6 } 
	{ trotters2_d0 sc_out sc_lv 16 signal 6 } 
	{ trotters2_q0 sc_in sc_lv 16 signal 6 } 
	{ trotters3_address0 sc_out sc_lv 4 signal 7 } 
	{ trotters3_ce0 sc_out sc_logic 1 signal 7 } 
	{ trotters3_we0 sc_out sc_logic 1 signal 7 } 
	{ trotters3_d0 sc_out sc_lv 16 signal 7 } 
	{ trotters3_q0 sc_in sc_lv 16 signal 7 } 
	{ trotters4_address0 sc_out sc_lv 4 signal 8 } 
	{ trotters4_ce0 sc_out sc_logic 1 signal 8 } 
	{ trotters4_we0 sc_out sc_logic 1 signal 8 } 
	{ trotters4_d0 sc_out sc_lv 16 signal 8 } 
	{ trotters4_q0 sc_in sc_lv 16 signal 8 } 
	{ trotters5_address0 sc_out sc_lv 4 signal 9 } 
	{ trotters5_ce0 sc_out sc_logic 1 signal 9 } 
	{ trotters5_we0 sc_out sc_logic 1 signal 9 } 
	{ trotters5_d0 sc_out sc_lv 16 signal 9 } 
	{ trotters5_q0 sc_in sc_lv 16 signal 9 } 
	{ trotters6_address0 sc_out sc_lv 4 signal 10 } 
	{ trotters6_ce0 sc_out sc_logic 1 signal 10 } 
	{ trotters6_we0 sc_out sc_logic 1 signal 10 } 
	{ trotters6_d0 sc_out sc_lv 16 signal 10 } 
	{ trotters6_q0 sc_in sc_lv 16 signal 10 } 
	{ trotters7_address0 sc_out sc_lv 4 signal 11 } 
	{ trotters7_ce0 sc_out sc_logic 1 signal 11 } 
	{ trotters7_we0 sc_out sc_logic 1 signal 11 } 
	{ trotters7_d0 sc_out sc_lv 16 signal 11 } 
	{ trotters7_q0 sc_in sc_lv 16 signal 11 } 
	{ trotters8_address0 sc_out sc_lv 4 signal 12 } 
	{ trotters8_ce0 sc_out sc_logic 1 signal 12 } 
	{ trotters8_we0 sc_out sc_logic 1 signal 12 } 
	{ trotters8_d0 sc_out sc_lv 16 signal 12 } 
	{ trotters8_q0 sc_in sc_lv 16 signal 12 } 
	{ trotters9_address0 sc_out sc_lv 4 signal 13 } 
	{ trotters9_ce0 sc_out sc_logic 1 signal 13 } 
	{ trotters9_we0 sc_out sc_logic 1 signal 13 } 
	{ trotters9_d0 sc_out sc_lv 16 signal 13 } 
	{ trotters9_q0 sc_in sc_lv 16 signal 13 } 
	{ trotters10_address0 sc_out sc_lv 4 signal 14 } 
	{ trotters10_ce0 sc_out sc_logic 1 signal 14 } 
	{ trotters10_we0 sc_out sc_logic 1 signal 14 } 
	{ trotters10_d0 sc_out sc_lv 16 signal 14 } 
	{ trotters10_q0 sc_in sc_lv 16 signal 14 } 
	{ trotters11_address0 sc_out sc_lv 4 signal 15 } 
	{ trotters11_ce0 sc_out sc_logic 1 signal 15 } 
	{ trotters11_we0 sc_out sc_logic 1 signal 15 } 
	{ trotters11_d0 sc_out sc_lv 16 signal 15 } 
	{ trotters11_q0 sc_in sc_lv 16 signal 15 } 
	{ trotters12_address0 sc_out sc_lv 4 signal 16 } 
	{ trotters12_ce0 sc_out sc_logic 1 signal 16 } 
	{ trotters12_we0 sc_out sc_logic 1 signal 16 } 
	{ trotters12_d0 sc_out sc_lv 16 signal 16 } 
	{ trotters12_q0 sc_in sc_lv 16 signal 16 } 
	{ trotters13_address0 sc_out sc_lv 4 signal 17 } 
	{ trotters13_ce0 sc_out sc_logic 1 signal 17 } 
	{ trotters13_we0 sc_out sc_logic 1 signal 17 } 
	{ trotters13_d0 sc_out sc_lv 16 signal 17 } 
	{ trotters13_q0 sc_in sc_lv 16 signal 17 } 
	{ trotters14_address0 sc_out sc_lv 4 signal 18 } 
	{ trotters14_ce0 sc_out sc_logic 1 signal 18 } 
	{ trotters14_we0 sc_out sc_logic 1 signal 18 } 
	{ trotters14_d0 sc_out sc_lv 16 signal 18 } 
	{ trotters14_q0 sc_in sc_lv 16 signal 18 } 
	{ trotters15_address0 sc_out sc_lv 4 signal 19 } 
	{ trotters15_ce0 sc_out sc_logic 1 signal 19 } 
	{ trotters15_we0 sc_out sc_logic 1 signal 19 } 
	{ trotters15_d0 sc_out sc_lv 16 signal 19 } 
	{ trotters15_q0 sc_in sc_lv 16 signal 19 } 
	{ dH sc_in sc_lv 32 signal 20 } 
	{ upSpin sc_in sc_lv 1 signal 21 } 
	{ downSpin sc_in sc_lv 1 signal 22 } 
	{ Beta sc_in sc_lv 32 signal 23 } 
	{ dHTunnel sc_in sc_lv 32 signal 24 } 
	{ logRandNumber sc_in sc_lv 32 signal 25 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "t_offset", "role": "default" }} , 
 	{ "name": "stage", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "stage", "role": "default" }} , 
 	{ "name": "iPack", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "iPack", "role": "default" }} , 
 	{ "name": "iSpin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin", "role": "default" }} , 
 	{ "name": "trotters_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters", "role": "address0" }} , 
 	{ "name": "trotters_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters", "role": "ce0" }} , 
 	{ "name": "trotters_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters", "role": "we0" }} , 
 	{ "name": "trotters_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters", "role": "d0" }} , 
 	{ "name": "trotters_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters", "role": "q0" }} , 
 	{ "name": "trotters1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters1", "role": "address0" }} , 
 	{ "name": "trotters1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters1", "role": "ce0" }} , 
 	{ "name": "trotters1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters1", "role": "we0" }} , 
 	{ "name": "trotters1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters1", "role": "d0" }} , 
 	{ "name": "trotters1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters1", "role": "q0" }} , 
 	{ "name": "trotters2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters2", "role": "address0" }} , 
 	{ "name": "trotters2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters2", "role": "ce0" }} , 
 	{ "name": "trotters2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters2", "role": "we0" }} , 
 	{ "name": "trotters2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters2", "role": "d0" }} , 
 	{ "name": "trotters2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters2", "role": "q0" }} , 
 	{ "name": "trotters3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters3", "role": "address0" }} , 
 	{ "name": "trotters3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters3", "role": "ce0" }} , 
 	{ "name": "trotters3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters3", "role": "we0" }} , 
 	{ "name": "trotters3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters3", "role": "d0" }} , 
 	{ "name": "trotters3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters3", "role": "q0" }} , 
 	{ "name": "trotters4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters4", "role": "address0" }} , 
 	{ "name": "trotters4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters4", "role": "ce0" }} , 
 	{ "name": "trotters4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters4", "role": "we0" }} , 
 	{ "name": "trotters4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters4", "role": "d0" }} , 
 	{ "name": "trotters4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters4", "role": "q0" }} , 
 	{ "name": "trotters5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters5", "role": "address0" }} , 
 	{ "name": "trotters5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters5", "role": "ce0" }} , 
 	{ "name": "trotters5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters5", "role": "we0" }} , 
 	{ "name": "trotters5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters5", "role": "d0" }} , 
 	{ "name": "trotters5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters5", "role": "q0" }} , 
 	{ "name": "trotters6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters6", "role": "address0" }} , 
 	{ "name": "trotters6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters6", "role": "ce0" }} , 
 	{ "name": "trotters6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters6", "role": "we0" }} , 
 	{ "name": "trotters6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters6", "role": "d0" }} , 
 	{ "name": "trotters6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters6", "role": "q0" }} , 
 	{ "name": "trotters7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters7", "role": "address0" }} , 
 	{ "name": "trotters7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters7", "role": "ce0" }} , 
 	{ "name": "trotters7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters7", "role": "we0" }} , 
 	{ "name": "trotters7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters7", "role": "d0" }} , 
 	{ "name": "trotters7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters7", "role": "q0" }} , 
 	{ "name": "trotters8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters8", "role": "address0" }} , 
 	{ "name": "trotters8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters8", "role": "ce0" }} , 
 	{ "name": "trotters8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters8", "role": "we0" }} , 
 	{ "name": "trotters8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters8", "role": "d0" }} , 
 	{ "name": "trotters8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters8", "role": "q0" }} , 
 	{ "name": "trotters9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters9", "role": "address0" }} , 
 	{ "name": "trotters9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters9", "role": "ce0" }} , 
 	{ "name": "trotters9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters9", "role": "we0" }} , 
 	{ "name": "trotters9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters9", "role": "d0" }} , 
 	{ "name": "trotters9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters9", "role": "q0" }} , 
 	{ "name": "trotters10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters10", "role": "address0" }} , 
 	{ "name": "trotters10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters10", "role": "ce0" }} , 
 	{ "name": "trotters10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters10", "role": "we0" }} , 
 	{ "name": "trotters10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters10", "role": "d0" }} , 
 	{ "name": "trotters10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters10", "role": "q0" }} , 
 	{ "name": "trotters11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters11", "role": "address0" }} , 
 	{ "name": "trotters11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters11", "role": "ce0" }} , 
 	{ "name": "trotters11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters11", "role": "we0" }} , 
 	{ "name": "trotters11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters11", "role": "d0" }} , 
 	{ "name": "trotters11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters11", "role": "q0" }} , 
 	{ "name": "trotters12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters12", "role": "address0" }} , 
 	{ "name": "trotters12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters12", "role": "ce0" }} , 
 	{ "name": "trotters12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters12", "role": "we0" }} , 
 	{ "name": "trotters12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters12", "role": "d0" }} , 
 	{ "name": "trotters12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters12", "role": "q0" }} , 
 	{ "name": "trotters13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters13", "role": "address0" }} , 
 	{ "name": "trotters13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters13", "role": "ce0" }} , 
 	{ "name": "trotters13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters13", "role": "we0" }} , 
 	{ "name": "trotters13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters13", "role": "d0" }} , 
 	{ "name": "trotters13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters13", "role": "q0" }} , 
 	{ "name": "trotters14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters14", "role": "address0" }} , 
 	{ "name": "trotters14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters14", "role": "ce0" }} , 
 	{ "name": "trotters14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters14", "role": "we0" }} , 
 	{ "name": "trotters14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters14", "role": "d0" }} , 
 	{ "name": "trotters14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters14", "role": "q0" }} , 
 	{ "name": "trotters15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trotters15", "role": "address0" }} , 
 	{ "name": "trotters15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters15", "role": "ce0" }} , 
 	{ "name": "trotters15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters15", "role": "we0" }} , 
 	{ "name": "trotters15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters15", "role": "d0" }} , 
 	{ "name": "trotters15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters15", "role": "q0" }} , 
 	{ "name": "dH", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH", "role": "default" }} , 
 	{ "name": "upSpin", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin", "role": "default" }} , 
 	{ "name": "downSpin", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin", "role": "default" }} , 
 	{ "name": "Beta", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Beta", "role": "default" }} , 
 	{ "name": "dHTunnel", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dHTunnel", "role": "default" }} , 
 	{ "name": "logRandNumber", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandNumber", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "TrotterUnitFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin", "Type" : "None", "Direction" : "I"},
			{"Name" : "trotters", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trotters15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dH", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin", "Type" : "None", "Direction" : "I"},
			{"Name" : "Beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "dHTunnel", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandNumber", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_7_full_dsp_1_U485", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U486", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U487", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U488", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U489", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_16_1_1_U490", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TrotterUnitFinal {
		t_offset {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		iPack {Type I LastRead 0 FirstWrite -1}
		iSpin {Type I LastRead 0 FirstWrite -1}
		trotters {Type IO LastRead 11 FirstWrite 15}
		trotters1 {Type IO LastRead 11 FirstWrite 15}
		trotters2 {Type IO LastRead 11 FirstWrite 15}
		trotters3 {Type IO LastRead 11 FirstWrite 15}
		trotters4 {Type IO LastRead 11 FirstWrite 15}
		trotters5 {Type IO LastRead 11 FirstWrite 15}
		trotters6 {Type IO LastRead 11 FirstWrite 15}
		trotters7 {Type IO LastRead 11 FirstWrite 15}
		trotters8 {Type IO LastRead 11 FirstWrite 15}
		trotters9 {Type IO LastRead 11 FirstWrite 15}
		trotters10 {Type IO LastRead 11 FirstWrite 15}
		trotters11 {Type IO LastRead 11 FirstWrite 15}
		trotters12 {Type IO LastRead 11 FirstWrite 15}
		trotters13 {Type IO LastRead 11 FirstWrite 15}
		trotters14 {Type IO LastRead 11 FirstWrite 15}
		trotters15 {Type IO LastRead 11 FirstWrite 15}
		dH {Type I LastRead 0 FirstWrite -1}
		upSpin {Type I LastRead 0 FirstWrite -1}
		downSpin {Type I LastRead 0 FirstWrite -1}
		Beta {Type I LastRead 0 FirstWrite -1}
		dHTunnel {Type I LastRead 0 FirstWrite -1}
		logRandNumber {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "15"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t_offset { ap_none {  { t_offset in_data 0 2 } } }
	stage { ap_none {  { stage in_data 0 13 } } }
	iPack { ap_none {  { iPack in_data 0 8 } } }
	iSpin { ap_none {  { iSpin in_data 0 32 } } }
	trotters { ap_memory {  { trotters_address0 mem_address 1 4 }  { trotters_ce0 mem_ce 1 1 }  { trotters_we0 mem_we 1 1 }  { trotters_d0 mem_din 1 16 }  { trotters_q0 mem_dout 0 16 } } }
	trotters1 { ap_memory {  { trotters1_address0 mem_address 1 4 }  { trotters1_ce0 mem_ce 1 1 }  { trotters1_we0 mem_we 1 1 }  { trotters1_d0 mem_din 1 16 }  { trotters1_q0 mem_dout 0 16 } } }
	trotters2 { ap_memory {  { trotters2_address0 mem_address 1 4 }  { trotters2_ce0 mem_ce 1 1 }  { trotters2_we0 mem_we 1 1 }  { trotters2_d0 mem_din 1 16 }  { trotters2_q0 mem_dout 0 16 } } }
	trotters3 { ap_memory {  { trotters3_address0 mem_address 1 4 }  { trotters3_ce0 mem_ce 1 1 }  { trotters3_we0 mem_we 1 1 }  { trotters3_d0 mem_din 1 16 }  { trotters3_q0 mem_dout 0 16 } } }
	trotters4 { ap_memory {  { trotters4_address0 mem_address 1 4 }  { trotters4_ce0 mem_ce 1 1 }  { trotters4_we0 mem_we 1 1 }  { trotters4_d0 mem_din 1 16 }  { trotters4_q0 mem_dout 0 16 } } }
	trotters5 { ap_memory {  { trotters5_address0 mem_address 1 4 }  { trotters5_ce0 mem_ce 1 1 }  { trotters5_we0 mem_we 1 1 }  { trotters5_d0 mem_din 1 16 }  { trotters5_q0 mem_dout 0 16 } } }
	trotters6 { ap_memory {  { trotters6_address0 mem_address 1 4 }  { trotters6_ce0 mem_ce 1 1 }  { trotters6_we0 mem_we 1 1 }  { trotters6_d0 mem_din 1 16 }  { trotters6_q0 mem_dout 0 16 } } }
	trotters7 { ap_memory {  { trotters7_address0 mem_address 1 4 }  { trotters7_ce0 mem_ce 1 1 }  { trotters7_we0 mem_we 1 1 }  { trotters7_d0 mem_din 1 16 }  { trotters7_q0 mem_dout 0 16 } } }
	trotters8 { ap_memory {  { trotters8_address0 mem_address 1 4 }  { trotters8_ce0 mem_ce 1 1 }  { trotters8_we0 mem_we 1 1 }  { trotters8_d0 mem_din 1 16 }  { trotters8_q0 mem_dout 0 16 } } }
	trotters9 { ap_memory {  { trotters9_address0 mem_address 1 4 }  { trotters9_ce0 mem_ce 1 1 }  { trotters9_we0 mem_we 1 1 }  { trotters9_d0 mem_din 1 16 }  { trotters9_q0 mem_dout 0 16 } } }
	trotters10 { ap_memory {  { trotters10_address0 mem_address 1 4 }  { trotters10_ce0 mem_ce 1 1 }  { trotters10_we0 mem_we 1 1 }  { trotters10_d0 mem_din 1 16 }  { trotters10_q0 mem_dout 0 16 } } }
	trotters11 { ap_memory {  { trotters11_address0 mem_address 1 4 }  { trotters11_ce0 mem_ce 1 1 }  { trotters11_we0 mem_we 1 1 }  { trotters11_d0 mem_din 1 16 }  { trotters11_q0 mem_dout 0 16 } } }
	trotters12 { ap_memory {  { trotters12_address0 mem_address 1 4 }  { trotters12_ce0 mem_ce 1 1 }  { trotters12_we0 mem_we 1 1 }  { trotters12_d0 mem_din 1 16 }  { trotters12_q0 mem_dout 0 16 } } }
	trotters13 { ap_memory {  { trotters13_address0 mem_address 1 4 }  { trotters13_ce0 mem_ce 1 1 }  { trotters13_we0 mem_we 1 1 }  { trotters13_d0 mem_din 1 16 }  { trotters13_q0 mem_dout 0 16 } } }
	trotters14 { ap_memory {  { trotters14_address0 mem_address 1 4 }  { trotters14_ce0 mem_ce 1 1 }  { trotters14_we0 mem_we 1 1 }  { trotters14_d0 mem_din 1 16 }  { trotters14_q0 mem_dout 0 16 } } }
	trotters15 { ap_memory {  { trotters15_address0 mem_address 1 4 }  { trotters15_ce0 mem_ce 1 1 }  { trotters15_we0 mem_we 1 1 }  { trotters15_d0 mem_din 1 16 }  { trotters15_q0 mem_dout 0 16 } } }
	dH { ap_none {  { dH in_data 0 32 } } }
	upSpin { ap_none {  { upSpin in_data 0 1 } } }
	downSpin { ap_none {  { downSpin in_data 0 1 } } }
	Beta { ap_none {  { Beta in_data 0 32 } } }
	dHTunnel { ap_none {  { dHTunnel in_data 0 32 } } }
	logRandNumber { ap_none {  { logRandNumber in_data 0 32 } } }
}
