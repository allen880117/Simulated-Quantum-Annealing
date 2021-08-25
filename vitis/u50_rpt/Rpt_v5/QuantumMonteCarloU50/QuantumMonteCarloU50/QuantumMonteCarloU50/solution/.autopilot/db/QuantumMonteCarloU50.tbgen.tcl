set moduleName QuantumMonteCarloU50
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {QuantumMonteCarloU50}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 2}  }
	{ trotters int 64 regular {axi_slave 0}  }
	{ Jcoup int 64 regular {axi_slave 0}  }
	{ h int 64 regular {axi_slave 0}  }
	{ Jperp float 32 regular {axi_slave 0}  }
	{ Beta float 32 regular {axi_slave 0}  }
	{ logRand int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "trotters","offset": { "type": "dynamic","port_name": "trotters","bundle": "control"},"direction": "READWRITE"},{"cName": "Jcoup","offset": { "type": "dynamic","port_name": "Jcoup","bundle": "control"},"direction": "READONLY"},{"cName": "h","offset": { "type": "dynamic","port_name": "h","bundle": "control"},"direction": "READONLY"},{"cName": "logRand","offset": { "type": "dynamic","port_name": "logRand","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "trotters", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "Jcoup", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "h", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "Jperp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "Beta", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "logRand", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":79}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"QuantumMonteCarloU50","role":"start","value":"0","valid_bit":"0"},{"name":"QuantumMonteCarloU50","role":"continue","value":"0","valid_bit":"4"},{"name":"QuantumMonteCarloU50","role":"auto_start","value":"0","valid_bit":"7"},{"name":"trotters","role":"data","value":"16"},{"name":"Jcoup","role":"data","value":"28"},{"name":"h","role":"data","value":"40"},{"name":"Jperp","role":"data","value":"52"},{"name":"Beta","role":"data","value":"60"},{"name":"logRand","role":"data","value":"68"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"QuantumMonteCarloU50","role":"start","value":"0","valid_bit":"0"},{"name":"QuantumMonteCarloU50","role":"done","value":"0","valid_bit":"1"},{"name":"QuantumMonteCarloU50","role":"idle","value":"0","valid_bit":"2"},{"name":"QuantumMonteCarloU50","role":"ready","value":"0","valid_bit":"3"},{"name":"QuantumMonteCarloU50","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "131", "141", "143", "242", "249", "256", "263", "270", "275", "278", "279", "280"],
		"CDFG" : "QuantumMonteCarloU50",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6265470", "EstimateLatencyMax" : "7614041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1_fu_904", "Port" : "gmem", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "141", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_1098", "Port" : "gmem", "Inst_start_state" : "146", "Inst_end_state" : "147"},
					{"ID" : "131", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975", "Port" : "gmem", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "275", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3_fu_1454", "Port" : "gmem", "Inst_start_state" : "153", "Inst_end_state" : "154"}]},
			{"Name" : "trotters", "Type" : "None", "Direction" : "I"},
			{"Name" : "Jcoup", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "Jperp", "Type" : "None", "Direction" : "I"},
			{"Name" : "Beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRand", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "LOOP_STAGE", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "222", "FirstState" : "ap_ST_fsm_state74", "LastState" : ["ap_ST_fsm_state151"], "QuitState" : ["ap_ST_fsm_state74"], "PreState" : ["ap_ST_fsm_state73"], "PostState" : ["ap_ST_fsm_state152"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_4_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_6_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_7_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_8_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_9_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_10_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_11_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_12_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_13_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_14_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_15_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_0_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_1_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_2_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_3_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_4_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_5_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_6_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_7_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_8_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_9_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_10_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_11_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_12_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_13_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_14_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_15_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_0_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_1_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_2_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_3_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_4_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_5_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_6_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_7_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_8_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_9_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_10_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_11_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_12_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_13_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_14_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_15_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_0_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_1_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_2_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_3_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_4_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_5_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_6_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_7_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_8_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_9_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_10_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_11_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_12_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_13_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_14_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_15_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1_fu_904", "Parent" : "0", "Child" : ["130"],
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
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1_fu_904.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975", "Parent" : "0", "Child" : ["132", "133", "134", "135", "136", "137", "138", "139", "140"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "logRandLocal_3_0562", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_2_0561", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_1_0560", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_0_0559", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_3_0558", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_2_0557", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_1_0556", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_0_0555", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_3_0554", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_2_0553", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_1_0552", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_0_0551", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_3_0550", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_2_0549", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_1_0548", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_0_0547", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_3_0546", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_2_0545", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_1_0544", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_0_0543", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRand", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "trunc_ln5", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln4", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln8", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "logRandLocal_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "logRandLocal_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "logRandLocal_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "downSpin_V_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "downSpin_V_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "downSpin_V_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "downSpin_V_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "upSpin_V_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "upSpin_V_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "upSpin_V_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "upSpin_V_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iSpin_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iSpin_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iSpin_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iSpin_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iPack_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iPack_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iPack_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iPack_0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "UPDATE_INPUT_STATE", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter37", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter37", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.mux_42_32_1_1_U67", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.mux_42_32_1_1_U68", "Parent" : "131"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.mux_42_32_1_1_U69", "Parent" : "131"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.mux_42_32_1_1_U70", "Parent" : "131"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.mux_42_32_1_1_U71", "Parent" : "131"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.mux_647_16_1_1_U72", "Parent" : "131"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.mux_42_32_1_1_U73", "Parent" : "131"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.mux_647_16_1_1_U74", "Parent" : "131"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_975.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_1098", "Parent" : "0", "Child" : ["142"],
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
			{"Name" : "sext_ln235", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_1098.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121", "Parent" : "0", "Child" : ["144", "241"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_LOOP_STEP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1179", "EstimateLatencyMax" : "1179",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dH_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters1", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters2", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters3", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters4", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters5", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters6", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters7", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters8", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters9", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters10", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters11", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters12", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters13", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters14", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters15", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal16", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal17", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal18", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal19", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal20", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal21", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal22", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal23", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal24", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal25", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal26", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal27", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal28", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal29", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal30", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters1", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters2", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters3", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters4", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters5", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters6", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters7", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters8", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters9", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters10", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters11", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters12", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters13", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters14", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters15", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal16", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal17", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal18", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal19", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal20", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal21", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal22", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal23", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal24", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal25", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal26", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal27", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal28", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal29", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal30", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters1", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters2", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters3", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters4", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters5", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters6", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters7", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters8", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters9", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters10", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters11", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters12", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters13", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters14", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters15", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal16", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal17", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal18", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal19", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal20", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal21", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal22", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal23", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal24", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal25", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal26", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal27", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal28", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal29", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal30", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters1", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters2", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters3", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters4", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters5", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters6", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters7", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters8", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters9", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters10", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters11", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters12", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters13", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters14", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters15", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal16", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal17", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal18", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal19", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal20", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal21", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal22", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal23", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal24", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal25", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal26", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal27", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal28", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal29", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal30", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "dH_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_0_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_STEP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage25", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage25_subdone", "QuitState" : "ap_ST_fsm_pp0_stage25", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage25_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402", "Parent" : "143", "Child" : ["145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240"],
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
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U213", "Parent" : "144"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U214", "Parent" : "144"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U215", "Parent" : "144"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U216", "Parent" : "144"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U217", "Parent" : "144"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U218", "Parent" : "144"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U219", "Parent" : "144"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U220", "Parent" : "144"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U221", "Parent" : "144"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U222", "Parent" : "144"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U223", "Parent" : "144"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U224", "Parent" : "144"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U225", "Parent" : "144"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U226", "Parent" : "144"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U227", "Parent" : "144"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U228", "Parent" : "144"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U229", "Parent" : "144"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U230", "Parent" : "144"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U231", "Parent" : "144"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U232", "Parent" : "144"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U233", "Parent" : "144"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U234", "Parent" : "144"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U235", "Parent" : "144"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U236", "Parent" : "144"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U237", "Parent" : "144"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U238", "Parent" : "144"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U239", "Parent" : "144"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U240", "Parent" : "144"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U241", "Parent" : "144"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U242", "Parent" : "144"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U243", "Parent" : "144"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U244", "Parent" : "144"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U245", "Parent" : "144"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U246", "Parent" : "144"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U247", "Parent" : "144"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U248", "Parent" : "144"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U249", "Parent" : "144"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U250", "Parent" : "144"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U251", "Parent" : "144"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U252", "Parent" : "144"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U253", "Parent" : "144"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U254", "Parent" : "144"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U255", "Parent" : "144"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U256", "Parent" : "144"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U257", "Parent" : "144"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U258", "Parent" : "144"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U259", "Parent" : "144"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U260", "Parent" : "144"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U261", "Parent" : "144"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U262", "Parent" : "144"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U263", "Parent" : "144"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U264", "Parent" : "144"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U265", "Parent" : "144"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U266", "Parent" : "144"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U267", "Parent" : "144"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U268", "Parent" : "144"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U269", "Parent" : "144"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U270", "Parent" : "144"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U271", "Parent" : "144"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U272", "Parent" : "144"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U273", "Parent" : "144"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U274", "Parent" : "144"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U275", "Parent" : "144"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U276", "Parent" : "144"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U277", "Parent" : "144"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U278", "Parent" : "144"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U279", "Parent" : "144"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U280", "Parent" : "144"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U281", "Parent" : "144"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U282", "Parent" : "144"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U283", "Parent" : "144"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U284", "Parent" : "144"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U285", "Parent" : "144"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U286", "Parent" : "144"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U287", "Parent" : "144"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U288", "Parent" : "144"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U289", "Parent" : "144"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U290", "Parent" : "144"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U291", "Parent" : "144"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U292", "Parent" : "144"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U293", "Parent" : "144"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U294", "Parent" : "144"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U295", "Parent" : "144"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U296", "Parent" : "144"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U297", "Parent" : "144"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U298", "Parent" : "144"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U299", "Parent" : "144"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U300", "Parent" : "144"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U301", "Parent" : "144"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U302", "Parent" : "144"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U303", "Parent" : "144"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U304", "Parent" : "144"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U305", "Parent" : "144"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U306", "Parent" : "144"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U307", "Parent" : "144"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U308", "Parent" : "144"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1121.flow_control_loop_pipe_sequential_init_U", "Parent" : "143"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1262", "Parent" : "0", "Child" : ["243", "244", "245", "246", "247", "248"],
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
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1262.fsub_32ns_32ns_32_7_full_dsp_1_U485", "Parent" : "242"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1262.fadd_32ns_32ns_32_7_full_dsp_1_U486", "Parent" : "242"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1262.fmul_32ns_32ns_32_4_max_dsp_1_U487", "Parent" : "242"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1262.fdiv_32ns_32ns_32_12_no_dsp_1_U488", "Parent" : "242"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1262.fcmp_32ns_32ns_1_2_no_dsp_1_U489", "Parent" : "242"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1262.mux_1664_16_1_1_U490", "Parent" : "242"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1293", "Parent" : "0", "Child" : ["250", "251", "252", "253", "254", "255"],
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
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1293.fsub_32ns_32ns_32_7_full_dsp_1_U485", "Parent" : "249"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1293.fadd_32ns_32ns_32_7_full_dsp_1_U486", "Parent" : "249"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1293.fmul_32ns_32ns_32_4_max_dsp_1_U487", "Parent" : "249"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1293.fdiv_32ns_32ns_32_12_no_dsp_1_U488", "Parent" : "249"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1293.fcmp_32ns_32ns_1_2_no_dsp_1_U489", "Parent" : "249"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1293.mux_1664_16_1_1_U490", "Parent" : "249"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1324", "Parent" : "0", "Child" : ["257", "258", "259", "260", "261", "262"],
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
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1324.fsub_32ns_32ns_32_7_full_dsp_1_U485", "Parent" : "256"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1324.fadd_32ns_32ns_32_7_full_dsp_1_U486", "Parent" : "256"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1324.fmul_32ns_32ns_32_4_max_dsp_1_U487", "Parent" : "256"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1324.fdiv_32ns_32ns_32_12_no_dsp_1_U488", "Parent" : "256"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1324.fcmp_32ns_32ns_1_2_no_dsp_1_U489", "Parent" : "256"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1324.mux_1664_16_1_1_U490", "Parent" : "256"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1355", "Parent" : "0", "Child" : ["264", "265", "266", "267", "268", "269"],
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
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1355.fsub_32ns_32ns_32_7_full_dsp_1_U485", "Parent" : "263"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1355.fadd_32ns_32ns_32_7_full_dsp_1_U486", "Parent" : "263"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1355.fmul_32ns_32ns_32_4_max_dsp_1_U487", "Parent" : "263"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1355.fdiv_32ns_32ns_32_12_no_dsp_1_U488", "Parent" : "263"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1355.fcmp_32ns_32ns_1_2_no_dsp_1_U489", "Parent" : "263"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1355.mux_1664_16_1_1_U490", "Parent" : "263"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1386", "Parent" : "0", "Child" : ["271", "272", "273", "274"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "260", "EstimateLatencyMax" : "260",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "JcoupLocal_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_1_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_2_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_3_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_3_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "SHIFT_JCOUP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1386.mux_1664_512_1_1_U521", "Parent" : "270"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1386.mux_1664_512_1_1_U522", "Parent" : "270"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1386.mux_1664_512_1_1_U523", "Parent" : "270"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1386.flow_control_loop_pipe_sequential_init_U", "Parent" : "270"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3_fu_1454", "Parent" : "0", "Child" : ["276", "277"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3",
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
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln188", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "WRITE_TROTTERS_VITIS_LOOP_275_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3_fu_1454.mux_647_16_1_1_U588", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3_fu_1454.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U655", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50 {
		gmem {Type IO LastRead 78 FirstWrite -1}
		trotters {Type I LastRead 0 FirstWrite -1}
		Jcoup {Type I LastRead 72 FirstWrite -1}
		h {Type I LastRead 72 FirstWrite -1}
		Jperp {Type I LastRead 68 FirstWrite -1}
		Beta {Type I LastRead 72 FirstWrite -1}
		logRand {Type I LastRead 72 FirstWrite -1}}
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
		trottersLocal_V_3_15 {Type O LastRead -1 FirstWrite 2}}
	QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE {
		logRandLocal_3_0562 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_2_0561 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_1_0560 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_0_0559 {Type I LastRead 0 FirstWrite -1}
		dH_3_0 {Type I LastRead 0 FirstWrite -1}
		dH_2_0 {Type I LastRead 0 FirstWrite -1}
		dH_1_0 {Type I LastRead 0 FirstWrite -1}
		dH_0_0 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_3_0558 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_2_0557 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_1_0556 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_0_0555 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_3_0554 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_2_0553 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_1_0552 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_0_0551 {Type I LastRead 0 FirstWrite -1}
		iSpin_3_0550 {Type I LastRead 0 FirstWrite -1}
		iSpin_2_0549 {Type I LastRead 0 FirstWrite -1}
		iSpin_1_0548 {Type I LastRead 0 FirstWrite -1}
		iSpin_0_0547 {Type I LastRead 0 FirstWrite -1}
		iPack_3_0546 {Type I LastRead 0 FirstWrite -1}
		iPack_2_0545 {Type I LastRead 0 FirstWrite -1}
		iPack_1_0544 {Type I LastRead 0 FirstWrite -1}
		iPack_0_0543 {Type I LastRead 0 FirstWrite -1}
		logRand {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 73 FirstWrite -1}
		trunc_ln5 {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		trunc_ln4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_0 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_1 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_2 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_3 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_4 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_5 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_6 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_7 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_8 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_9 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_10 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_11 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_12 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_13 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_14 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_15 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_0 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_1 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_2 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_3 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_4 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_5 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_6 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_7 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_8 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_9 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_10 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_11 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_12 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_13 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_14 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_15 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_0 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_1 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_2 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_3 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_4 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_5 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_6 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_7 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_8 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_9 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_10 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_11 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_12 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_13 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_14 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_15 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_0 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_1 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_2 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_3 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_4 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_5 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_6 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_7 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_8 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_9 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_10 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_11 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_12 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_13 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_14 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_15 {Type I LastRead 73 FirstWrite -1}
		trunc_ln8 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_3_1_out {Type O LastRead -1 FirstWrite 72}
		logRandLocal_2_1_out {Type O LastRead -1 FirstWrite 72}
		logRandLocal_1_1_out {Type O LastRead -1 FirstWrite 72}
		logRandLocal_0_1_out {Type O LastRead -1 FirstWrite 72}
		dH_3_1_out {Type O LastRead -1 FirstWrite 72}
		dH_2_1_out {Type O LastRead -1 FirstWrite 72}
		dH_1_1_out {Type O LastRead -1 FirstWrite 72}
		dH_0_1_out {Type O LastRead -1 FirstWrite 72}
		downSpin_V_3_1_out {Type O LastRead -1 FirstWrite 72}
		downSpin_V_2_1_out {Type O LastRead -1 FirstWrite 72}
		downSpin_V_1_1_out {Type O LastRead -1 FirstWrite 72}
		downSpin_V_0_1_out {Type O LastRead -1 FirstWrite 72}
		upSpin_V_3_1_out {Type O LastRead -1 FirstWrite 72}
		upSpin_V_2_1_out {Type O LastRead -1 FirstWrite 72}
		upSpin_V_1_1_out {Type O LastRead -1 FirstWrite 72}
		upSpin_V_0_1_out {Type O LastRead -1 FirstWrite 72}
		iSpin_3_1_out {Type O LastRead -1 FirstWrite 72}
		iSpin_2_1_out {Type O LastRead -1 FirstWrite 72}
		iSpin_1_1_out {Type O LastRead -1 FirstWrite 72}
		iSpin_0_1_out {Type O LastRead -1 FirstWrite 72}
		iPack_3_1_out {Type O LastRead -1 FirstWrite 72}
		iPack_2_1_out {Type O LastRead -1 FirstWrite 72}
		iPack_1_1_out {Type O LastRead -1 FirstWrite 72}
		iPack_0_1_out {Type O LastRead -1 FirstWrite 72}}
	QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln235 {Type I LastRead 0 FirstWrite -1}
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
		JcoupLocal_0_15 {Type O LastRead -1 FirstWrite 2}}
	QuantumMonteCarloU50_Pipeline_LOOP_STEP {
		dH_3_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_2_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_1_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_0_1_reload {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_0 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_1 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_2 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_3 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_4 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_5 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_6 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_7 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_8 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_9 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_10 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_11 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_12 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_13 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_14 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_15 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_0 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_1 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_2 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_3 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_4 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_5 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_6 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_7 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_8 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_9 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_10 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_11 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_12 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_13 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_14 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_15 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_0 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_1 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_2 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_3 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_4 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_5 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_6 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_7 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_8 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_9 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_10 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_11 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_12 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_13 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_14 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_15 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_0 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_1 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_2 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_3 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_4 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_5 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_6 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_7 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_8 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_9 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_10 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_11 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_12 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_13 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_14 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_15 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_0 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_1 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_2 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_3 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_4 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_5 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_6 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_7 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_8 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_9 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_10 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_11 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_12 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_13 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_14 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_15 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_0 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_1 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_2 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_3 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_4 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_5 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_6 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_7 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_8 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_9 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_10 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_11 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_12 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_13 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_14 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_15 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_0 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_1 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_2 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_3 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_4 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_5 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_6 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_7 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_8 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_9 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_10 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_11 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_12 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_13 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_14 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_15 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_0 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_1 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_2 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_3 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_4 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_5 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_6 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_7 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_8 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_9 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_10 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_11 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_12 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_13 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_14 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_15 {Type I LastRead 8 FirstWrite -1}
		dH_3_3_out {Type O LastRead -1 FirstWrite 25}
		dH_2_3_out {Type O LastRead -1 FirstWrite 25}
		dH_1_3_out {Type O LastRead -1 FirstWrite 25}
		dH_0_3_out {Type O LastRead -1 FirstWrite 25}}
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
		JcoupLocal30 {Type I LastRead 8 FirstWrite -1}}
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
		logRandNumber {Type I LastRead 0 FirstWrite -1}}
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
		logRandNumber {Type I LastRead 0 FirstWrite -1}}
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
		logRandNumber {Type I LastRead 0 FirstWrite -1}}
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
		logRandNumber {Type I LastRead 0 FirstWrite -1}}
	QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP {
		JcoupLocal_0_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_0 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_1 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_2 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_3 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_4 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_5 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_6 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_7 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_8 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_9 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_10 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_11 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_12 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_13 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_14 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_1_15 {Type IO LastRead 1 FirstWrite 1}
		JcoupLocal_2_0 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_1 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_2 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_3 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_4 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_5 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_6 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_7 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_8 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_9 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_10 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_11 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_12 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_13 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_14 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_2_15 {Type IO LastRead 2 FirstWrite 2}
		JcoupLocal_3_0 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_1 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_2 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_3 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_4 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_5 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_6 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_7 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_8 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_9 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_10 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_11 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_12 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_13 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_14 {Type O LastRead -1 FirstWrite 3}
		JcoupLocal_3_15 {Type O LastRead -1 FirstWrite 3}}
	QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln188 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_15 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_15 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_15 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_15 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6265470", "Max" : "7614041"}
	, {"Name" : "Interval", "Min" : "6265471", "Max" : "7614042"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
