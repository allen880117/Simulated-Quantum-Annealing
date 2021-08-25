set moduleName QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1
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
set C_modelName {QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 0}  }
	{ sext_ln188 int 58 regular  }
	{ trottersLocal_V_0_0 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_1 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_2 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_3 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_4 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_5 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_6 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_7 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_8 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_9 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_10 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_11 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_12 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_13 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_14 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_0_15 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_0 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_1 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_2 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_3 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_4 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_5 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_6 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_7 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_8 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_9 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_10 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_11 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_12 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_13 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_14 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_1_15 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_0 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_1 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_2 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_3 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_4 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_5 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_6 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_7 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_8 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_9 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_10 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_11 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_12 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_13 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_14 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_2_15 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_0 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_1 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_2 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_3 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_4 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_5 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_6 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_7 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_8 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_9 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_10 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_11 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_12 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_13 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_14 int 16 regular {array 16 { 0 3 } 0 1 }  }
	{ trottersLocal_V_3_15 int 16 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "trotters","offset": { "type": "dynamic","port_name": "trotters","bundle": "control"},"direction": "READWRITE"},{"cName": "Jcoup","offset": { "type": "dynamic","port_name": "Jcoup","bundle": "control"},"direction": "READONLY"},{"cName": "h","offset": { "type": "dynamic","port_name": "h","bundle": "control"},"direction": "READONLY"},{"cName": "logRand","offset": { "type": "dynamic","port_name": "logRand","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln188", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_0_15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_1_15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_2_15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trottersLocal_V_3_15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 308
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
	{ sext_ln188 sc_in sc_lv 58 signal 1 } 
	{ trottersLocal_V_0_0_address0 sc_out sc_lv 4 signal 2 } 
	{ trottersLocal_V_0_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ trottersLocal_V_0_0_we0 sc_out sc_logic 1 signal 2 } 
	{ trottersLocal_V_0_0_d0 sc_out sc_lv 16 signal 2 } 
	{ trottersLocal_V_0_1_address0 sc_out sc_lv 4 signal 3 } 
	{ trottersLocal_V_0_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ trottersLocal_V_0_1_we0 sc_out sc_logic 1 signal 3 } 
	{ trottersLocal_V_0_1_d0 sc_out sc_lv 16 signal 3 } 
	{ trottersLocal_V_0_2_address0 sc_out sc_lv 4 signal 4 } 
	{ trottersLocal_V_0_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ trottersLocal_V_0_2_we0 sc_out sc_logic 1 signal 4 } 
	{ trottersLocal_V_0_2_d0 sc_out sc_lv 16 signal 4 } 
	{ trottersLocal_V_0_3_address0 sc_out sc_lv 4 signal 5 } 
	{ trottersLocal_V_0_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ trottersLocal_V_0_3_we0 sc_out sc_logic 1 signal 5 } 
	{ trottersLocal_V_0_3_d0 sc_out sc_lv 16 signal 5 } 
	{ trottersLocal_V_0_4_address0 sc_out sc_lv 4 signal 6 } 
	{ trottersLocal_V_0_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ trottersLocal_V_0_4_we0 sc_out sc_logic 1 signal 6 } 
	{ trottersLocal_V_0_4_d0 sc_out sc_lv 16 signal 6 } 
	{ trottersLocal_V_0_5_address0 sc_out sc_lv 4 signal 7 } 
	{ trottersLocal_V_0_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ trottersLocal_V_0_5_we0 sc_out sc_logic 1 signal 7 } 
	{ trottersLocal_V_0_5_d0 sc_out sc_lv 16 signal 7 } 
	{ trottersLocal_V_0_6_address0 sc_out sc_lv 4 signal 8 } 
	{ trottersLocal_V_0_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ trottersLocal_V_0_6_we0 sc_out sc_logic 1 signal 8 } 
	{ trottersLocal_V_0_6_d0 sc_out sc_lv 16 signal 8 } 
	{ trottersLocal_V_0_7_address0 sc_out sc_lv 4 signal 9 } 
	{ trottersLocal_V_0_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ trottersLocal_V_0_7_we0 sc_out sc_logic 1 signal 9 } 
	{ trottersLocal_V_0_7_d0 sc_out sc_lv 16 signal 9 } 
	{ trottersLocal_V_0_8_address0 sc_out sc_lv 4 signal 10 } 
	{ trottersLocal_V_0_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ trottersLocal_V_0_8_we0 sc_out sc_logic 1 signal 10 } 
	{ trottersLocal_V_0_8_d0 sc_out sc_lv 16 signal 10 } 
	{ trottersLocal_V_0_9_address0 sc_out sc_lv 4 signal 11 } 
	{ trottersLocal_V_0_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ trottersLocal_V_0_9_we0 sc_out sc_logic 1 signal 11 } 
	{ trottersLocal_V_0_9_d0 sc_out sc_lv 16 signal 11 } 
	{ trottersLocal_V_0_10_address0 sc_out sc_lv 4 signal 12 } 
	{ trottersLocal_V_0_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ trottersLocal_V_0_10_we0 sc_out sc_logic 1 signal 12 } 
	{ trottersLocal_V_0_10_d0 sc_out sc_lv 16 signal 12 } 
	{ trottersLocal_V_0_11_address0 sc_out sc_lv 4 signal 13 } 
	{ trottersLocal_V_0_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ trottersLocal_V_0_11_we0 sc_out sc_logic 1 signal 13 } 
	{ trottersLocal_V_0_11_d0 sc_out sc_lv 16 signal 13 } 
	{ trottersLocal_V_0_12_address0 sc_out sc_lv 4 signal 14 } 
	{ trottersLocal_V_0_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ trottersLocal_V_0_12_we0 sc_out sc_logic 1 signal 14 } 
	{ trottersLocal_V_0_12_d0 sc_out sc_lv 16 signal 14 } 
	{ trottersLocal_V_0_13_address0 sc_out sc_lv 4 signal 15 } 
	{ trottersLocal_V_0_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ trottersLocal_V_0_13_we0 sc_out sc_logic 1 signal 15 } 
	{ trottersLocal_V_0_13_d0 sc_out sc_lv 16 signal 15 } 
	{ trottersLocal_V_0_14_address0 sc_out sc_lv 4 signal 16 } 
	{ trottersLocal_V_0_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ trottersLocal_V_0_14_we0 sc_out sc_logic 1 signal 16 } 
	{ trottersLocal_V_0_14_d0 sc_out sc_lv 16 signal 16 } 
	{ trottersLocal_V_0_15_address0 sc_out sc_lv 4 signal 17 } 
	{ trottersLocal_V_0_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ trottersLocal_V_0_15_we0 sc_out sc_logic 1 signal 17 } 
	{ trottersLocal_V_0_15_d0 sc_out sc_lv 16 signal 17 } 
	{ trottersLocal_V_1_0_address0 sc_out sc_lv 4 signal 18 } 
	{ trottersLocal_V_1_0_ce0 sc_out sc_logic 1 signal 18 } 
	{ trottersLocal_V_1_0_we0 sc_out sc_logic 1 signal 18 } 
	{ trottersLocal_V_1_0_d0 sc_out sc_lv 16 signal 18 } 
	{ trottersLocal_V_1_1_address0 sc_out sc_lv 4 signal 19 } 
	{ trottersLocal_V_1_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ trottersLocal_V_1_1_we0 sc_out sc_logic 1 signal 19 } 
	{ trottersLocal_V_1_1_d0 sc_out sc_lv 16 signal 19 } 
	{ trottersLocal_V_1_2_address0 sc_out sc_lv 4 signal 20 } 
	{ trottersLocal_V_1_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ trottersLocal_V_1_2_we0 sc_out sc_logic 1 signal 20 } 
	{ trottersLocal_V_1_2_d0 sc_out sc_lv 16 signal 20 } 
	{ trottersLocal_V_1_3_address0 sc_out sc_lv 4 signal 21 } 
	{ trottersLocal_V_1_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ trottersLocal_V_1_3_we0 sc_out sc_logic 1 signal 21 } 
	{ trottersLocal_V_1_3_d0 sc_out sc_lv 16 signal 21 } 
	{ trottersLocal_V_1_4_address0 sc_out sc_lv 4 signal 22 } 
	{ trottersLocal_V_1_4_ce0 sc_out sc_logic 1 signal 22 } 
	{ trottersLocal_V_1_4_we0 sc_out sc_logic 1 signal 22 } 
	{ trottersLocal_V_1_4_d0 sc_out sc_lv 16 signal 22 } 
	{ trottersLocal_V_1_5_address0 sc_out sc_lv 4 signal 23 } 
	{ trottersLocal_V_1_5_ce0 sc_out sc_logic 1 signal 23 } 
	{ trottersLocal_V_1_5_we0 sc_out sc_logic 1 signal 23 } 
	{ trottersLocal_V_1_5_d0 sc_out sc_lv 16 signal 23 } 
	{ trottersLocal_V_1_6_address0 sc_out sc_lv 4 signal 24 } 
	{ trottersLocal_V_1_6_ce0 sc_out sc_logic 1 signal 24 } 
	{ trottersLocal_V_1_6_we0 sc_out sc_logic 1 signal 24 } 
	{ trottersLocal_V_1_6_d0 sc_out sc_lv 16 signal 24 } 
	{ trottersLocal_V_1_7_address0 sc_out sc_lv 4 signal 25 } 
	{ trottersLocal_V_1_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ trottersLocal_V_1_7_we0 sc_out sc_logic 1 signal 25 } 
	{ trottersLocal_V_1_7_d0 sc_out sc_lv 16 signal 25 } 
	{ trottersLocal_V_1_8_address0 sc_out sc_lv 4 signal 26 } 
	{ trottersLocal_V_1_8_ce0 sc_out sc_logic 1 signal 26 } 
	{ trottersLocal_V_1_8_we0 sc_out sc_logic 1 signal 26 } 
	{ trottersLocal_V_1_8_d0 sc_out sc_lv 16 signal 26 } 
	{ trottersLocal_V_1_9_address0 sc_out sc_lv 4 signal 27 } 
	{ trottersLocal_V_1_9_ce0 sc_out sc_logic 1 signal 27 } 
	{ trottersLocal_V_1_9_we0 sc_out sc_logic 1 signal 27 } 
	{ trottersLocal_V_1_9_d0 sc_out sc_lv 16 signal 27 } 
	{ trottersLocal_V_1_10_address0 sc_out sc_lv 4 signal 28 } 
	{ trottersLocal_V_1_10_ce0 sc_out sc_logic 1 signal 28 } 
	{ trottersLocal_V_1_10_we0 sc_out sc_logic 1 signal 28 } 
	{ trottersLocal_V_1_10_d0 sc_out sc_lv 16 signal 28 } 
	{ trottersLocal_V_1_11_address0 sc_out sc_lv 4 signal 29 } 
	{ trottersLocal_V_1_11_ce0 sc_out sc_logic 1 signal 29 } 
	{ trottersLocal_V_1_11_we0 sc_out sc_logic 1 signal 29 } 
	{ trottersLocal_V_1_11_d0 sc_out sc_lv 16 signal 29 } 
	{ trottersLocal_V_1_12_address0 sc_out sc_lv 4 signal 30 } 
	{ trottersLocal_V_1_12_ce0 sc_out sc_logic 1 signal 30 } 
	{ trottersLocal_V_1_12_we0 sc_out sc_logic 1 signal 30 } 
	{ trottersLocal_V_1_12_d0 sc_out sc_lv 16 signal 30 } 
	{ trottersLocal_V_1_13_address0 sc_out sc_lv 4 signal 31 } 
	{ trottersLocal_V_1_13_ce0 sc_out sc_logic 1 signal 31 } 
	{ trottersLocal_V_1_13_we0 sc_out sc_logic 1 signal 31 } 
	{ trottersLocal_V_1_13_d0 sc_out sc_lv 16 signal 31 } 
	{ trottersLocal_V_1_14_address0 sc_out sc_lv 4 signal 32 } 
	{ trottersLocal_V_1_14_ce0 sc_out sc_logic 1 signal 32 } 
	{ trottersLocal_V_1_14_we0 sc_out sc_logic 1 signal 32 } 
	{ trottersLocal_V_1_14_d0 sc_out sc_lv 16 signal 32 } 
	{ trottersLocal_V_1_15_address0 sc_out sc_lv 4 signal 33 } 
	{ trottersLocal_V_1_15_ce0 sc_out sc_logic 1 signal 33 } 
	{ trottersLocal_V_1_15_we0 sc_out sc_logic 1 signal 33 } 
	{ trottersLocal_V_1_15_d0 sc_out sc_lv 16 signal 33 } 
	{ trottersLocal_V_2_0_address0 sc_out sc_lv 4 signal 34 } 
	{ trottersLocal_V_2_0_ce0 sc_out sc_logic 1 signal 34 } 
	{ trottersLocal_V_2_0_we0 sc_out sc_logic 1 signal 34 } 
	{ trottersLocal_V_2_0_d0 sc_out sc_lv 16 signal 34 } 
	{ trottersLocal_V_2_1_address0 sc_out sc_lv 4 signal 35 } 
	{ trottersLocal_V_2_1_ce0 sc_out sc_logic 1 signal 35 } 
	{ trottersLocal_V_2_1_we0 sc_out sc_logic 1 signal 35 } 
	{ trottersLocal_V_2_1_d0 sc_out sc_lv 16 signal 35 } 
	{ trottersLocal_V_2_2_address0 sc_out sc_lv 4 signal 36 } 
	{ trottersLocal_V_2_2_ce0 sc_out sc_logic 1 signal 36 } 
	{ trottersLocal_V_2_2_we0 sc_out sc_logic 1 signal 36 } 
	{ trottersLocal_V_2_2_d0 sc_out sc_lv 16 signal 36 } 
	{ trottersLocal_V_2_3_address0 sc_out sc_lv 4 signal 37 } 
	{ trottersLocal_V_2_3_ce0 sc_out sc_logic 1 signal 37 } 
	{ trottersLocal_V_2_3_we0 sc_out sc_logic 1 signal 37 } 
	{ trottersLocal_V_2_3_d0 sc_out sc_lv 16 signal 37 } 
	{ trottersLocal_V_2_4_address0 sc_out sc_lv 4 signal 38 } 
	{ trottersLocal_V_2_4_ce0 sc_out sc_logic 1 signal 38 } 
	{ trottersLocal_V_2_4_we0 sc_out sc_logic 1 signal 38 } 
	{ trottersLocal_V_2_4_d0 sc_out sc_lv 16 signal 38 } 
	{ trottersLocal_V_2_5_address0 sc_out sc_lv 4 signal 39 } 
	{ trottersLocal_V_2_5_ce0 sc_out sc_logic 1 signal 39 } 
	{ trottersLocal_V_2_5_we0 sc_out sc_logic 1 signal 39 } 
	{ trottersLocal_V_2_5_d0 sc_out sc_lv 16 signal 39 } 
	{ trottersLocal_V_2_6_address0 sc_out sc_lv 4 signal 40 } 
	{ trottersLocal_V_2_6_ce0 sc_out sc_logic 1 signal 40 } 
	{ trottersLocal_V_2_6_we0 sc_out sc_logic 1 signal 40 } 
	{ trottersLocal_V_2_6_d0 sc_out sc_lv 16 signal 40 } 
	{ trottersLocal_V_2_7_address0 sc_out sc_lv 4 signal 41 } 
	{ trottersLocal_V_2_7_ce0 sc_out sc_logic 1 signal 41 } 
	{ trottersLocal_V_2_7_we0 sc_out sc_logic 1 signal 41 } 
	{ trottersLocal_V_2_7_d0 sc_out sc_lv 16 signal 41 } 
	{ trottersLocal_V_2_8_address0 sc_out sc_lv 4 signal 42 } 
	{ trottersLocal_V_2_8_ce0 sc_out sc_logic 1 signal 42 } 
	{ trottersLocal_V_2_8_we0 sc_out sc_logic 1 signal 42 } 
	{ trottersLocal_V_2_8_d0 sc_out sc_lv 16 signal 42 } 
	{ trottersLocal_V_2_9_address0 sc_out sc_lv 4 signal 43 } 
	{ trottersLocal_V_2_9_ce0 sc_out sc_logic 1 signal 43 } 
	{ trottersLocal_V_2_9_we0 sc_out sc_logic 1 signal 43 } 
	{ trottersLocal_V_2_9_d0 sc_out sc_lv 16 signal 43 } 
	{ trottersLocal_V_2_10_address0 sc_out sc_lv 4 signal 44 } 
	{ trottersLocal_V_2_10_ce0 sc_out sc_logic 1 signal 44 } 
	{ trottersLocal_V_2_10_we0 sc_out sc_logic 1 signal 44 } 
	{ trottersLocal_V_2_10_d0 sc_out sc_lv 16 signal 44 } 
	{ trottersLocal_V_2_11_address0 sc_out sc_lv 4 signal 45 } 
	{ trottersLocal_V_2_11_ce0 sc_out sc_logic 1 signal 45 } 
	{ trottersLocal_V_2_11_we0 sc_out sc_logic 1 signal 45 } 
	{ trottersLocal_V_2_11_d0 sc_out sc_lv 16 signal 45 } 
	{ trottersLocal_V_2_12_address0 sc_out sc_lv 4 signal 46 } 
	{ trottersLocal_V_2_12_ce0 sc_out sc_logic 1 signal 46 } 
	{ trottersLocal_V_2_12_we0 sc_out sc_logic 1 signal 46 } 
	{ trottersLocal_V_2_12_d0 sc_out sc_lv 16 signal 46 } 
	{ trottersLocal_V_2_13_address0 sc_out sc_lv 4 signal 47 } 
	{ trottersLocal_V_2_13_ce0 sc_out sc_logic 1 signal 47 } 
	{ trottersLocal_V_2_13_we0 sc_out sc_logic 1 signal 47 } 
	{ trottersLocal_V_2_13_d0 sc_out sc_lv 16 signal 47 } 
	{ trottersLocal_V_2_14_address0 sc_out sc_lv 4 signal 48 } 
	{ trottersLocal_V_2_14_ce0 sc_out sc_logic 1 signal 48 } 
	{ trottersLocal_V_2_14_we0 sc_out sc_logic 1 signal 48 } 
	{ trottersLocal_V_2_14_d0 sc_out sc_lv 16 signal 48 } 
	{ trottersLocal_V_2_15_address0 sc_out sc_lv 4 signal 49 } 
	{ trottersLocal_V_2_15_ce0 sc_out sc_logic 1 signal 49 } 
	{ trottersLocal_V_2_15_we0 sc_out sc_logic 1 signal 49 } 
	{ trottersLocal_V_2_15_d0 sc_out sc_lv 16 signal 49 } 
	{ trottersLocal_V_3_0_address0 sc_out sc_lv 4 signal 50 } 
	{ trottersLocal_V_3_0_ce0 sc_out sc_logic 1 signal 50 } 
	{ trottersLocal_V_3_0_we0 sc_out sc_logic 1 signal 50 } 
	{ trottersLocal_V_3_0_d0 sc_out sc_lv 16 signal 50 } 
	{ trottersLocal_V_3_1_address0 sc_out sc_lv 4 signal 51 } 
	{ trottersLocal_V_3_1_ce0 sc_out sc_logic 1 signal 51 } 
	{ trottersLocal_V_3_1_we0 sc_out sc_logic 1 signal 51 } 
	{ trottersLocal_V_3_1_d0 sc_out sc_lv 16 signal 51 } 
	{ trottersLocal_V_3_2_address0 sc_out sc_lv 4 signal 52 } 
	{ trottersLocal_V_3_2_ce0 sc_out sc_logic 1 signal 52 } 
	{ trottersLocal_V_3_2_we0 sc_out sc_logic 1 signal 52 } 
	{ trottersLocal_V_3_2_d0 sc_out sc_lv 16 signal 52 } 
	{ trottersLocal_V_3_3_address0 sc_out sc_lv 4 signal 53 } 
	{ trottersLocal_V_3_3_ce0 sc_out sc_logic 1 signal 53 } 
	{ trottersLocal_V_3_3_we0 sc_out sc_logic 1 signal 53 } 
	{ trottersLocal_V_3_3_d0 sc_out sc_lv 16 signal 53 } 
	{ trottersLocal_V_3_4_address0 sc_out sc_lv 4 signal 54 } 
	{ trottersLocal_V_3_4_ce0 sc_out sc_logic 1 signal 54 } 
	{ trottersLocal_V_3_4_we0 sc_out sc_logic 1 signal 54 } 
	{ trottersLocal_V_3_4_d0 sc_out sc_lv 16 signal 54 } 
	{ trottersLocal_V_3_5_address0 sc_out sc_lv 4 signal 55 } 
	{ trottersLocal_V_3_5_ce0 sc_out sc_logic 1 signal 55 } 
	{ trottersLocal_V_3_5_we0 sc_out sc_logic 1 signal 55 } 
	{ trottersLocal_V_3_5_d0 sc_out sc_lv 16 signal 55 } 
	{ trottersLocal_V_3_6_address0 sc_out sc_lv 4 signal 56 } 
	{ trottersLocal_V_3_6_ce0 sc_out sc_logic 1 signal 56 } 
	{ trottersLocal_V_3_6_we0 sc_out sc_logic 1 signal 56 } 
	{ trottersLocal_V_3_6_d0 sc_out sc_lv 16 signal 56 } 
	{ trottersLocal_V_3_7_address0 sc_out sc_lv 4 signal 57 } 
	{ trottersLocal_V_3_7_ce0 sc_out sc_logic 1 signal 57 } 
	{ trottersLocal_V_3_7_we0 sc_out sc_logic 1 signal 57 } 
	{ trottersLocal_V_3_7_d0 sc_out sc_lv 16 signal 57 } 
	{ trottersLocal_V_3_8_address0 sc_out sc_lv 4 signal 58 } 
	{ trottersLocal_V_3_8_ce0 sc_out sc_logic 1 signal 58 } 
	{ trottersLocal_V_3_8_we0 sc_out sc_logic 1 signal 58 } 
	{ trottersLocal_V_3_8_d0 sc_out sc_lv 16 signal 58 } 
	{ trottersLocal_V_3_9_address0 sc_out sc_lv 4 signal 59 } 
	{ trottersLocal_V_3_9_ce0 sc_out sc_logic 1 signal 59 } 
	{ trottersLocal_V_3_9_we0 sc_out sc_logic 1 signal 59 } 
	{ trottersLocal_V_3_9_d0 sc_out sc_lv 16 signal 59 } 
	{ trottersLocal_V_3_10_address0 sc_out sc_lv 4 signal 60 } 
	{ trottersLocal_V_3_10_ce0 sc_out sc_logic 1 signal 60 } 
	{ trottersLocal_V_3_10_we0 sc_out sc_logic 1 signal 60 } 
	{ trottersLocal_V_3_10_d0 sc_out sc_lv 16 signal 60 } 
	{ trottersLocal_V_3_11_address0 sc_out sc_lv 4 signal 61 } 
	{ trottersLocal_V_3_11_ce0 sc_out sc_logic 1 signal 61 } 
	{ trottersLocal_V_3_11_we0 sc_out sc_logic 1 signal 61 } 
	{ trottersLocal_V_3_11_d0 sc_out sc_lv 16 signal 61 } 
	{ trottersLocal_V_3_12_address0 sc_out sc_lv 4 signal 62 } 
	{ trottersLocal_V_3_12_ce0 sc_out sc_logic 1 signal 62 } 
	{ trottersLocal_V_3_12_we0 sc_out sc_logic 1 signal 62 } 
	{ trottersLocal_V_3_12_d0 sc_out sc_lv 16 signal 62 } 
	{ trottersLocal_V_3_13_address0 sc_out sc_lv 4 signal 63 } 
	{ trottersLocal_V_3_13_ce0 sc_out sc_logic 1 signal 63 } 
	{ trottersLocal_V_3_13_we0 sc_out sc_logic 1 signal 63 } 
	{ trottersLocal_V_3_13_d0 sc_out sc_lv 16 signal 63 } 
	{ trottersLocal_V_3_14_address0 sc_out sc_lv 4 signal 64 } 
	{ trottersLocal_V_3_14_ce0 sc_out sc_logic 1 signal 64 } 
	{ trottersLocal_V_3_14_we0 sc_out sc_logic 1 signal 64 } 
	{ trottersLocal_V_3_14_d0 sc_out sc_lv 16 signal 64 } 
	{ trottersLocal_V_3_15_address0 sc_out sc_lv 4 signal 65 } 
	{ trottersLocal_V_3_15_ce0 sc_out sc_logic 1 signal 65 } 
	{ trottersLocal_V_3_15_we0 sc_out sc_logic 1 signal 65 } 
	{ trottersLocal_V_3_15_d0 sc_out sc_lv 16 signal 65 } 
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
 	{ "name": "sext_ln188", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "sext_ln188", "role": "default" }} , 
 	{ "name": "trottersLocal_V_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_0_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_1_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_2_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "d0" }} , 
 	{ "name": "trottersLocal_V_3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "we0" }} , 
 	{ "name": "trottersLocal_V_3_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
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
			{"Name" : "sext_ln188", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_0_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "READ_TROTTERS_VITIS_LOOP_189_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln188 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_0 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_1 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_2 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_3 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_4 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_5 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_6 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_7 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_8 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_9 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_10 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_11 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_12 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_13 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_14 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_0_15 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_0 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_1 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_2 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_3 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_4 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_5 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_6 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_7 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_8 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_9 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_10 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_11 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_12 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_13 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_14 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1_15 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_0 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_1 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_2 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_3 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_4 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_5 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_6 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_7 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_8 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_9 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_10 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_11 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_12 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_13 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_14 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2_15 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_0 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_1 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_2 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_3 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_4 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_5 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_6 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_7 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_8 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_9 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_10 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_11 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_12 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_13 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_14 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3_15 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "1027", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	sext_ln188 { ap_none {  { sext_ln188 in_data 0 58 } } }
	trottersLocal_V_0_0 { ap_memory {  { trottersLocal_V_0_0_address0 mem_address 1 4 }  { trottersLocal_V_0_0_ce0 mem_ce 1 1 }  { trottersLocal_V_0_0_we0 mem_we 1 1 }  { trottersLocal_V_0_0_d0 mem_din 1 16 } } }
	trottersLocal_V_0_1 { ap_memory {  { trottersLocal_V_0_1_address0 mem_address 1 4 }  { trottersLocal_V_0_1_ce0 mem_ce 1 1 }  { trottersLocal_V_0_1_we0 mem_we 1 1 }  { trottersLocal_V_0_1_d0 mem_din 1 16 } } }
	trottersLocal_V_0_2 { ap_memory {  { trottersLocal_V_0_2_address0 mem_address 1 4 }  { trottersLocal_V_0_2_ce0 mem_ce 1 1 }  { trottersLocal_V_0_2_we0 mem_we 1 1 }  { trottersLocal_V_0_2_d0 mem_din 1 16 } } }
	trottersLocal_V_0_3 { ap_memory {  { trottersLocal_V_0_3_address0 mem_address 1 4 }  { trottersLocal_V_0_3_ce0 mem_ce 1 1 }  { trottersLocal_V_0_3_we0 mem_we 1 1 }  { trottersLocal_V_0_3_d0 mem_din 1 16 } } }
	trottersLocal_V_0_4 { ap_memory {  { trottersLocal_V_0_4_address0 mem_address 1 4 }  { trottersLocal_V_0_4_ce0 mem_ce 1 1 }  { trottersLocal_V_0_4_we0 mem_we 1 1 }  { trottersLocal_V_0_4_d0 mem_din 1 16 } } }
	trottersLocal_V_0_5 { ap_memory {  { trottersLocal_V_0_5_address0 mem_address 1 4 }  { trottersLocal_V_0_5_ce0 mem_ce 1 1 }  { trottersLocal_V_0_5_we0 mem_we 1 1 }  { trottersLocal_V_0_5_d0 mem_din 1 16 } } }
	trottersLocal_V_0_6 { ap_memory {  { trottersLocal_V_0_6_address0 mem_address 1 4 }  { trottersLocal_V_0_6_ce0 mem_ce 1 1 }  { trottersLocal_V_0_6_we0 mem_we 1 1 }  { trottersLocal_V_0_6_d0 mem_din 1 16 } } }
	trottersLocal_V_0_7 { ap_memory {  { trottersLocal_V_0_7_address0 mem_address 1 4 }  { trottersLocal_V_0_7_ce0 mem_ce 1 1 }  { trottersLocal_V_0_7_we0 mem_we 1 1 }  { trottersLocal_V_0_7_d0 mem_din 1 16 } } }
	trottersLocal_V_0_8 { ap_memory {  { trottersLocal_V_0_8_address0 mem_address 1 4 }  { trottersLocal_V_0_8_ce0 mem_ce 1 1 }  { trottersLocal_V_0_8_we0 mem_we 1 1 }  { trottersLocal_V_0_8_d0 mem_din 1 16 } } }
	trottersLocal_V_0_9 { ap_memory {  { trottersLocal_V_0_9_address0 mem_address 1 4 }  { trottersLocal_V_0_9_ce0 mem_ce 1 1 }  { trottersLocal_V_0_9_we0 mem_we 1 1 }  { trottersLocal_V_0_9_d0 mem_din 1 16 } } }
	trottersLocal_V_0_10 { ap_memory {  { trottersLocal_V_0_10_address0 mem_address 1 4 }  { trottersLocal_V_0_10_ce0 mem_ce 1 1 }  { trottersLocal_V_0_10_we0 mem_we 1 1 }  { trottersLocal_V_0_10_d0 mem_din 1 16 } } }
	trottersLocal_V_0_11 { ap_memory {  { trottersLocal_V_0_11_address0 mem_address 1 4 }  { trottersLocal_V_0_11_ce0 mem_ce 1 1 }  { trottersLocal_V_0_11_we0 mem_we 1 1 }  { trottersLocal_V_0_11_d0 mem_din 1 16 } } }
	trottersLocal_V_0_12 { ap_memory {  { trottersLocal_V_0_12_address0 mem_address 1 4 }  { trottersLocal_V_0_12_ce0 mem_ce 1 1 }  { trottersLocal_V_0_12_we0 mem_we 1 1 }  { trottersLocal_V_0_12_d0 mem_din 1 16 } } }
	trottersLocal_V_0_13 { ap_memory {  { trottersLocal_V_0_13_address0 mem_address 1 4 }  { trottersLocal_V_0_13_ce0 mem_ce 1 1 }  { trottersLocal_V_0_13_we0 mem_we 1 1 }  { trottersLocal_V_0_13_d0 mem_din 1 16 } } }
	trottersLocal_V_0_14 { ap_memory {  { trottersLocal_V_0_14_address0 mem_address 1 4 }  { trottersLocal_V_0_14_ce0 mem_ce 1 1 }  { trottersLocal_V_0_14_we0 mem_we 1 1 }  { trottersLocal_V_0_14_d0 mem_din 1 16 } } }
	trottersLocal_V_0_15 { ap_memory {  { trottersLocal_V_0_15_address0 mem_address 1 4 }  { trottersLocal_V_0_15_ce0 mem_ce 1 1 }  { trottersLocal_V_0_15_we0 mem_we 1 1 }  { trottersLocal_V_0_15_d0 mem_din 1 16 } } }
	trottersLocal_V_1_0 { ap_memory {  { trottersLocal_V_1_0_address0 mem_address 1 4 }  { trottersLocal_V_1_0_ce0 mem_ce 1 1 }  { trottersLocal_V_1_0_we0 mem_we 1 1 }  { trottersLocal_V_1_0_d0 mem_din 1 16 } } }
	trottersLocal_V_1_1 { ap_memory {  { trottersLocal_V_1_1_address0 mem_address 1 4 }  { trottersLocal_V_1_1_ce0 mem_ce 1 1 }  { trottersLocal_V_1_1_we0 mem_we 1 1 }  { trottersLocal_V_1_1_d0 mem_din 1 16 } } }
	trottersLocal_V_1_2 { ap_memory {  { trottersLocal_V_1_2_address0 mem_address 1 4 }  { trottersLocal_V_1_2_ce0 mem_ce 1 1 }  { trottersLocal_V_1_2_we0 mem_we 1 1 }  { trottersLocal_V_1_2_d0 mem_din 1 16 } } }
	trottersLocal_V_1_3 { ap_memory {  { trottersLocal_V_1_3_address0 mem_address 1 4 }  { trottersLocal_V_1_3_ce0 mem_ce 1 1 }  { trottersLocal_V_1_3_we0 mem_we 1 1 }  { trottersLocal_V_1_3_d0 mem_din 1 16 } } }
	trottersLocal_V_1_4 { ap_memory {  { trottersLocal_V_1_4_address0 mem_address 1 4 }  { trottersLocal_V_1_4_ce0 mem_ce 1 1 }  { trottersLocal_V_1_4_we0 mem_we 1 1 }  { trottersLocal_V_1_4_d0 mem_din 1 16 } } }
	trottersLocal_V_1_5 { ap_memory {  { trottersLocal_V_1_5_address0 mem_address 1 4 }  { trottersLocal_V_1_5_ce0 mem_ce 1 1 }  { trottersLocal_V_1_5_we0 mem_we 1 1 }  { trottersLocal_V_1_5_d0 mem_din 1 16 } } }
	trottersLocal_V_1_6 { ap_memory {  { trottersLocal_V_1_6_address0 mem_address 1 4 }  { trottersLocal_V_1_6_ce0 mem_ce 1 1 }  { trottersLocal_V_1_6_we0 mem_we 1 1 }  { trottersLocal_V_1_6_d0 mem_din 1 16 } } }
	trottersLocal_V_1_7 { ap_memory {  { trottersLocal_V_1_7_address0 mem_address 1 4 }  { trottersLocal_V_1_7_ce0 mem_ce 1 1 }  { trottersLocal_V_1_7_we0 mem_we 1 1 }  { trottersLocal_V_1_7_d0 mem_din 1 16 } } }
	trottersLocal_V_1_8 { ap_memory {  { trottersLocal_V_1_8_address0 mem_address 1 4 }  { trottersLocal_V_1_8_ce0 mem_ce 1 1 }  { trottersLocal_V_1_8_we0 mem_we 1 1 }  { trottersLocal_V_1_8_d0 mem_din 1 16 } } }
	trottersLocal_V_1_9 { ap_memory {  { trottersLocal_V_1_9_address0 mem_address 1 4 }  { trottersLocal_V_1_9_ce0 mem_ce 1 1 }  { trottersLocal_V_1_9_we0 mem_we 1 1 }  { trottersLocal_V_1_9_d0 mem_din 1 16 } } }
	trottersLocal_V_1_10 { ap_memory {  { trottersLocal_V_1_10_address0 mem_address 1 4 }  { trottersLocal_V_1_10_ce0 mem_ce 1 1 }  { trottersLocal_V_1_10_we0 mem_we 1 1 }  { trottersLocal_V_1_10_d0 mem_din 1 16 } } }
	trottersLocal_V_1_11 { ap_memory {  { trottersLocal_V_1_11_address0 mem_address 1 4 }  { trottersLocal_V_1_11_ce0 mem_ce 1 1 }  { trottersLocal_V_1_11_we0 mem_we 1 1 }  { trottersLocal_V_1_11_d0 mem_din 1 16 } } }
	trottersLocal_V_1_12 { ap_memory {  { trottersLocal_V_1_12_address0 mem_address 1 4 }  { trottersLocal_V_1_12_ce0 mem_ce 1 1 }  { trottersLocal_V_1_12_we0 mem_we 1 1 }  { trottersLocal_V_1_12_d0 mem_din 1 16 } } }
	trottersLocal_V_1_13 { ap_memory {  { trottersLocal_V_1_13_address0 mem_address 1 4 }  { trottersLocal_V_1_13_ce0 mem_ce 1 1 }  { trottersLocal_V_1_13_we0 mem_we 1 1 }  { trottersLocal_V_1_13_d0 mem_din 1 16 } } }
	trottersLocal_V_1_14 { ap_memory {  { trottersLocal_V_1_14_address0 mem_address 1 4 }  { trottersLocal_V_1_14_ce0 mem_ce 1 1 }  { trottersLocal_V_1_14_we0 mem_we 1 1 }  { trottersLocal_V_1_14_d0 mem_din 1 16 } } }
	trottersLocal_V_1_15 { ap_memory {  { trottersLocal_V_1_15_address0 mem_address 1 4 }  { trottersLocal_V_1_15_ce0 mem_ce 1 1 }  { trottersLocal_V_1_15_we0 mem_we 1 1 }  { trottersLocal_V_1_15_d0 mem_din 1 16 } } }
	trottersLocal_V_2_0 { ap_memory {  { trottersLocal_V_2_0_address0 mem_address 1 4 }  { trottersLocal_V_2_0_ce0 mem_ce 1 1 }  { trottersLocal_V_2_0_we0 mem_we 1 1 }  { trottersLocal_V_2_0_d0 mem_din 1 16 } } }
	trottersLocal_V_2_1 { ap_memory {  { trottersLocal_V_2_1_address0 mem_address 1 4 }  { trottersLocal_V_2_1_ce0 mem_ce 1 1 }  { trottersLocal_V_2_1_we0 mem_we 1 1 }  { trottersLocal_V_2_1_d0 mem_din 1 16 } } }
	trottersLocal_V_2_2 { ap_memory {  { trottersLocal_V_2_2_address0 mem_address 1 4 }  { trottersLocal_V_2_2_ce0 mem_ce 1 1 }  { trottersLocal_V_2_2_we0 mem_we 1 1 }  { trottersLocal_V_2_2_d0 mem_din 1 16 } } }
	trottersLocal_V_2_3 { ap_memory {  { trottersLocal_V_2_3_address0 mem_address 1 4 }  { trottersLocal_V_2_3_ce0 mem_ce 1 1 }  { trottersLocal_V_2_3_we0 mem_we 1 1 }  { trottersLocal_V_2_3_d0 mem_din 1 16 } } }
	trottersLocal_V_2_4 { ap_memory {  { trottersLocal_V_2_4_address0 mem_address 1 4 }  { trottersLocal_V_2_4_ce0 mem_ce 1 1 }  { trottersLocal_V_2_4_we0 mem_we 1 1 }  { trottersLocal_V_2_4_d0 mem_din 1 16 } } }
	trottersLocal_V_2_5 { ap_memory {  { trottersLocal_V_2_5_address0 mem_address 1 4 }  { trottersLocal_V_2_5_ce0 mem_ce 1 1 }  { trottersLocal_V_2_5_we0 mem_we 1 1 }  { trottersLocal_V_2_5_d0 mem_din 1 16 } } }
	trottersLocal_V_2_6 { ap_memory {  { trottersLocal_V_2_6_address0 mem_address 1 4 }  { trottersLocal_V_2_6_ce0 mem_ce 1 1 }  { trottersLocal_V_2_6_we0 mem_we 1 1 }  { trottersLocal_V_2_6_d0 mem_din 1 16 } } }
	trottersLocal_V_2_7 { ap_memory {  { trottersLocal_V_2_7_address0 mem_address 1 4 }  { trottersLocal_V_2_7_ce0 mem_ce 1 1 }  { trottersLocal_V_2_7_we0 mem_we 1 1 }  { trottersLocal_V_2_7_d0 mem_din 1 16 } } }
	trottersLocal_V_2_8 { ap_memory {  { trottersLocal_V_2_8_address0 mem_address 1 4 }  { trottersLocal_V_2_8_ce0 mem_ce 1 1 }  { trottersLocal_V_2_8_we0 mem_we 1 1 }  { trottersLocal_V_2_8_d0 mem_din 1 16 } } }
	trottersLocal_V_2_9 { ap_memory {  { trottersLocal_V_2_9_address0 mem_address 1 4 }  { trottersLocal_V_2_9_ce0 mem_ce 1 1 }  { trottersLocal_V_2_9_we0 mem_we 1 1 }  { trottersLocal_V_2_9_d0 mem_din 1 16 } } }
	trottersLocal_V_2_10 { ap_memory {  { trottersLocal_V_2_10_address0 mem_address 1 4 }  { trottersLocal_V_2_10_ce0 mem_ce 1 1 }  { trottersLocal_V_2_10_we0 mem_we 1 1 }  { trottersLocal_V_2_10_d0 mem_din 1 16 } } }
	trottersLocal_V_2_11 { ap_memory {  { trottersLocal_V_2_11_address0 mem_address 1 4 }  { trottersLocal_V_2_11_ce0 mem_ce 1 1 }  { trottersLocal_V_2_11_we0 mem_we 1 1 }  { trottersLocal_V_2_11_d0 mem_din 1 16 } } }
	trottersLocal_V_2_12 { ap_memory {  { trottersLocal_V_2_12_address0 mem_address 1 4 }  { trottersLocal_V_2_12_ce0 mem_ce 1 1 }  { trottersLocal_V_2_12_we0 mem_we 1 1 }  { trottersLocal_V_2_12_d0 mem_din 1 16 } } }
	trottersLocal_V_2_13 { ap_memory {  { trottersLocal_V_2_13_address0 mem_address 1 4 }  { trottersLocal_V_2_13_ce0 mem_ce 1 1 }  { trottersLocal_V_2_13_we0 mem_we 1 1 }  { trottersLocal_V_2_13_d0 mem_din 1 16 } } }
	trottersLocal_V_2_14 { ap_memory {  { trottersLocal_V_2_14_address0 mem_address 1 4 }  { trottersLocal_V_2_14_ce0 mem_ce 1 1 }  { trottersLocal_V_2_14_we0 mem_we 1 1 }  { trottersLocal_V_2_14_d0 mem_din 1 16 } } }
	trottersLocal_V_2_15 { ap_memory {  { trottersLocal_V_2_15_address0 mem_address 1 4 }  { trottersLocal_V_2_15_ce0 mem_ce 1 1 }  { trottersLocal_V_2_15_we0 mem_we 1 1 }  { trottersLocal_V_2_15_d0 mem_din 1 16 } } }
	trottersLocal_V_3_0 { ap_memory {  { trottersLocal_V_3_0_address0 mem_address 1 4 }  { trottersLocal_V_3_0_ce0 mem_ce 1 1 }  { trottersLocal_V_3_0_we0 mem_we 1 1 }  { trottersLocal_V_3_0_d0 mem_din 1 16 } } }
	trottersLocal_V_3_1 { ap_memory {  { trottersLocal_V_3_1_address0 mem_address 1 4 }  { trottersLocal_V_3_1_ce0 mem_ce 1 1 }  { trottersLocal_V_3_1_we0 mem_we 1 1 }  { trottersLocal_V_3_1_d0 mem_din 1 16 } } }
	trottersLocal_V_3_2 { ap_memory {  { trottersLocal_V_3_2_address0 mem_address 1 4 }  { trottersLocal_V_3_2_ce0 mem_ce 1 1 }  { trottersLocal_V_3_2_we0 mem_we 1 1 }  { trottersLocal_V_3_2_d0 mem_din 1 16 } } }
	trottersLocal_V_3_3 { ap_memory {  { trottersLocal_V_3_3_address0 mem_address 1 4 }  { trottersLocal_V_3_3_ce0 mem_ce 1 1 }  { trottersLocal_V_3_3_we0 mem_we 1 1 }  { trottersLocal_V_3_3_d0 mem_din 1 16 } } }
	trottersLocal_V_3_4 { ap_memory {  { trottersLocal_V_3_4_address0 mem_address 1 4 }  { trottersLocal_V_3_4_ce0 mem_ce 1 1 }  { trottersLocal_V_3_4_we0 mem_we 1 1 }  { trottersLocal_V_3_4_d0 mem_din 1 16 } } }
	trottersLocal_V_3_5 { ap_memory {  { trottersLocal_V_3_5_address0 mem_address 1 4 }  { trottersLocal_V_3_5_ce0 mem_ce 1 1 }  { trottersLocal_V_3_5_we0 mem_we 1 1 }  { trottersLocal_V_3_5_d0 mem_din 1 16 } } }
	trottersLocal_V_3_6 { ap_memory {  { trottersLocal_V_3_6_address0 mem_address 1 4 }  { trottersLocal_V_3_6_ce0 mem_ce 1 1 }  { trottersLocal_V_3_6_we0 mem_we 1 1 }  { trottersLocal_V_3_6_d0 mem_din 1 16 } } }
	trottersLocal_V_3_7 { ap_memory {  { trottersLocal_V_3_7_address0 mem_address 1 4 }  { trottersLocal_V_3_7_ce0 mem_ce 1 1 }  { trottersLocal_V_3_7_we0 mem_we 1 1 }  { trottersLocal_V_3_7_d0 mem_din 1 16 } } }
	trottersLocal_V_3_8 { ap_memory {  { trottersLocal_V_3_8_address0 mem_address 1 4 }  { trottersLocal_V_3_8_ce0 mem_ce 1 1 }  { trottersLocal_V_3_8_we0 mem_we 1 1 }  { trottersLocal_V_3_8_d0 mem_din 1 16 } } }
	trottersLocal_V_3_9 { ap_memory {  { trottersLocal_V_3_9_address0 mem_address 1 4 }  { trottersLocal_V_3_9_ce0 mem_ce 1 1 }  { trottersLocal_V_3_9_we0 mem_we 1 1 }  { trottersLocal_V_3_9_d0 mem_din 1 16 } } }
	trottersLocal_V_3_10 { ap_memory {  { trottersLocal_V_3_10_address0 mem_address 1 4 }  { trottersLocal_V_3_10_ce0 mem_ce 1 1 }  { trottersLocal_V_3_10_we0 mem_we 1 1 }  { trottersLocal_V_3_10_d0 mem_din 1 16 } } }
	trottersLocal_V_3_11 { ap_memory {  { trottersLocal_V_3_11_address0 mem_address 1 4 }  { trottersLocal_V_3_11_ce0 mem_ce 1 1 }  { trottersLocal_V_3_11_we0 mem_we 1 1 }  { trottersLocal_V_3_11_d0 mem_din 1 16 } } }
	trottersLocal_V_3_12 { ap_memory {  { trottersLocal_V_3_12_address0 mem_address 1 4 }  { trottersLocal_V_3_12_ce0 mem_ce 1 1 }  { trottersLocal_V_3_12_we0 mem_we 1 1 }  { trottersLocal_V_3_12_d0 mem_din 1 16 } } }
	trottersLocal_V_3_13 { ap_memory {  { trottersLocal_V_3_13_address0 mem_address 1 4 }  { trottersLocal_V_3_13_ce0 mem_ce 1 1 }  { trottersLocal_V_3_13_we0 mem_we 1 1 }  { trottersLocal_V_3_13_d0 mem_din 1 16 } } }
	trottersLocal_V_3_14 { ap_memory {  { trottersLocal_V_3_14_address0 mem_address 1 4 }  { trottersLocal_V_3_14_ce0 mem_ce 1 1 }  { trottersLocal_V_3_14_we0 mem_we 1 1 }  { trottersLocal_V_3_14_d0 mem_din 1 16 } } }
	trottersLocal_V_3_15 { ap_memory {  { trottersLocal_V_3_15_address0 mem_address 1 4 }  { trottersLocal_V_3_15_ce0 mem_ce 1 1 }  { trottersLocal_V_3_15_we0 mem_we 1 1 }  { trottersLocal_V_3_15_d0 mem_din 1 16 } } }
}
