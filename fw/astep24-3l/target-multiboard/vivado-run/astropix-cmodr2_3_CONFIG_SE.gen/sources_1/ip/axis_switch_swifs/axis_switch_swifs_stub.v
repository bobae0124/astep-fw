// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Feb 25 12:03:16 2026
// Host        : argon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/daq/AstroPix/260225_dev_richard/astep-fw/fw/astep24-3l/target-multiboard/vivado-run/astropix-cmodr2_3_CONFIG_SE.gen/sources_1/ip/axis_switch_swifs/axis_switch_swifs_stub.v
// Design      : axis_switch_swifs
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_29_axis_switch,Vivado 2023.2" *)
module axis_switch_swifs(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tlast, s_axis_tid, s_axis_tdest, s_axis_tuser, m_axis_tvalid, 
  m_axis_tready, m_axis_tdata, m_axis_tlast, m_axis_tid, m_axis_tdest, m_axis_tuser, 
  s_decode_err)
/* synthesis syn_black_box black_box_pad_pin="aresetn,s_axis_tvalid[3:0],s_axis_tready[3:0],s_axis_tdata[31:0],s_axis_tlast[3:0],s_axis_tid[31:0],s_axis_tdest[31:0],s_axis_tuser[3:0],m_axis_tvalid[3:0],m_axis_tready[3:0],m_axis_tdata[31:0],m_axis_tlast[3:0],m_axis_tid[31:0],m_axis_tdest[31:0],m_axis_tuser[3:0],s_decode_err[3:0]" */
/* synthesis syn_force_seq_prim="aclk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input aresetn;
  input [3:0]s_axis_tvalid;
  output [3:0]s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tlast;
  input [31:0]s_axis_tid;
  input [31:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output [3:0]m_axis_tvalid;
  input [3:0]m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tlast;
  output [31:0]m_axis_tid;
  output [31:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  output [3:0]s_decode_err;
endmodule
