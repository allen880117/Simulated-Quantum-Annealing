set SynModuleInfo {
  {SRCNAME QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_VITIS_LOOP_234_1 MODELNAME QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_VITIS_LOOP_234_1 RTLNAME QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_VITIS_LOOP_234_1
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init RTLNAME QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME copysignf MODELNAME copysignf RTLNAME QuantumMonteCarloU50_copysignf}
  {SRCNAME TrotterUnit MODELNAME TrotterUnit RTLNAME QuantumMonteCarloU50_TrotterUnit
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME QuantumMonteCarloU50_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME TrotterUnitFinal MODELNAME TrotterUnitFinal RTLNAME QuantumMonteCarloU50_TrotterUnitFinal
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_fsub_32ns_32ns_32_7_full_dsp_1 RTLNAME QuantumMonteCarloU50_fsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME QuantumMonteCarloU50_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME QuantumMonteCarloU50_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME QuantumMonteCarloU50_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP MODELNAME QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP RTLNAME QuantumMonteCarloU50_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP}
  {SRCNAME QuantumMonteCarloU50 MODELNAME QuantumMonteCarloU50 RTLNAME QuantumMonteCarloU50 IS_TOP 1
    SUBMODULES {
      {MODELNAME QuantumMonteCarloU50_JcoupLocal_0 RTLNAME QuantumMonteCarloU50_JcoupLocal_0 BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME QuantumMonteCarloU50_control_s_axi RTLNAME QuantumMonteCarloU50_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME QuantumMonteCarloU50_gmem0_m_axi RTLNAME QuantumMonteCarloU50_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME QuantumMonteCarloU50_gmem1_m_axi RTLNAME QuantumMonteCarloU50_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME QuantumMonteCarloU50_gmem2_m_axi RTLNAME QuantumMonteCarloU50_gmem2_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME QuantumMonteCarloU50_gmem3_m_axi RTLNAME QuantumMonteCarloU50_gmem3_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
