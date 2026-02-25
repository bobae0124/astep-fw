// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Feb 25 12:06:52 2026
// Host        : argon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/daq/AstroPix/260225_dev_richard/astep-fw/fw/astep24-3l/target-multiboard/vivado-run/astropix-cmodr2_3_CONFIG_SE.gen/sources_1/ip/xadc_astep/xadc_astep_stub.v
// Design      : xadc_astep
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module xadc_astep(s_axis_aclk, m_axis_aclk, m_axis_resetn, 
  m_axis_tdata, m_axis_tvalid, m_axis_tid, m_axis_tready, convst_in, channel_out, busy_out, 
  eoc_out, eos_out, alarm_out, vp_in, vn_in)
/* synthesis syn_black_box black_box_pad_pin="m_axis_resetn,m_axis_tdata[15:0],m_axis_tvalid,m_axis_tid[4:0],m_axis_tready,convst_in,channel_out[4:0],busy_out,eoc_out,eos_out,alarm_out,vp_in,vn_in" */
/* synthesis syn_force_seq_prim="s_axis_aclk" */
/* synthesis syn_force_seq_prim="m_axis_aclk" */;
  input s_axis_aclk /* synthesis syn_isclock = 1 */;
  input m_axis_aclk /* synthesis syn_isclock = 1 */;
  input m_axis_resetn;
  output [15:0]m_axis_tdata;
  output m_axis_tvalid;
  output [4:0]m_axis_tid;
  input m_axis_tready;
  input convst_in;
  output [4:0]channel_out;
  output busy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  input vp_in;
  input vn_in;
endmodule
