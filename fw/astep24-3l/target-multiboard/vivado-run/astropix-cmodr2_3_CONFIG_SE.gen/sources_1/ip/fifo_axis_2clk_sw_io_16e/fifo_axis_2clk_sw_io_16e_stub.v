// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Feb 25 12:06:27 2026
// Host        : argon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/daq/AstroPix/260225_dev_richard/astep-fw/fw/astep24-3l/target-multiboard/vivado-run/astropix-cmodr2_3_CONFIG_SE.gen/sources_1/ip/fifo_axis_2clk_sw_io_16e/fifo_axis_2clk_sw_io_16e_stub.v
// Design      : fifo_axis_2clk_sw_io_16e
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_data_fifo_v2_0_11_top,Vivado 2023.2" *)
module fifo_axis_2clk_sw_io_16e(s_axis_aresetn, s_axis_aclk, s_axis_tvalid, 
  s_axis_tready, s_axis_tdata, s_axis_tlast, s_axis_tid, s_axis_tdest, m_axis_aclk, 
  m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tlast, m_axis_tid, m_axis_tdest, 
  almost_empty, almost_full)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[7:0],s_axis_tlast,s_axis_tid[7:0],s_axis_tdest[7:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[7:0],m_axis_tlast,m_axis_tid[7:0],m_axis_tdest[7:0],almost_empty,almost_full" */
/* synthesis syn_force_seq_prim="s_axis_aclk" */
/* synthesis syn_force_seq_prim="m_axis_aclk" */;
  input s_axis_aresetn;
  input s_axis_aclk /* synthesis syn_isclock = 1 */;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [7:0]s_axis_tdest;
  input m_axis_aclk /* synthesis syn_isclock = 1 */;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tdest;
  output almost_empty;
  output almost_full;
endmodule
