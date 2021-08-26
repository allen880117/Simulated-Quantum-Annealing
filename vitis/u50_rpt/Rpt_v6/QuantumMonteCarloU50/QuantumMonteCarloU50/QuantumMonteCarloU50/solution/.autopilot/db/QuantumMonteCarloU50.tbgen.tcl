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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "131", "141", "143", "145", "152", "159", "166", "173", "178", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330"],
		"CDFG" : "QuantumMonteCarloU50",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2162371", "EstimateLatencyMax" : "3510942",
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
					{"ID" : "178", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_303_6_fu_1469", "Port" : "gmem", "Inst_start_state" : "153", "Inst_end_state" : "154"},
					{"ID" : "141", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_1110", "Port" : "gmem", "Inst_start_state" : "146", "Inst_end_state" : "147"},
					{"ID" : "131", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987", "Port" : "gmem", "Inst_start_state" : "74", "Inst_end_state" : "75"},
					{"ID" : "129", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_188_1_fu_916", "Port" : "gmem", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
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
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_188_1_fu_916", "Parent" : "0", "Child" : ["130"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_188_1",
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
			{"Name" : "sext_ln187", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "READ_TROTTERS_VITIS_LOOP_188_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_188_1_fu_916.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987", "Parent" : "0", "Child" : ["132", "133", "134", "135", "136", "137", "138", "139", "140"],
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
			{"Name" : "logRandLocal_3_012133", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_2_012132", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_1_012131", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_0_012130", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_3_012129", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_2_012128", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_1_012127", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_0_012126", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_3_012125", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_2_012124", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_1_012123", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_0_012122", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_3_012121", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_2_012120", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_1_012119", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_0_012118", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_3_012117", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_2_012116", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_1_012115", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_0_012114", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRand", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "trunc_ln3", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln2", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "trunc_ln6", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.mux_42_32_1_1_U67", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.mux_42_32_1_1_U68", "Parent" : "131"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.mux_42_32_1_1_U69", "Parent" : "131"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.mux_42_32_1_1_U70", "Parent" : "131"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.mux_42_32_1_1_U71", "Parent" : "131"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.mux_647_16_1_1_U72", "Parent" : "131"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.mux_42_32_1_1_U73", "Parent" : "131"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.mux_647_16_1_1_U74", "Parent" : "131"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE_fu_987.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_1110", "Parent" : "0", "Child" : ["142"],
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
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_1110.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1133", "Parent" : "0", "Child" : ["144"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_LOOP_STEP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "178", "EstimateLatencyMax" : "178",
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
			{"Name" : "trottersLocal_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inside", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inside_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inside_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inside_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_STEP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_LOOP_STEP_fu_1133.flow_control_loop_pipe_sequential_init_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1277", "Parent" : "0", "Child" : ["146", "147", "148", "149", "150", "151"],
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
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1277.fsub_32ns_32ns_32_7_full_dsp_1_U501", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1277.fadd_32ns_32ns_32_7_full_dsp_1_U502", "Parent" : "145"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1277.fmul_32ns_32ns_32_4_max_dsp_1_U503", "Parent" : "145"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1277.fdiv_32ns_32ns_32_12_no_dsp_1_U504", "Parent" : "145"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1277.fcmp_32ns_32ns_1_2_no_dsp_1_U505", "Parent" : "145"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1277.mux_1664_16_1_1_U506", "Parent" : "145"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1308", "Parent" : "0", "Child" : ["153", "154", "155", "156", "157", "158"],
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
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1308.fsub_32ns_32ns_32_7_full_dsp_1_U501", "Parent" : "152"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1308.fadd_32ns_32ns_32_7_full_dsp_1_U502", "Parent" : "152"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1308.fmul_32ns_32ns_32_4_max_dsp_1_U503", "Parent" : "152"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1308.fdiv_32ns_32ns_32_12_no_dsp_1_U504", "Parent" : "152"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1308.fcmp_32ns_32ns_1_2_no_dsp_1_U505", "Parent" : "152"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1308.mux_1664_16_1_1_U506", "Parent" : "152"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1339", "Parent" : "0", "Child" : ["160", "161", "162", "163", "164", "165"],
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
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1339.fsub_32ns_32ns_32_7_full_dsp_1_U501", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1339.fadd_32ns_32ns_32_7_full_dsp_1_U502", "Parent" : "159"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1339.fmul_32ns_32ns_32_4_max_dsp_1_U503", "Parent" : "159"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1339.fdiv_32ns_32ns_32_12_no_dsp_1_U504", "Parent" : "159"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1339.fcmp_32ns_32ns_1_2_no_dsp_1_U505", "Parent" : "159"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1339.mux_1664_16_1_1_U506", "Parent" : "159"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1370", "Parent" : "0", "Child" : ["167", "168", "169", "170", "171", "172"],
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
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1370.fsub_32ns_32ns_32_7_full_dsp_1_U501", "Parent" : "166"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1370.fadd_32ns_32ns_32_7_full_dsp_1_U502", "Parent" : "166"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1370.fmul_32ns_32ns_32_4_max_dsp_1_U503", "Parent" : "166"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1370.fdiv_32ns_32ns_32_12_no_dsp_1_U504", "Parent" : "166"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1370.fcmp_32ns_32ns_1_2_no_dsp_1_U505", "Parent" : "166"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_1370.mux_1664_16_1_1_U506", "Parent" : "166"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1401", "Parent" : "0", "Child" : ["174", "175", "176", "177"],
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
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1401.mux_1664_512_1_1_U538", "Parent" : "173"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1401.mux_1664_512_1_1_U539", "Parent" : "173"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1401.mux_1664_512_1_1_U540", "Parent" : "173"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_1401.flow_control_loop_pipe_sequential_init_U", "Parent" : "173"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_303_6_fu_1469", "Parent" : "0", "Child" : ["179", "180"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_303_6",
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
			{"Name" : "sext_ln187", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "WRITE_TROTTERS_VITIS_LOOP_303_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_303_6_fu_1469.mux_647_16_1_1_U606", "Parent" : "178"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_303_6_fu_1469.flow_control_loop_pipe_sequential_init_U", "Parent" : "178"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U673", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U674", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U675", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U676", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U677", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U678", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U679", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U680", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U681", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U682", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U683", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U684", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U685", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U686", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U687", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U688", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U689", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U690", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U691", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U692", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U693", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U694", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U695", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U696", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U697", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U698", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U699", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U700", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U701", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U702", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U703", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U704", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U705", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U706", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U707", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U708", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U709", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U710", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U711", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U712", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U713", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U714", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U715", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U716", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U717", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U718", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U719", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U720", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U721", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U722", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U723", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U724", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U725", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U726", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U727", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U728", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U729", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U730", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U731", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U732", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U733", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U734", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U735", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U736", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U737", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U738", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U739", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U740", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U741", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U742", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U743", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U744", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U745", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U746", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U747", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U748", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U749", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U750", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U751", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U752", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U753", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U754", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U755", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U756", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U757", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U758", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U759", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U760", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U761", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U762", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U763", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U764", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U765", "Parent" : "0"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U766", "Parent" : "0"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U767", "Parent" : "0"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U768", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U769", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U770", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U771", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U772", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U773", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U774", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U775", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U776", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U777", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U778", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U779", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U780", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U781", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U782", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U783", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U784", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U785", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U786", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U787", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U788", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U789", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U790", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U791", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U792", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U793", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U794", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U795", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U796", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U797", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U798", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U799", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U800", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U801", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U802", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U803", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U804", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U805", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U806", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U807", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U808", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U809", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U810", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U811", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U812", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U813", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U814", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U815", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U816", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U817", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U818", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U819", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U820", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50 {
		gmem {Type IO LastRead 78 FirstWrite -1}
		trotters {Type I LastRead 0 FirstWrite -1}
		Jcoup {Type I LastRead 72 FirstWrite -1}
		h {Type I LastRead 72 FirstWrite -1}
		Jperp {Type I LastRead 68 FirstWrite -1}
		Beta {Type I LastRead 72 FirstWrite -1}
		logRand {Type I LastRead 72 FirstWrite -1}}
	QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_188_1 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln187 {Type I LastRead 0 FirstWrite -1}
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
		logRandLocal_3_012133 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_2_012132 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_1_012131 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_0_012130 {Type I LastRead 0 FirstWrite -1}
		dH_3_0 {Type I LastRead 0 FirstWrite -1}
		dH_2_0 {Type I LastRead 0 FirstWrite -1}
		dH_1_0 {Type I LastRead 0 FirstWrite -1}
		dH_0_0 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_3_012129 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_2_012128 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_1_012127 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_0_012126 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_3_012125 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_2_012124 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_1_012123 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_0_012122 {Type I LastRead 0 FirstWrite -1}
		iSpin_3_012121 {Type I LastRead 0 FirstWrite -1}
		iSpin_2_012120 {Type I LastRead 0 FirstWrite -1}
		iSpin_1_012119 {Type I LastRead 0 FirstWrite -1}
		iSpin_0_012118 {Type I LastRead 0 FirstWrite -1}
		iPack_3_012117 {Type I LastRead 0 FirstWrite -1}
		iPack_2_012116 {Type I LastRead 0 FirstWrite -1}
		iPack_1_012115 {Type I LastRead 0 FirstWrite -1}
		iPack_0_012114 {Type I LastRead 0 FirstWrite -1}
		logRand {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 73 FirstWrite -1}
		trunc_ln3 {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
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
		trunc_ln6 {Type I LastRead 0 FirstWrite -1}
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
		JcoupLocal_0_15 {Type O LastRead -1 FirstWrite 2}}
	QuantumMonteCarloU50_Pipeline_LOOP_STEP {
		dH_3_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_2_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_1_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_0_1_reload {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_15 {Type I LastRead 0 FirstWrite -1}
		inside {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_15 {Type I LastRead 0 FirstWrite -1}
		inside_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_15 {Type I LastRead 0 FirstWrite -1}
		inside_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_15 {Type I LastRead 0 FirstWrite -1}
		inside_3 {Type I LastRead 0 FirstWrite -1}
		dH_3_out {Type O LastRead -1 FirstWrite 64}
		dH_2_out {Type O LastRead -1 FirstWrite 64}
		dH_1_out {Type O LastRead -1 FirstWrite 64}
		dH_0_out {Type O LastRead -1 FirstWrite 64}}
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
	QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_303_6 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln187 {Type I LastRead 0 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "2162371", "Max" : "3510942"}
	, {"Name" : "Interval", "Min" : "2162372", "Max" : "3510943"}
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
