// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module QuantumMonteCarloU50_TrotterUnitFinal (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        t_offset,
        stage,
        iPack,
        iSpin,
        trotters_address0,
        trotters_ce0,
        trotters_we0,
        trotters_d0,
        trotters_q0,
        dH,
        upSpin,
        downSpin,
        Beta,
        dHTunnel,
        logRandNumber
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [1:0] t_offset;
input  [12:0] stage;
input  [7:0] iPack;
input  [3:0] iSpin;
output  [7:0] trotters_address0;
output   trotters_ce0;
output   trotters_we0;
output  [15:0] trotters_d0;
input  [15:0] trotters_q0;
input  [31:0] dH;
input  [0:0] upSpin;
input  [0:0] downSpin;
input  [31:0] Beta;
input  [31:0] dHTunnel;
input  [31:0] logRandNumber;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] trotters_address0;
reg trotters_ce0;
reg trotters_we0;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] iSpin_cast_fu_156_p1;
reg   [31:0] iSpin_cast_reg_389;
wire   [0:0] inside_fu_190_p2;
reg   [0:0] inside_reg_394;
wire   [0:0] xor_ln1049_fu_196_p2;
reg   [0:0] xor_ln1049_reg_398;
wire   [31:0] grp_fu_133_p2;
reg   [31:0] sub_reg_404;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_137_p2;
reg   [31:0] add4_reg_409;
wire   [31:0] select_ln1049_fu_218_p3;
reg   [31:0] select_ln1049_reg_414;
wire    ap_CS_fsm_state9;
reg   [7:0] trotters_addr_reg_419;
wire    ap_CS_fsm_state12;
wire   [31:0] grp_fu_146_p2;
reg   [31:0] div_reg_424;
reg   [15:0] p_Val2_s_reg_430;
wire    ap_CS_fsm_state13;
wire   [0:0] p_Result_1_fu_231_p3;
reg   [0:0] p_Result_1_reg_435;
wire   [31:0] grp_fu_141_p2;
reg   [31:0] dHTmp_reg_441;
wire   [31:0] dHTmp_1_fu_252_p3;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln131_fu_294_p2;
reg   [0:0] icmp_ln131_reg_452;
wire   [0:0] icmp_ln131_1_fu_300_p2;
reg   [0:0] icmp_ln131_1_reg_457;
wire   [0:0] icmp_ln131_2_fu_306_p2;
reg   [0:0] icmp_ln131_2_reg_462;
wire   [0:0] icmp_ln131_3_fu_312_p2;
reg   [0:0] icmp_ln131_3_reg_467;
wire   [0:0] and_ln131_1_fu_332_p2;
reg   [0:0] and_ln131_1_reg_472;
wire    ap_CS_fsm_state15;
reg   [15:0] p_Result_s_fu_343_p4;
reg   [15:0] p_Result_s_reg_476;
wire   [63:0] zext_ln113_fu_224_p1;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state10;
wire   [12:0] t_offset_cast_fu_160_p1;
wire   [0:0] icmp_ln106_fu_164_p2;
wire   [12:0] or_ln_fu_176_p3;
wire   [0:0] xor_ln106_fu_170_p2;
wire   [0:0] icmp_ln106_1_fu_184_p2;
wire   [0:0] xor_ln1049_1_fu_202_p2;
wire   [0:0] and_ln117_fu_207_p2;
wire   [31:0] select_ln117_fu_212_p3;
wire   [15:0] zext_ln819_fu_228_p1;
wire   [31:0] bitcast_ln127_fu_239_p1;
wire   [31:0] xor_ln127_fu_242_p2;
wire   [31:0] bitcast_ln127_1_fu_248_p1;
wire   [31:0] bitcast_ln131_fu_259_p1;
wire   [31:0] bitcast_ln131_1_fu_277_p1;
wire   [7:0] tmp_fu_263_p4;
wire   [22:0] trunc_ln131_fu_273_p1;
wire   [7:0] tmp_1_fu_280_p4;
wire   [22:0] trunc_ln131_1_fu_290_p1;
wire   [0:0] or_ln131_fu_318_p2;
wire   [0:0] or_ln131_1_fu_322_p2;
wire   [0:0] and_ln131_fu_326_p2;
wire   [0:0] grp_fu_152_p2;
wire   [0:0] p_Repl2_s_fu_338_p2;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
end

QuantumMonteCarloU50_fsub_32ns_32ns_32_7_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_7_full_dsp_1_U83(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(dH),
    .din1(dHTunnel),
    .ce(1'b1),
    .dout(grp_fu_133_p2)
);

QuantumMonteCarloU50_fadd_32ns_32ns_32_7_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U84(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(dH),
    .din1(dHTunnel),
    .ce(1'b1),
    .dout(grp_fu_137_p2)
);

QuantumMonteCarloU50_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U85(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(select_ln1049_reg_414),
    .din1(32'd1073741824),
    .ce(1'b1),
    .dout(grp_fu_141_p2)
);

QuantumMonteCarloU50_fdiv_32ns_32ns_32_12_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_12_no_dsp_1_U86(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(logRandNumber),
    .din1(Beta),
    .ce(1'b1),
    .dout(grp_fu_146_p2)
);

QuantumMonteCarloU50_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U87(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(dHTmp_1_fu_252_p3),
    .din1(div_reg_424),
    .ce(1'b1),
    .opcode(5'd2),
    .dout(grp_fu_152_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((xor_ln1049_reg_398 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        add4_reg_409 <= grp_fu_137_p2;
        sub_reg_404 <= grp_fu_133_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        and_ln131_1_reg_472 <= and_ln131_1_fu_332_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        dHTmp_reg_441 <= grp_fu_141_p2;
        p_Result_1_reg_435 <= p_Result_1_fu_231_p3;
        p_Val2_s_reg_430 <= trotters_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        div_reg_424 <= grp_fu_146_p2;
        trotters_addr_reg_419 <= zext_ln113_fu_224_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        iSpin_cast_reg_389[3 : 0] <= iSpin_cast_fu_156_p1[3 : 0];
        inside_reg_394 <= inside_fu_190_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        icmp_ln131_1_reg_457 <= icmp_ln131_1_fu_300_p2;
        icmp_ln131_2_reg_462 <= icmp_ln131_2_fu_306_p2;
        icmp_ln131_3_reg_467 <= icmp_ln131_3_fu_312_p2;
        icmp_ln131_reg_452 <= icmp_ln131_fu_294_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln131_1_fu_332_p2) & (1'b1 == ap_CS_fsm_state15))) begin
        p_Result_s_reg_476 <= p_Result_s_fu_343_p4;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        select_ln1049_reg_414 <= select_ln1049_fu_218_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((inside_fu_190_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        xor_ln1049_reg_398 <= xor_ln1049_fu_196_p2;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        trotters_address0 = trotters_addr_reg_419;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        trotters_address0 = zext_ln113_fu_224_p1;
    end else begin
        trotters_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12))) begin
        trotters_ce0 = 1'b1;
    end else begin
        trotters_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln131_1_reg_472) & (inside_reg_394 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        trotters_we0 = 1'b1;
    end else begin
        trotters_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((inside_fu_190_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else if (((inside_fu_190_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln117_fu_207_p2 = (xor_ln1049_1_fu_202_p2 & upSpin);

assign and_ln131_1_fu_332_p2 = (grp_fu_152_p2 & and_ln131_fu_326_p2);

assign and_ln131_fu_326_p2 = (or_ln131_fu_318_p2 & or_ln131_1_fu_322_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bitcast_ln127_1_fu_248_p1 = xor_ln127_fu_242_p2;

assign bitcast_ln127_fu_239_p1 = dHTmp_reg_441;

assign bitcast_ln131_1_fu_277_p1 = div_reg_424;

assign bitcast_ln131_fu_259_p1 = dHTmp_1_fu_252_p3;

assign dHTmp_1_fu_252_p3 = ((p_Result_1_reg_435[0:0] == 1'b1) ? bitcast_ln127_1_fu_248_p1 : dHTmp_reg_441);

assign iSpin_cast_fu_156_p1 = iSpin;

assign icmp_ln106_1_fu_184_p2 = ((or_ln_fu_176_p3 > stage) ? 1'b1 : 1'b0);

assign icmp_ln106_fu_164_p2 = ((stage < t_offset_cast_fu_160_p1) ? 1'b1 : 1'b0);

assign icmp_ln131_1_fu_300_p2 = ((trunc_ln131_fu_273_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln131_2_fu_306_p2 = ((tmp_1_fu_280_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln131_3_fu_312_p2 = ((trunc_ln131_1_fu_290_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln131_fu_294_p2 = ((tmp_fu_263_p4 != 8'd255) ? 1'b1 : 1'b0);

assign inside_fu_190_p2 = (xor_ln106_fu_170_p2 & icmp_ln106_1_fu_184_p2);

assign or_ln131_1_fu_322_p2 = (icmp_ln131_3_reg_467 | icmp_ln131_2_reg_462);

assign or_ln131_fu_318_p2 = (icmp_ln131_reg_452 | icmp_ln131_1_reg_457);

assign or_ln_fu_176_p3 = {{11'd1024}, {t_offset}};

assign p_Repl2_s_fu_338_p2 = (p_Result_1_reg_435 ^ 1'd1);

assign p_Result_1_fu_231_p3 = trotters_q0[zext_ln819_fu_228_p1];

always @ (*) begin
    p_Result_s_fu_343_p4 = p_Val2_s_reg_430;
    p_Result_s_fu_343_p4[iSpin_cast_reg_389] = |(p_Repl2_s_fu_338_p2);
end

assign select_ln1049_fu_218_p3 = ((xor_ln1049_reg_398[0:0] == 1'b1) ? dH : select_ln117_fu_212_p3);

assign select_ln117_fu_212_p3 = ((and_ln117_fu_207_p2[0:0] == 1'b1) ? sub_reg_404 : add4_reg_409);

assign t_offset_cast_fu_160_p1 = t_offset;

assign tmp_1_fu_280_p4 = {{bitcast_ln131_1_fu_277_p1[30:23]}};

assign tmp_fu_263_p4 = {{bitcast_ln131_fu_259_p1[30:23]}};

assign trotters_d0 = p_Result_s_reg_476;

assign trunc_ln131_1_fu_290_p1 = bitcast_ln131_1_fu_277_p1[22:0];

assign trunc_ln131_fu_273_p1 = bitcast_ln131_fu_259_p1[22:0];

assign xor_ln1049_1_fu_202_p2 = (xor_ln1049_reg_398 ^ 1'd1);

assign xor_ln1049_fu_196_p2 = (upSpin ^ downSpin);

assign xor_ln106_fu_170_p2 = (icmp_ln106_fu_164_p2 ^ 1'd1);

assign xor_ln127_fu_242_p2 = (bitcast_ln127_fu_239_p1 ^ 32'd2147483648);

assign zext_ln113_fu_224_p1 = iPack;

assign zext_ln819_fu_228_p1 = iSpin;

always @ (posedge ap_clk) begin
    iSpin_cast_reg_389[31:4] <= 28'b0000000000000000000000000000;
end

endmodule //QuantumMonteCarloU50_TrotterUnitFinal