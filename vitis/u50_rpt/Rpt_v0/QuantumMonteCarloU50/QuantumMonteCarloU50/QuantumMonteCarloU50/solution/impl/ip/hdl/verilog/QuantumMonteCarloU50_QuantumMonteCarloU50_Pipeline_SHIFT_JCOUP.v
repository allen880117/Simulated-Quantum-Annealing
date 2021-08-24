// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        JcoupLocal_2_address0,
        JcoupLocal_2_ce0,
        JcoupLocal_2_q0,
        JcoupLocal_2_address1,
        JcoupLocal_2_ce1,
        JcoupLocal_2_we1,
        JcoupLocal_2_d1,
        JcoupLocal_3_address1,
        JcoupLocal_3_ce1,
        JcoupLocal_3_we1,
        JcoupLocal_3_d1,
        JcoupLocal_1_address0,
        JcoupLocal_1_ce0,
        JcoupLocal_1_q0,
        JcoupLocal_1_address1,
        JcoupLocal_1_ce1,
        JcoupLocal_1_we1,
        JcoupLocal_1_d1,
        JcoupLocal_0_address0,
        JcoupLocal_0_ce0,
        JcoupLocal_0_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] JcoupLocal_2_address0;
output   JcoupLocal_2_ce0;
input  [16383:0] JcoupLocal_2_q0;
output  [2:0] JcoupLocal_2_address1;
output   JcoupLocal_2_ce1;
output   JcoupLocal_2_we1;
output  [16383:0] JcoupLocal_2_d1;
output  [2:0] JcoupLocal_3_address1;
output   JcoupLocal_3_ce1;
output   JcoupLocal_3_we1;
output  [16383:0] JcoupLocal_3_d1;
output  [2:0] JcoupLocal_1_address0;
output   JcoupLocal_1_ce0;
input  [16383:0] JcoupLocal_1_q0;
output  [2:0] JcoupLocal_1_address1;
output   JcoupLocal_1_ce1;
output   JcoupLocal_1_we1;
output  [16383:0] JcoupLocal_1_d1;
output  [2:0] JcoupLocal_0_address0;
output   JcoupLocal_0_ce0;
input  [16383:0] JcoupLocal_0_q0;

reg ap_idle;
reg JcoupLocal_2_ce0;
reg JcoupLocal_2_ce1;
reg JcoupLocal_2_we1;
reg JcoupLocal_3_ce1;
reg JcoupLocal_3_we1;
reg JcoupLocal_1_ce0;
reg JcoupLocal_1_ce1;
reg JcoupLocal_1_we1;
reg JcoupLocal_0_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln272_fu_121_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln272_fu_133_p1;
reg   [63:0] zext_ln272_reg_155;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] JcoupLocal_2_addr_reg_160;
reg   [2:0] JcoupLocal_1_addr_reg_166;
wire    ap_block_pp0_stage0;
reg   [3:0] packOfst_fu_42;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_packOfst_1;
wire   [3:0] add_ln273_fu_127_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln272_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            packOfst_fu_42 <= add_ln273_fu_127_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            packOfst_fu_42 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln272_fu_121_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_1_addr_reg_166 <= zext_ln272_fu_133_p1;
        JcoupLocal_2_addr_reg_160 <= zext_ln272_fu_133_p1;
        zext_ln272_reg_155[3 : 0] <= zext_ln272_fu_133_p1[3 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_0_ce0 = 1'b1;
    end else begin
        JcoupLocal_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_1_ce0 = 1'b1;
    end else begin
        JcoupLocal_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_1_ce1 = 1'b1;
    end else begin
        JcoupLocal_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_1_we1 = 1'b1;
    end else begin
        JcoupLocal_1_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_2_ce0 = 1'b1;
    end else begin
        JcoupLocal_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_2_ce1 = 1'b1;
    end else begin
        JcoupLocal_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_2_we1 = 1'b1;
    end else begin
        JcoupLocal_2_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_3_ce1 = 1'b1;
    end else begin
        JcoupLocal_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        JcoupLocal_3_we1 = 1'b1;
    end else begin
        JcoupLocal_3_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln272_fu_121_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_packOfst_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_packOfst_1 = packOfst_fu_42;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign JcoupLocal_0_address0 = zext_ln272_fu_133_p1;

assign JcoupLocal_1_address0 = zext_ln272_fu_133_p1;

assign JcoupLocal_1_address1 = JcoupLocal_1_addr_reg_166;

assign JcoupLocal_1_d1 = JcoupLocal_0_q0;

assign JcoupLocal_2_address0 = zext_ln272_fu_133_p1;

assign JcoupLocal_2_address1 = JcoupLocal_2_addr_reg_160;

assign JcoupLocal_2_d1 = JcoupLocal_1_q0;

assign JcoupLocal_3_address1 = zext_ln272_reg_155;

assign JcoupLocal_3_d1 = JcoupLocal_2_q0;

assign add_ln273_fu_127_p2 = (ap_sig_allocacmp_packOfst_1 + 4'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln272_fu_121_p2 = ((ap_sig_allocacmp_packOfst_1 == 4'd8) ? 1'b1 : 1'b0);

assign zext_ln272_fu_133_p1 = ap_sig_allocacmp_packOfst_1;

always @ (posedge ap_clk) begin
    zext_ln272_reg_155[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP
