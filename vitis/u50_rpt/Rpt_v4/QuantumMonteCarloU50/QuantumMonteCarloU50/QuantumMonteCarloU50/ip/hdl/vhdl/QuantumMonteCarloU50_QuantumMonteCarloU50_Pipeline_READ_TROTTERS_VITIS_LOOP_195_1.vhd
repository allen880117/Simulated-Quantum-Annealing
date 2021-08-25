-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_195_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_AWREADY : IN STD_LOGIC;
    m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WVALID : OUT STD_LOGIC;
    m_axi_gmem_WREADY : IN STD_LOGIC;
    m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_WLAST : OUT STD_LOGIC;
    m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_ARREADY : IN STD_LOGIC;
    m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RVALID : IN STD_LOGIC;
    m_axi_gmem_RREADY : OUT STD_LOGIC;
    m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem_RLAST : IN STD_LOGIC;
    m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BVALID : IN STD_LOGIC;
    m_axi_gmem_BREADY : OUT STD_LOGIC;
    m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln194 : IN STD_LOGIC_VECTOR (57 downto 0);
    trottersLocal_V_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    trottersLocal_V_0_ce0 : OUT STD_LOGIC;
    trottersLocal_V_0_we0 : OUT STD_LOGIC;
    trottersLocal_V_0_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    trottersLocal_V_1_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    trottersLocal_V_1_ce0 : OUT STD_LOGIC;
    trottersLocal_V_1_we0 : OUT STD_LOGIC;
    trottersLocal_V_1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    trottersLocal_V_2_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    trottersLocal_V_2_ce0 : OUT STD_LOGIC;
    trottersLocal_V_2_we0 : OUT STD_LOGIC;
    trottersLocal_V_2_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    trottersLocal_V_3_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    trottersLocal_V_3_ce0 : OUT STD_LOGIC;
    trottersLocal_V_3_we0 : OUT STD_LOGIC;
    trottersLocal_V_3_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_195_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv496_lc_1 : STD_LOGIC_VECTOR (495 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln194_reg_359 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln197_reg_374 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op31_read_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln194_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln194_reg_359_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_reg_363 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln195_reg_363_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln194_fu_216_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln194_reg_369 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln194_reg_369_pp0_iter1_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln197_fu_228_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln197_reg_374_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_addr_read_reg_378 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_phi_mux_empty_phi_fu_162_p4 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_phi_reg_pp0_iter2_empty_reg_159 : STD_LOGIC_VECTOR (511 downto 0);
    signal zext_ln195_fu_286_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal zext_ln195_1_fu_291_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal shiftreg38_fu_80 : STD_LOGIC_VECTOR (495 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal packOfst_fu_84 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_allocacmp_packOfst_load : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln195_fu_234_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal t_fu_88 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln194_2_fu_275_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvar_flatten_fu_92 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln194_fu_201_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln194_fu_282_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln197_fu_298_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln195_fu_224_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln194_1_fu_269_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln194_1_fu_262_p3 : STD_LOGIC_VECTOR (495 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln194_fu_195_p2 = ap_const_lv1_0))) then 
                    indvar_flatten_fu_92 <= add_ln194_fu_201_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_92 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;

    packOfst_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln194_fu_195_p2 = ap_const_lv1_0))) then 
                    packOfst_fu_84 <= add_ln195_fu_234_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    packOfst_fu_84 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    shiftreg38_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    shiftreg38_fu_80 <= ap_const_lv496_lc_1;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    shiftreg38_fu_80 <= ap_phi_mux_empty_phi_fu_162_p4(511 downto 16);
                end if;
            end if; 
        end if;
    end process;

    t_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    t_fu_88 <= ap_const_lv3_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    t_fu_88 <= select_ln194_2_fu_275_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln194_reg_359 <= icmp_ln194_fu_195_p2;
                icmp_ln194_reg_359_pp0_iter1_reg <= icmp_ln194_reg_359;
                icmp_ln195_reg_363_pp0_iter1_reg <= icmp_ln195_reg_363;
                icmp_ln197_reg_374_pp0_iter1_reg <= icmp_ln197_reg_374;
                select_ln194_reg_369_pp0_iter1_reg <= select_ln194_reg_369;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                gmem_addr_read_reg_378 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln194_fu_195_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln195_reg_363 <= icmp_ln195_fu_210_p2;
                icmp_ln197_reg_374 <= icmp_ln197_fu_228_p2;
                select_ln194_reg_369 <= select_ln194_fu_216_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln194_1_fu_269_p2 <= std_logic_vector(unsigned(t_fu_88) + unsigned(ap_const_lv3_1));
    add_ln194_fu_201_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv11_1));
    add_ln195_fu_234_p2 <= std_logic_vector(unsigned(select_ln194_fu_216_p3) + unsigned(ap_const_lv9_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem_RVALID, ap_predicate_op31_read_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (m_axi_gmem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem_RVALID, ap_predicate_op31_read_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (m_axi_gmem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_gmem_RVALID, ap_predicate_op31_read_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (m_axi_gmem_RVALID = ap_const_logic_0));
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln194_fu_195_p2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln194_fu_195_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln194_reg_359, ap_block_pp0_stage0_subdone)
    begin
        if (((icmp_ln194_reg_359 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_phi_mux_empty_phi_fu_162_p4_assign_proc : process(icmp_ln194_reg_359_pp0_iter1_reg, icmp_ln197_reg_374_pp0_iter1_reg, gmem_addr_read_reg_378, ap_phi_reg_pp0_iter2_empty_reg_159, zext_ln195_fu_286_p1)
    begin
        if ((icmp_ln194_reg_359_pp0_iter1_reg = ap_const_lv1_0)) then
            if ((icmp_ln197_reg_374_pp0_iter1_reg = ap_const_lv1_0)) then 
                ap_phi_mux_empty_phi_fu_162_p4 <= zext_ln195_fu_286_p1;
            elsif ((icmp_ln197_reg_374_pp0_iter1_reg = ap_const_lv1_1)) then 
                ap_phi_mux_empty_phi_fu_162_p4 <= gmem_addr_read_reg_378;
            else 
                ap_phi_mux_empty_phi_fu_162_p4 <= ap_phi_reg_pp0_iter2_empty_reg_159;
            end if;
        else 
            ap_phi_mux_empty_phi_fu_162_p4 <= ap_phi_reg_pp0_iter2_empty_reg_159;
        end if; 
    end process;

    ap_phi_reg_pp0_iter2_empty_reg_159 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_predicate_op31_read_state2_assign_proc : process(icmp_ln194_reg_359, icmp_ln197_reg_374)
    begin
                ap_predicate_op31_read_state2 <= ((icmp_ln197_reg_374 = ap_const_lv1_1) and (icmp_ln194_reg_359 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_92)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_92;
        end if; 
    end process;


    ap_sig_allocacmp_packOfst_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, packOfst_fu_84)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_packOfst_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_packOfst_load <= packOfst_fu_84;
        end if; 
    end process;


    gmem_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_gmem_RVALID, ap_predicate_op31_read_state2, ap_block_pp0_stage0)
    begin
        if (((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            gmem_blk_n_R <= m_axi_gmem_RVALID;
        else 
            gmem_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln194_fu_195_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv11_400) else "0";
    icmp_ln195_fu_210_p2 <= "1" when (ap_sig_allocacmp_packOfst_load = ap_const_lv9_100) else "0";
    icmp_ln197_fu_228_p2 <= "1" when (trunc_ln195_fu_224_p1 = ap_const_lv5_0) else "0";
    m_axi_gmem_ARADDR <= ap_const_lv64_0;
    m_axi_gmem_ARBURST <= ap_const_lv2_0;
    m_axi_gmem_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem_ARID <= ap_const_lv1_0;
    m_axi_gmem_ARLEN <= ap_const_lv32_0;
    m_axi_gmem_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem_ARPROT <= ap_const_lv3_0;
    m_axi_gmem_ARQOS <= ap_const_lv4_0;
    m_axi_gmem_ARREGION <= ap_const_lv4_0;
    m_axi_gmem_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem_ARUSER <= ap_const_lv1_0;
    m_axi_gmem_ARVALID <= ap_const_logic_0;
    m_axi_gmem_AWADDR <= ap_const_lv64_0;
    m_axi_gmem_AWBURST <= ap_const_lv2_0;
    m_axi_gmem_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem_AWID <= ap_const_lv1_0;
    m_axi_gmem_AWLEN <= ap_const_lv32_0;
    m_axi_gmem_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem_AWPROT <= ap_const_lv3_0;
    m_axi_gmem_AWQOS <= ap_const_lv4_0;
    m_axi_gmem_AWREGION <= ap_const_lv4_0;
    m_axi_gmem_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem_AWUSER <= ap_const_lv1_0;
    m_axi_gmem_AWVALID <= ap_const_logic_0;
    m_axi_gmem_BREADY <= ap_const_logic_0;

    m_axi_gmem_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op31_read_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op31_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_gmem_RREADY <= ap_const_logic_1;
        else 
            m_axi_gmem_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_WDATA <= ap_const_lv512_lc_1;
    m_axi_gmem_WID <= ap_const_lv1_0;
    m_axi_gmem_WLAST <= ap_const_logic_0;
    m_axi_gmem_WSTRB <= ap_const_lv64_0;
    m_axi_gmem_WUSER <= ap_const_lv1_0;
    m_axi_gmem_WVALID <= ap_const_logic_0;
    select_ln194_1_fu_262_p3 <= 
        ap_const_lv496_lc_1 when (icmp_ln195_reg_363_pp0_iter1_reg(0) = '1') else 
        shiftreg38_fu_80;
    select_ln194_2_fu_275_p3 <= 
        add_ln194_1_fu_269_p2 when (icmp_ln195_reg_363_pp0_iter1_reg(0) = '1') else 
        t_fu_88;
    select_ln194_fu_216_p3 <= 
        ap_const_lv9_0 when (icmp_ln195_fu_210_p2(0) = '1') else 
        ap_sig_allocacmp_packOfst_load;
    trottersLocal_V_0_address0 <= zext_ln195_1_fu_291_p1(8 - 1 downto 0);

    trottersLocal_V_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            trottersLocal_V_0_ce0 <= ap_const_logic_1;
        else 
            trottersLocal_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    trottersLocal_V_0_d0 <= trunc_ln197_fu_298_p1;

    trottersLocal_V_0_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln194_fu_282_p1)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln194_fu_282_p1 = ap_const_lv2_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            trottersLocal_V_0_we0 <= ap_const_logic_1;
        else 
            trottersLocal_V_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trottersLocal_V_1_address0 <= zext_ln195_1_fu_291_p1(8 - 1 downto 0);

    trottersLocal_V_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            trottersLocal_V_1_ce0 <= ap_const_logic_1;
        else 
            trottersLocal_V_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    trottersLocal_V_1_d0 <= trunc_ln197_fu_298_p1;

    trottersLocal_V_1_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln194_fu_282_p1)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln194_fu_282_p1 = ap_const_lv2_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            trottersLocal_V_1_we0 <= ap_const_logic_1;
        else 
            trottersLocal_V_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trottersLocal_V_2_address0 <= zext_ln195_1_fu_291_p1(8 - 1 downto 0);

    trottersLocal_V_2_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            trottersLocal_V_2_ce0 <= ap_const_logic_1;
        else 
            trottersLocal_V_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    trottersLocal_V_2_d0 <= trunc_ln197_fu_298_p1;

    trottersLocal_V_2_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln194_fu_282_p1)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln194_fu_282_p1 = ap_const_lv2_2) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            trottersLocal_V_2_we0 <= ap_const_logic_1;
        else 
            trottersLocal_V_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trottersLocal_V_3_address0 <= zext_ln195_1_fu_291_p1(8 - 1 downto 0);

    trottersLocal_V_3_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            trottersLocal_V_3_ce0 <= ap_const_logic_1;
        else 
            trottersLocal_V_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    trottersLocal_V_3_d0 <= trunc_ln197_fu_298_p1;

    trottersLocal_V_3_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln194_fu_282_p1)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln194_fu_282_p1 = ap_const_lv2_3) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            trottersLocal_V_3_we0 <= ap_const_logic_1;
        else 
            trottersLocal_V_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln194_fu_282_p1 <= select_ln194_2_fu_275_p3(2 - 1 downto 0);
    trunc_ln195_fu_224_p1 <= select_ln194_fu_216_p3(5 - 1 downto 0);
    trunc_ln197_fu_298_p1 <= ap_phi_mux_empty_phi_fu_162_p4(16 - 1 downto 0);
    zext_ln195_1_fu_291_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln194_reg_369_pp0_iter1_reg),64));
    zext_ln195_fu_286_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln194_1_fu_262_p3),512));
end behav;
