set SynModuleInfo {
  {SRCNAME QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1 MODELNAME QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1 RTLNAME QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_189_1
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init RTLNAME QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE MODELNAME QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE RTLNAME QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_mux_42_32_1_1 RTLNAME QuantumMonteCarloU50_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_mux_647_16_1_1 RTLNAME QuantumMonteCarloU50_mux_647_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP MODELNAME QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP RTLNAME QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP}
  {SRCNAME TrotterUnit MODELNAME TrotterUnit RTLNAME QuantumMonteCarloU50_TrotterUnit
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME QuantumMonteCarloU50_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_mux_1664_16_1_1 RTLNAME QuantumMonteCarloU50_mux_1664_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_mux_1664_512_1_1 RTLNAME QuantumMonteCarloU50_mux_1664_512_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME QuantumMonteCarloU50_Pipeline_LOOP_STEP MODELNAME QuantumMonteCarloU50_Pipeline_LOOP_STEP RTLNAME QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_LOOP_STEP}
  {SRCNAME TrotterUnitFinal MODELNAME TrotterUnitFinal RTLNAME QuantumMonteCarloU50_TrotterUnitFinal
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_fsub_32ns_32ns_32_7_full_dsp_1 RTLNAME QuantumMonteCarloU50_fsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME QuantumMonteCarloU50_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME QuantumMonteCarloU50_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME QuantumMonteCarloU50_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP MODELNAME QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP RTLNAME QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP}
  {SRCNAME QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3 MODELNAME QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3 RTLNAME QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_275_3}
  {SRCNAME QuantumMonteCarloU50 MODELNAME QuantumMonteCarloU50 RTLNAME QuantumMonteCarloU50 IS_TOP 1
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_trottersLocal_V_0_0 RTLNAME QuantumMonteCarloU50_trottersLocal_V_0_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_JcoupLocal_0_0 RTLNAME QuantumMonteCarloU50_JcoupLocal_0_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_control_s_axi RTLNAME QuantumMonteCarloU50_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME QuantumMonteCarloU50_gmem_m_axi RTLNAME QuantumMonteCarloU50_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
