// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Feb 25 12:03:38 2026
// Host        : argon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/daq/AstroPix/260225_dev_richard/astep-fw/fw/astep24-3l/target-multiboard/vivado-run/astropix-cmodr2_3_CONFIG_SE.gen/sources_1/ip/clk_core_extorint_40/clk_core_extorint_40_stub.v
// Design      : clk_core_extorint_40
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_core_extorint_40(clk_in2, clk_in_sel, clk_100, clk_80, clk_10, 
  clk_20, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_in2,clk_in_sel,resetn,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_100" */
/* synthesis syn_force_seq_prim="clk_80" */
/* synthesis syn_force_seq_prim="clk_10" */
/* synthesis syn_force_seq_prim="clk_20" */;
  input clk_in2;
  input clk_in_sel;
  output clk_100 /* synthesis syn_isclock = 1 */;
  output clk_80 /* synthesis syn_isclock = 1 */;
  output clk_10 /* synthesis syn_isclock = 1 */;
  output clk_20 /* synthesis syn_isclock = 1 */;
  input resetn;
  output locked;
  input clk_in1;
endmodule
