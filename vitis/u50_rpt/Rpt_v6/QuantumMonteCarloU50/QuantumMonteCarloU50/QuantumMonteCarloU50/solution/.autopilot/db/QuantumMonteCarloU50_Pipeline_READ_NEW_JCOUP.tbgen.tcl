set moduleName QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 0}  }
	{ sext_ln234 int 58 regular  }
	{ JcoupLocal_0_0 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_1 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_2 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_3 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_4 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_5 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_6 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_7 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_8 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_9 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_10 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_11 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_12 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_13 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_14 int 512 regular {array 16 { 0 3 } 0 1 }  }
	{ JcoupLocal_0_15 int 512 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "trotters","offset": { "type": "dynamic","port_name": "trotters","bundle": "control"},"direction": "READWRITE"},{"cName": "Jcoup","offset": { "type": "dynamic","port_name": "Jcoup","bundle": "control"},"direction": "READONLY"},{"cName": "h","offset": { "type": "dynamic","port_name": "h","bundle": "control"},"direction": "READONLY"},{"cName": "logRand","offset": { "type": "dynamic","port_name": "logRand","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln234", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_0", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_1", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_2", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_3", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_4", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_5", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_6", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_7", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_8", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_9", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_10", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_11", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_12", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_13", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_14", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_0_15", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 116
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln234 sc_in sc_lv 58 signal 1 } 
	{ JcoupLocal_0_0_address0 sc_out sc_lv 4 signal 2 } 
	{ JcoupLocal_0_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ JcoupLocal_0_0_we0 sc_out sc_logic 1 signal 2 } 
	{ JcoupLocal_0_0_d0 sc_out sc_lv 512 signal 2 } 
	{ JcoupLocal_0_1_address0 sc_out sc_lv 4 signal 3 } 
	{ JcoupLocal_0_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ JcoupLocal_0_1_we0 sc_out sc_logic 1 signal 3 } 
	{ JcoupLocal_0_1_d0 sc_out sc_lv 512 signal 3 } 
	{ JcoupLocal_0_2_address0 sc_out sc_lv 4 signal 4 } 
	{ JcoupLocal_0_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ JcoupLocal_0_2_we0 sc_out sc_logic 1 signal 4 } 
	{ JcoupLocal_0_2_d0 sc_out sc_lv 512 signal 4 } 
	{ JcoupLocal_0_3_address0 sc_out sc_lv 4 signal 5 } 
	{ JcoupLocal_0_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ JcoupLocal_0_3_we0 sc_out sc_logic 1 signal 5 } 
	{ JcoupLocal_0_3_d0 sc_out sc_lv 512 signal 5 } 
	{ JcoupLocal_0_4_address0 sc_out sc_lv 4 signal 6 } 
	{ JcoupLocal_0_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ JcoupLocal_0_4_we0 sc_out sc_logic 1 signal 6 } 
	{ JcoupLocal_0_4_d0 sc_out sc_lv 512 signal 6 } 
	{ JcoupLocal_0_5_address0 sc_out sc_lv 4 signal 7 } 
	{ JcoupLocal_0_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ JcoupLocal_0_5_we0 sc_out sc_logic 1 signal 7 } 
	{ JcoupLocal_0_5_d0 sc_out sc_lv 512 signal 7 } 
	{ JcoupLocal_0_6_address0 sc_out sc_lv 4 signal 8 } 
	{ JcoupLocal_0_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ JcoupLocal_0_6_we0 sc_out sc_logic 1 signal 8 } 
	{ JcoupLocal_0_6_d0 sc_out sc_lv 512 signal 8 } 
	{ JcoupLocal_0_7_address0 sc_out sc_lv 4 signal 9 } 
	{ JcoupLocal_0_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ JcoupLocal_0_7_we0 sc_out sc_logic 1 signal 9 } 
	{ JcoupLocal_0_7_d0 sc_out sc_lv 512 signal 9 } 
	{ JcoupLocal_0_8_address0 sc_out sc_lv 4 signal 10 } 
	{ JcoupLocal_0_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ JcoupLocal_0_8_we0 sc_out sc_logic 1 signal 10 } 
	{ JcoupLocal_0_8_d0 sc_out sc_lv 512 signal 10 } 
	{ JcoupLocal_0_9_address0 sc_out sc_lv 4 signal 11 } 
	{ JcoupLocal_0_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ JcoupLocal_0_9_we0 sc_out sc_logic 1 signal 11 } 
	{ JcoupLocal_0_9_d0 sc_out sc_lv 512 signal 11 } 
	{ JcoupLocal_0_10_address0 sc_out sc_lv 4 signal 12 } 
	{ JcoupLocal_0_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ JcoupLocal_0_10_we0 sc_out sc_logic 1 signal 12 } 
	{ JcoupLocal_0_10_d0 sc_out sc_lv 512 signal 12 } 
	{ JcoupLocal_0_11_address0 sc_out sc_lv 4 signal 13 } 
	{ JcoupLocal_0_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ JcoupLocal_0_11_we0 sc_out sc_logic 1 signal 13 } 
	{ JcoupLocal_0_11_d0 sc_out sc_lv 512 signal 13 } 
	{ JcoupLocal_0_12_address0 sc_out sc_lv 4 signal 14 } 
	{ JcoupLocal_0_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ JcoupLocal_0_12_we0 sc_out sc_logic 1 signal 14 } 
	{ JcoupLocal_0_12_d0 sc_out sc_lv 512 signal 14 } 
	{ JcoupLocal_0_13_address0 sc_out sc_lv 4 signal 15 } 
	{ JcoupLocal_0_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ JcoupLocal_0_13_we0 sc_out sc_logic 1 signal 15 } 
	{ JcoupLocal_0_13_d0 sc_out sc_lv 512 signal 15 } 
	{ JcoupLocal_0_14_address0 sc_out sc_lv 4 signal 16 } 
	{ JcoupLocal_0_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ JcoupLocal_0_14_we0 sc_out sc_logic 1 signal 16 } 
	{ JcoupLocal_0_14_d0 sc_out sc_lv 512 signal 16 } 
	{ JcoupLocal_0_15_address0 sc_out sc_lv 4 signal 17 } 
	{ JcoupLocal_0_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ JcoupLocal_0_15_we0 sc_out sc_logic 1 signal 17 } 
	{ JcoupLocal_0_15_d0 sc_out sc_lv 512 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "sext_ln234", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "sext_ln234", "role": "default" }} , 
 	{ "name": "JcoupLocal_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "d0" }} , 
 	{ "name": "JcoupLocal_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "we0" }} , 
 	{ "name": "JcoupLocal_0_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln234", "Type" : "None", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_0_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "READ_NEW_JCOUP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln234 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_0 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_1 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_2 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_3 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_4 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_5 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_6 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_7 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_8 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_9 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_10 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_11 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_12 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_13 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_14 {Type O LastRead -1 FirstWrite 2}
		JcoupLocal_0_15 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "259", "Max" : "259"}
	, {"Name" : "Interval", "Min" : "259", "Max" : "259"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	sext_ln234 { ap_none {  { sext_ln234 in_data 0 58 } } }
	JcoupLocal_0_0 { ap_memory {  { JcoupLocal_0_0_address0 mem_address 1 4 }  { JcoupLocal_0_0_ce0 mem_ce 1 1 }  { JcoupLocal_0_0_we0 mem_we 1 1 }  { JcoupLocal_0_0_d0 mem_din 1 512 } } }
	JcoupLocal_0_1 { ap_memory {  { JcoupLocal_0_1_address0 mem_address 1 4 }  { JcoupLocal_0_1_ce0 mem_ce 1 1 }  { JcoupLocal_0_1_we0 mem_we 1 1 }  { JcoupLocal_0_1_d0 mem_din 1 512 } } }
	JcoupLocal_0_2 { ap_memory {  { JcoupLocal_0_2_address0 mem_address 1 4 }  { JcoupLocal_0_2_ce0 mem_ce 1 1 }  { JcoupLocal_0_2_we0 mem_we 1 1 }  { JcoupLocal_0_2_d0 mem_din 1 512 } } }
	JcoupLocal_0_3 { ap_memory {  { JcoupLocal_0_3_address0 mem_address 1 4 }  { JcoupLocal_0_3_ce0 mem_ce 1 1 }  { JcoupLocal_0_3_we0 mem_we 1 1 }  { JcoupLocal_0_3_d0 mem_din 1 512 } } }
	JcoupLocal_0_4 { ap_memory {  { JcoupLocal_0_4_address0 mem_address 1 4 }  { JcoupLocal_0_4_ce0 mem_ce 1 1 }  { JcoupLocal_0_4_we0 mem_we 1 1 }  { JcoupLocal_0_4_d0 mem_din 1 512 } } }
	JcoupLocal_0_5 { ap_memory {  { JcoupLocal_0_5_address0 mem_address 1 4 }  { JcoupLocal_0_5_ce0 mem_ce 1 1 }  { JcoupLocal_0_5_we0 mem_we 1 1 }  { JcoupLocal_0_5_d0 mem_din 1 512 } } }
	JcoupLocal_0_6 { ap_memory {  { JcoupLocal_0_6_address0 mem_address 1 4 }  { JcoupLocal_0_6_ce0 mem_ce 1 1 }  { JcoupLocal_0_6_we0 mem_we 1 1 }  { JcoupLocal_0_6_d0 mem_din 1 512 } } }
	JcoupLocal_0_7 { ap_memory {  { JcoupLocal_0_7_address0 mem_address 1 4 }  { JcoupLocal_0_7_ce0 mem_ce 1 1 }  { JcoupLocal_0_7_we0 mem_we 1 1 }  { JcoupLocal_0_7_d0 mem_din 1 512 } } }
	JcoupLocal_0_8 { ap_memory {  { JcoupLocal_0_8_address0 mem_address 1 4 }  { JcoupLocal_0_8_ce0 mem_ce 1 1 }  { JcoupLocal_0_8_we0 mem_we 1 1 }  { JcoupLocal_0_8_d0 mem_din 1 512 } } }
	JcoupLocal_0_9 { ap_memory {  { JcoupLocal_0_9_address0 mem_address 1 4 }  { JcoupLocal_0_9_ce0 mem_ce 1 1 }  { JcoupLocal_0_9_we0 mem_we 1 1 }  { JcoupLocal_0_9_d0 mem_din 1 512 } } }
	JcoupLocal_0_10 { ap_memory {  { JcoupLocal_0_10_address0 mem_address 1 4 }  { JcoupLocal_0_10_ce0 mem_ce 1 1 }  { JcoupLocal_0_10_we0 mem_we 1 1 }  { JcoupLocal_0_10_d0 mem_din 1 512 } } }
	JcoupLocal_0_11 { ap_memory {  { JcoupLocal_0_11_address0 mem_address 1 4 }  { JcoupLocal_0_11_ce0 mem_ce 1 1 }  { JcoupLocal_0_11_we0 mem_we 1 1 }  { JcoupLocal_0_11_d0 mem_din 1 512 } } }
	JcoupLocal_0_12 { ap_memory {  { JcoupLocal_0_12_address0 mem_address 1 4 }  { JcoupLocal_0_12_ce0 mem_ce 1 1 }  { JcoupLocal_0_12_we0 mem_we 1 1 }  { JcoupLocal_0_12_d0 mem_din 1 512 } } }
	JcoupLocal_0_13 { ap_memory {  { JcoupLocal_0_13_address0 mem_address 1 4 }  { JcoupLocal_0_13_ce0 mem_ce 1 1 }  { JcoupLocal_0_13_we0 mem_we 1 1 }  { JcoupLocal_0_13_d0 mem_din 1 512 } } }
	JcoupLocal_0_14 { ap_memory {  { JcoupLocal_0_14_address0 mem_address 1 4 }  { JcoupLocal_0_14_ce0 mem_ce 1 1 }  { JcoupLocal_0_14_we0 mem_we 1 1 }  { JcoupLocal_0_14_d0 mem_din 1 512 } } }
	JcoupLocal_0_15 { ap_memory {  { JcoupLocal_0_15_address0 mem_address 1 4 }  { JcoupLocal_0_15_ce0 mem_ce 1 1 }  { JcoupLocal_0_15_we0 mem_we 1 1 }  { JcoupLocal_0_15_d0 mem_din 1 512 } } }
}
