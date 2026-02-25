// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Feb 25 12:03:16 2026
// Host        : argon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/daq/AstroPix/260225_dev_richard/astep-fw/fw/astep24-3l/target-multiboard/vivado-run/astropix-cmodr2_3_CONFIG_SE.gen/sources_1/ip/axis_switch_swifs/axis_switch_swifs_sim_netlist.v
// Design      : axis_switch_swifs
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axis_switch_swifs,axis_switch_v1_1_29_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_29_axis_switch,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module axis_switch_swifs
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    s_decode_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TVALID [0:0] [3:3]" *) input [3:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TREADY [0:0] [3:3]" *) output [3:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TDATA [7:0] [31:24]" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TLAST [0:0] [3:3]" *) input [3:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TID [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TID [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TID [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TID [7:0] [31:24]" *) input [31:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDEST [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TDEST [7:0] [31:24]" *) input [31:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TUSER [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TUSER [0:0] [3:3]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S02_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S03_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [3:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3]" *) output [3:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3]" *) input [3:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [7:0] [31:24]" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3]" *) output [3:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TID [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TID [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TID [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TID [7:0] [31:24]" *) output [31:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TDEST [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TDEST [7:0] [31:24]" *) output [31:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TUSER [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TUSER [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TUSER [0:0] [3:3]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [3:0]m_axis_tuser;
  output [3:0]s_decode_err;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [31:0]m_axis_tdest;
  wire [31:0]m_axis_tid;
  wire [3:0]m_axis_tlast;
  wire [3:0]m_axis_tready;
  wire [3:0]m_axis_tuser;
  wire [3:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [31:0]s_axis_tdest;
  wire [31:0]s_axis_tid;
  wire [3:0]s_axis_tlast;
  wire [3:0]s_axis_tready;
  wire [3:0]s_axis_tuser;
  wire [3:0]s_axis_tvalid;
  wire [3:0]s_decode_err;
  wire NLW_inst_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_wready_UNCONNECTED;
  wire [127:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [3:0]NLW_inst_arb_done_UNCONNECTED;
  wire [127:0]NLW_inst_arb_id_UNCONNECTED;
  wire [15:0]NLW_inst_arb_last_UNCONNECTED;
  wire [15:0]NLW_inst_arb_req_UNCONNECTED;
  wire [15:0]NLW_inst_arb_user_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "5" *) 
  (* C_ARB_ON_NUM_CYCLES = "1024" *) 
  (* C_ARB_ON_TLAST = "0" *) 
  (* C_AXIS_SIGNAL_SET = "243" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "8" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "2" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "50462976" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "16'b1111100110011110" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "50462976" *) 
  (* C_NUM_MI_SLOTS = "4" *) 
  (* C_NUM_SI_SLOTS = "4" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "0" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CTRL_REG_WIDTH = "40" *) 
  (* LP_MERGEDOWN_MUX = "1" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "16'b1111100110011110" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "4'b0000" *) 
  (* P_TPAYLOAD_WIDTH = "26" *) 
  axis_switch_swifsaxis_switch_v1_1_29_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[127:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[3:0]),
        .arb_gnt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[127:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[15:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[15:0]),
        .arb_sel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[15:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(1'b0),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_aresetn(1'b0),
        .s_axi_ctrl_arready(NLW_inst_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_inst_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_inst_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_inst_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_inst_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_inst_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err),
        .s_req_suppress({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_29_axisc_register_slice" *) 
module axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[25]_0 ,
    \gen_AB_reg_slice.payload_b_reg[24]_0 ,
    \gen_AB_reg_slice.payload_b_reg[23]_0 ,
    \gen_AB_reg_slice.payload_b_reg[22]_0 ,
    \gen_AB_reg_slice.payload_b_reg[21]_0 ,
    \gen_AB_reg_slice.payload_b_reg[20]_0 ,
    \gen_AB_reg_slice.payload_b_reg[19]_0 ,
    \gen_AB_reg_slice.payload_b_reg[18]_0 ,
    \gen_AB_reg_slice.payload_b_reg[17]_0 ,
    \gen_AB_reg_slice.payload_b_reg[16]_0 ,
    \gen_AB_reg_slice.payload_b_reg[15]_0 ,
    \gen_AB_reg_slice.payload_b_reg[14]_0 ,
    \gen_AB_reg_slice.payload_b_reg[13]_0 ,
    \gen_AB_reg_slice.payload_b_reg[12]_0 ,
    \gen_AB_reg_slice.payload_b_reg[11]_0 ,
    \gen_AB_reg_slice.payload_b_reg[10]_0 ,
    \gen_AB_reg_slice.payload_b_reg[9]_0 ,
    \gen_AB_reg_slice.payload_b_reg[8]_0 ,
    \gen_AB_reg_slice.payload_b_reg[7]_0 ,
    \gen_AB_reg_slice.payload_b_reg[6]_0 ,
    \gen_AB_reg_slice.payload_b_reg[5]_0 ,
    \gen_AB_reg_slice.payload_b_reg[4]_0 ,
    \gen_AB_reg_slice.payload_b_reg[3]_0 ,
    \gen_AB_reg_slice.payload_b_reg[2]_0 ,
    \gen_AB_reg_slice.payload_b_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[0]_0 ,
    areset,
    aclk,
    \gen_AB_reg_slice.state_reg[1]_1 ,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[25]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[24]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[23]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[22]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[21]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[20]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[19]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[18]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[17]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[16]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[15]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[14]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[13]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[12]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[11]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[10]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[9]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[8]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[7]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[6]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[5]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[4]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  input areset;
  input aclk;
  input \gen_AB_reg_slice.state_reg[1]_1 ;
  input [0:0]s_axis_tvalid;
  input [25:0]D;

  wire [25:0]D;
  wire aclk;
  wire areset;
  wire \gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[10] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[11] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[12] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[13] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[14] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[15] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[16] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[17] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[18] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[19] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[20] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[21] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[22] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[23] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[24] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[25] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[4] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[5] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[6] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[7] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[8] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[9] ;
  wire \gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[10]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[11]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[12]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[13]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[14]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[15]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[16]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[17]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[18]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[19]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[20]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[21]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[22]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[23]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[24]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[25]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[4]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[5]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[6]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[7]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[8]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[9]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[10] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[11] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[12] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[13] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[14] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[15] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[16] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[17] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[18] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[19] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[20] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[21] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[22] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[23] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[24] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[25] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[4] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[5] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[6] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[7] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[8] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[9] ;
  wire \gen_AB_reg_slice.sel_rd_i_1__6_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__5_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_1 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[0] ;
  wire [0:0]s_axis_tvalid;

  LUT3 #(
    .INIT(8'h45)) 
    \gen_AB_reg_slice.payload_a[25]_i_1__2 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_a ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \gen_AB_reg_slice.payload_b[25]_i_1__2 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \gen_AB_reg_slice.sel_rd_i_1__6 
       (.I0(\gen_AB_reg_slice.state_reg[1]_1 ),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I2(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__6_n_0 ),
        .Q(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'h78)) 
    \gen_AB_reg_slice.sel_wr_i_1__5 
       (.I0(s_axis_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__5_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF8D8)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(\gen_AB_reg_slice.state_reg[1]_1 ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(\gen_AB_reg_slice.state_reg[1]_1 ),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[24]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[25]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.payload_b_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[26]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .O(\gen_AB_reg_slice.payload_b_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[27]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_b_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[28]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[4] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[4] ),
        .O(\gen_AB_reg_slice.payload_b_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[29]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[5] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[5] ),
        .O(\gen_AB_reg_slice.payload_b_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[30]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[6] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[6] ),
        .O(\gen_AB_reg_slice.payload_b_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[7] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[7] ),
        .O(\gen_AB_reg_slice.payload_b_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[24]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[17] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[17] ),
        .O(\gen_AB_reg_slice.payload_b_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[25]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[18] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[18] ),
        .O(\gen_AB_reg_slice.payload_b_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[26]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[19] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[19] ),
        .O(\gen_AB_reg_slice.payload_b_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[27]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[20] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[20] ),
        .O(\gen_AB_reg_slice.payload_b_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[28]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[21] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[21] ),
        .O(\gen_AB_reg_slice.payload_b_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[29]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[22] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[22] ),
        .O(\gen_AB_reg_slice.payload_b_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[30]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[23] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[23] ),
        .O(\gen_AB_reg_slice.payload_b_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[31]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[24] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[24] ),
        .O(\gen_AB_reg_slice.payload_b_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[24]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[9] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[9] ),
        .O(\gen_AB_reg_slice.payload_b_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[25]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[10] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[10] ),
        .O(\gen_AB_reg_slice.payload_b_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[26]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[11] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[11] ),
        .O(\gen_AB_reg_slice.payload_b_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[27]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[12] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[12] ),
        .O(\gen_AB_reg_slice.payload_b_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[28]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[13] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[13] ),
        .O(\gen_AB_reg_slice.payload_b_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[29]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[14] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[14] ),
        .O(\gen_AB_reg_slice.payload_b_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[30]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[15] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[15] ),
        .O(\gen_AB_reg_slice.payload_b_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[31]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[16] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[16] ),
        .O(\gen_AB_reg_slice.payload_b_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[3]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[8] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[8] ),
        .O(\gen_AB_reg_slice.payload_b_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[3]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[25] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[25] ),
        .O(\gen_AB_reg_slice.payload_b_reg[25]_0 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_29_axisc_register_slice" *) 
module axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_10
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[25]_0 ,
    \gen_AB_reg_slice.payload_b_reg[24]_0 ,
    \gen_AB_reg_slice.payload_b_reg[23]_0 ,
    \gen_AB_reg_slice.payload_b_reg[22]_0 ,
    \gen_AB_reg_slice.payload_b_reg[21]_0 ,
    \gen_AB_reg_slice.payload_b_reg[20]_0 ,
    \gen_AB_reg_slice.payload_b_reg[19]_0 ,
    \gen_AB_reg_slice.payload_b_reg[18]_0 ,
    \gen_AB_reg_slice.payload_b_reg[17]_0 ,
    \gen_AB_reg_slice.payload_b_reg[16]_0 ,
    \gen_AB_reg_slice.payload_b_reg[15]_0 ,
    \gen_AB_reg_slice.payload_b_reg[14]_0 ,
    \gen_AB_reg_slice.payload_b_reg[13]_0 ,
    \gen_AB_reg_slice.payload_b_reg[12]_0 ,
    \gen_AB_reg_slice.payload_b_reg[11]_0 ,
    \gen_AB_reg_slice.payload_b_reg[10]_0 ,
    \gen_AB_reg_slice.payload_b_reg[9]_0 ,
    \gen_AB_reg_slice.payload_b_reg[8]_0 ,
    \gen_AB_reg_slice.payload_b_reg[7]_0 ,
    \gen_AB_reg_slice.payload_b_reg[6]_0 ,
    \gen_AB_reg_slice.payload_b_reg[5]_0 ,
    \gen_AB_reg_slice.payload_b_reg[4]_0 ,
    \gen_AB_reg_slice.payload_b_reg[3]_0 ,
    \gen_AB_reg_slice.payload_b_reg[2]_0 ,
    \gen_AB_reg_slice.payload_b_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[0]_0 ,
    areset,
    aclk,
    \gen_AB_reg_slice.state_reg[1]_1 ,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[25]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[24]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[23]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[22]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[21]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[20]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[19]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[18]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[17]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[16]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[15]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[14]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[13]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[12]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[11]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[10]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[9]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[8]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[7]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[6]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[5]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[4]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  input areset;
  input aclk;
  input \gen_AB_reg_slice.state_reg[1]_1 ;
  input [0:0]s_axis_tvalid;
  input [25:0]D;

  wire [25:0]D;
  wire aclk;
  wire areset;
  wire \gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[10] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[11] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[12] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[13] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[14] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[15] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[16] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[17] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[18] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[19] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[20] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[21] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[22] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[23] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[24] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[25] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[4] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[5] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[6] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[7] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[8] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[9] ;
  wire \gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[10]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[11]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[12]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[13]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[14]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[15]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[16]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[17]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[18]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[19]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[20]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[21]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[22]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[23]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[24]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[25]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[4]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[5]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[6]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[7]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[8]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[9]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[10] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[11] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[12] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[13] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[14] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[15] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[16] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[17] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[18] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[19] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[20] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[21] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[22] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[23] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[24] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[25] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[4] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[5] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[6] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[7] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[8] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[9] ;
  wire \gen_AB_reg_slice.sel_rd_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_1 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[0] ;
  wire [0:0]s_axis_tvalid;

  LUT3 #(
    .INIT(8'h45)) 
    \gen_AB_reg_slice.payload_a[25]_i_1__0 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_a ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \gen_AB_reg_slice.payload_b[25]_i_1__0 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \gen_AB_reg_slice.sel_rd_i_1__2 
       (.I0(\gen_AB_reg_slice.state_reg[1]_1 ),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I2(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__2_n_0 ),
        .Q(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'h78)) 
    \gen_AB_reg_slice.sel_wr_i_1__1 
       (.I0(s_axis_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__1_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF8D8)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(\gen_AB_reg_slice.state_reg[1]_1 ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(\gen_AB_reg_slice.state_reg[1]_1 ),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[24]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[25]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.payload_b_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[26]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .O(\gen_AB_reg_slice.payload_b_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[27]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_b_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[28]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[4] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[4] ),
        .O(\gen_AB_reg_slice.payload_b_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[29]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[5] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[5] ),
        .O(\gen_AB_reg_slice.payload_b_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[30]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[6] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[6] ),
        .O(\gen_AB_reg_slice.payload_b_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[7] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[7] ),
        .O(\gen_AB_reg_slice.payload_b_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[24]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[17] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[17] ),
        .O(\gen_AB_reg_slice.payload_b_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[25]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[18] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[18] ),
        .O(\gen_AB_reg_slice.payload_b_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[26]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[19] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[19] ),
        .O(\gen_AB_reg_slice.payload_b_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[27]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[20] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[20] ),
        .O(\gen_AB_reg_slice.payload_b_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[28]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[21] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[21] ),
        .O(\gen_AB_reg_slice.payload_b_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[29]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[22] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[22] ),
        .O(\gen_AB_reg_slice.payload_b_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[30]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[23] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[23] ),
        .O(\gen_AB_reg_slice.payload_b_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[31]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[24] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[24] ),
        .O(\gen_AB_reg_slice.payload_b_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[24]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[9] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[9] ),
        .O(\gen_AB_reg_slice.payload_b_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[25]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[10] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[10] ),
        .O(\gen_AB_reg_slice.payload_b_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[26]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[11] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[11] ),
        .O(\gen_AB_reg_slice.payload_b_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[27]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[12] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[12] ),
        .O(\gen_AB_reg_slice.payload_b_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[28]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[13] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[13] ),
        .O(\gen_AB_reg_slice.payload_b_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[29]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[14] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[14] ),
        .O(\gen_AB_reg_slice.payload_b_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[30]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[15] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[15] ),
        .O(\gen_AB_reg_slice.payload_b_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[31]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[16] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[16] ),
        .O(\gen_AB_reg_slice.payload_b_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[3]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[8] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[8] ),
        .O(\gen_AB_reg_slice.payload_b_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[3]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[25] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[25] ),
        .O(\gen_AB_reg_slice.payload_b_reg[25]_0 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_29_axisc_register_slice" *) 
module axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_12
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[25]_0 ,
    \gen_AB_reg_slice.payload_b_reg[24]_0 ,
    \gen_AB_reg_slice.payload_b_reg[23]_0 ,
    \gen_AB_reg_slice.payload_b_reg[22]_0 ,
    \gen_AB_reg_slice.payload_b_reg[21]_0 ,
    \gen_AB_reg_slice.payload_b_reg[20]_0 ,
    \gen_AB_reg_slice.payload_b_reg[19]_0 ,
    \gen_AB_reg_slice.payload_b_reg[18]_0 ,
    \gen_AB_reg_slice.payload_b_reg[17]_0 ,
    \gen_AB_reg_slice.payload_b_reg[16]_0 ,
    \gen_AB_reg_slice.payload_b_reg[15]_0 ,
    \gen_AB_reg_slice.payload_b_reg[14]_0 ,
    \gen_AB_reg_slice.payload_b_reg[13]_0 ,
    \gen_AB_reg_slice.payload_b_reg[12]_0 ,
    \gen_AB_reg_slice.payload_b_reg[11]_0 ,
    \gen_AB_reg_slice.payload_b_reg[10]_0 ,
    \gen_AB_reg_slice.payload_b_reg[9]_0 ,
    \gen_AB_reg_slice.payload_b_reg[8]_0 ,
    \gen_AB_reg_slice.payload_b_reg[7]_0 ,
    \gen_AB_reg_slice.payload_b_reg[6]_0 ,
    \gen_AB_reg_slice.payload_b_reg[5]_0 ,
    \gen_AB_reg_slice.payload_b_reg[4]_0 ,
    \gen_AB_reg_slice.payload_b_reg[3]_0 ,
    \gen_AB_reg_slice.payload_b_reg[2]_0 ,
    \gen_AB_reg_slice.payload_b_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[0]_0 ,
    areset,
    aclk,
    \gen_AB_reg_slice.state_reg[1]_1 ,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[25]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[24]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[23]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[22]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[21]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[20]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[19]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[18]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[17]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[16]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[15]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[14]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[13]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[12]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[11]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[10]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[9]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[8]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[7]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[6]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[5]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[4]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  input areset;
  input aclk;
  input \gen_AB_reg_slice.state_reg[1]_1 ;
  input [0:0]s_axis_tvalid;
  input [25:0]D;

  wire [25:0]D;
  wire aclk;
  wire areset;
  wire [25:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_1 ;
  wire [25:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[10]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[11]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[12]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[13]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[14]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[15]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[16]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[17]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[18]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[19]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[20]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[21]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[22]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[23]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[24]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[25]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[4]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[5]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[6]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[7]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[8]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[9]_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_1 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[0] ;
  wire [0:0]s_axis_tvalid;

  LUT3 #(
    .INIT(8'h45)) 
    \gen_AB_reg_slice.payload_a[25]_i_1 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_a_1 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \gen_AB_reg_slice.payload_b[25]_i_1 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \gen_AB_reg_slice.sel_rd_i_1__0 
       (.I0(\gen_AB_reg_slice.state_reg[1]_1 ),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I2(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(areset));
  LUT3 #(
    .INIT(8'h78)) 
    \gen_AB_reg_slice.sel_wr_i_1 
       (.I0(s_axis_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF8D8)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(\gen_AB_reg_slice.state_reg[1]_1 ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(\gen_AB_reg_slice.state_reg[1]_1 ),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[24]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .O(\gen_AB_reg_slice.payload_b_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[25]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .O(\gen_AB_reg_slice.payload_b_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[26]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .O(\gen_AB_reg_slice.payload_b_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[27]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .O(\gen_AB_reg_slice.payload_b_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[28]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .O(\gen_AB_reg_slice.payload_b_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[29]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .O(\gen_AB_reg_slice.payload_b_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[30]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .O(\gen_AB_reg_slice.payload_b_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .O(\gen_AB_reg_slice.payload_b_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[24]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .O(\gen_AB_reg_slice.payload_b_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[25]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .O(\gen_AB_reg_slice.payload_b_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[26]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .O(\gen_AB_reg_slice.payload_b_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[27]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .O(\gen_AB_reg_slice.payload_b_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[28]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .O(\gen_AB_reg_slice.payload_b_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[29]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .O(\gen_AB_reg_slice.payload_b_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[30]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .O(\gen_AB_reg_slice.payload_b_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[31]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .O(\gen_AB_reg_slice.payload_b_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[24]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .O(\gen_AB_reg_slice.payload_b_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[25]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .O(\gen_AB_reg_slice.payload_b_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[26]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .O(\gen_AB_reg_slice.payload_b_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[27]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .O(\gen_AB_reg_slice.payload_b_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[28]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .O(\gen_AB_reg_slice.payload_b_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[29]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .O(\gen_AB_reg_slice.payload_b_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[30]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .O(\gen_AB_reg_slice.payload_b_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[31]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .O(\gen_AB_reg_slice.payload_b_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[3]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .O(\gen_AB_reg_slice.payload_b_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[3]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .O(\gen_AB_reg_slice.payload_b_reg[25]_0 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_29_axisc_register_slice" *) 
module axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_8
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[25]_0 ,
    \gen_AB_reg_slice.payload_b_reg[24]_0 ,
    \gen_AB_reg_slice.payload_b_reg[23]_0 ,
    \gen_AB_reg_slice.payload_b_reg[22]_0 ,
    \gen_AB_reg_slice.payload_b_reg[21]_0 ,
    \gen_AB_reg_slice.payload_b_reg[20]_0 ,
    \gen_AB_reg_slice.payload_b_reg[19]_0 ,
    \gen_AB_reg_slice.payload_b_reg[18]_0 ,
    \gen_AB_reg_slice.payload_b_reg[17]_0 ,
    \gen_AB_reg_slice.payload_b_reg[16]_0 ,
    \gen_AB_reg_slice.payload_b_reg[15]_0 ,
    \gen_AB_reg_slice.payload_b_reg[14]_0 ,
    \gen_AB_reg_slice.payload_b_reg[13]_0 ,
    \gen_AB_reg_slice.payload_b_reg[12]_0 ,
    \gen_AB_reg_slice.payload_b_reg[11]_0 ,
    \gen_AB_reg_slice.payload_b_reg[10]_0 ,
    \gen_AB_reg_slice.payload_b_reg[9]_0 ,
    \gen_AB_reg_slice.payload_b_reg[8]_0 ,
    \gen_AB_reg_slice.payload_b_reg[7]_0 ,
    \gen_AB_reg_slice.payload_b_reg[6]_0 ,
    \gen_AB_reg_slice.payload_b_reg[5]_0 ,
    \gen_AB_reg_slice.payload_b_reg[4]_0 ,
    \gen_AB_reg_slice.payload_b_reg[3]_0 ,
    \gen_AB_reg_slice.payload_b_reg[2]_0 ,
    \gen_AB_reg_slice.payload_b_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[0]_0 ,
    areset,
    aclk,
    \gen_AB_reg_slice.state_reg[1]_1 ,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[25]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[24]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[23]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[22]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[21]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[20]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[19]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[18]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[17]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[16]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[15]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[14]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[13]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[12]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[11]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[10]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[9]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[8]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[7]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[6]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[5]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[4]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  input areset;
  input aclk;
  input \gen_AB_reg_slice.state_reg[1]_1 ;
  input [0:0]s_axis_tvalid;
  input [25:0]D;

  wire [25:0]D;
  wire aclk;
  wire areset;
  wire \gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[10] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[11] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[12] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[13] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[14] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[15] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[16] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[17] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[18] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[19] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[20] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[21] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[22] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[23] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[24] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[25] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[4] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[5] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[6] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[7] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[8] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[9] ;
  wire \gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[10]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[11]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[12]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[13]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[14]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[15]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[16]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[17]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[18]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[19]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[20]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[21]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[22]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[23]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[24]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[25]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[4]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[5]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[6]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[7]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[8]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[9]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[10] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[11] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[12] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[13] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[14] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[15] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[16] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[17] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[18] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[19] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[20] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[21] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[22] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[23] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[24] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[25] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[4] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[5] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[6] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[7] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[8] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[9] ;
  wire \gen_AB_reg_slice.sel_rd_i_1__4_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_1 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[0] ;
  wire [0:0]s_axis_tvalid;

  LUT3 #(
    .INIT(8'h45)) 
    \gen_AB_reg_slice.payload_a[25]_i_1__1 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_a ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \gen_AB_reg_slice.payload_b[25]_i_1__1 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \gen_AB_reg_slice.sel_rd_i_1__4 
       (.I0(\gen_AB_reg_slice.state_reg[1]_1 ),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I2(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__4_n_0 ),
        .Q(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'h78)) 
    \gen_AB_reg_slice.sel_wr_i_1__3 
       (.I0(s_axis_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__3_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF8D8)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(\gen_AB_reg_slice.state_reg[1]_1 ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .I3(\gen_AB_reg_slice.state_reg[1]_1 ),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[0] ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[24]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[25]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.payload_b_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[26]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .O(\gen_AB_reg_slice.payload_b_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[27]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_b_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[28]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[4] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[4] ),
        .O(\gen_AB_reg_slice.payload_b_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[29]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[5] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[5] ),
        .O(\gen_AB_reg_slice.payload_b_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[30]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[6] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[6] ),
        .O(\gen_AB_reg_slice.payload_b_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[7] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[7] ),
        .O(\gen_AB_reg_slice.payload_b_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[24]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[17] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[17] ),
        .O(\gen_AB_reg_slice.payload_b_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[25]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[18] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[18] ),
        .O(\gen_AB_reg_slice.payload_b_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[26]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[19] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[19] ),
        .O(\gen_AB_reg_slice.payload_b_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[27]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[20] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[20] ),
        .O(\gen_AB_reg_slice.payload_b_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[28]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[21] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[21] ),
        .O(\gen_AB_reg_slice.payload_b_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[29]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[22] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[22] ),
        .O(\gen_AB_reg_slice.payload_b_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[30]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[23] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[23] ),
        .O(\gen_AB_reg_slice.payload_b_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[31]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[24] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[24] ),
        .O(\gen_AB_reg_slice.payload_b_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[24]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[9] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[9] ),
        .O(\gen_AB_reg_slice.payload_b_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[25]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[10] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[10] ),
        .O(\gen_AB_reg_slice.payload_b_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[26]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[11] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[11] ),
        .O(\gen_AB_reg_slice.payload_b_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[27]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[12] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[12] ),
        .O(\gen_AB_reg_slice.payload_b_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[28]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[13] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[13] ),
        .O(\gen_AB_reg_slice.payload_b_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[29]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[14] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[14] ),
        .O(\gen_AB_reg_slice.payload_b_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[30]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[15] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[15] ),
        .O(\gen_AB_reg_slice.payload_b_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tid[31]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[16] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[16] ),
        .O(\gen_AB_reg_slice.payload_b_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[3]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[8] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[8] ),
        .O(\gen_AB_reg_slice.payload_b_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tuser[3]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[25] ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_n_0 ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[25] ),
        .O(\gen_AB_reg_slice.payload_b_reg[25]_0 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_29_axisc_register_slice" *) 
module axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0
   (\busy_r_reg[3] ,
    \gen_AB_reg_slice.payload_b_reg[1]_0 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_tdest_routing.decode_err_r0 ,
    \gen_AB_reg_slice.payload_b_reg[2]_0 ,
    \gen_AB_reg_slice.state_reg[0]_1 ,
    \gen_AB_reg_slice.state_reg[0]_2 ,
    \gen_AB_reg_slice.state_reg[0]_3 ,
    \gen_AB_reg_slice.payload_b_reg[3]_0 ,
    \gen_AB_reg_slice.payload_b_reg[3]_1 ,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_AB_reg_slice.payload_b_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[2] ,
    areset,
    aclk,
    \gen_tdest_router.busy_r ,
    arb_gnt_i,
    m_axis_tready,
    \gen_AB_reg_slice.state[1]_i_2__2_0 ,
    \gen_AB_reg_slice.state[1]_i_2__2_1 ,
    arb_busy_r_reg,
    s_decode_err,
    arb_sel_i,
    \gen_tdest_router.busy_r_0 ,
    arb_busy_r_reg_0,
    arb_busy_r_i_2,
    arb_busy_r_i_2__2,
    D,
    s_axis_tvalid,
    \arb_gnt_r[3]_i_3__1 );
  output \busy_r_reg[3] ;
  output \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_tdest_routing.decode_err_r0 ;
  output \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_1 ;
  output \gen_AB_reg_slice.state_reg[0]_2 ;
  output \gen_AB_reg_slice.state_reg[0]_3 ;
  output \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[3]_1 ;
  output \gen_tdest_routing.busy_r_reg[0] ;
  output \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  output \gen_tdest_routing.busy_r_reg[2] ;
  input areset;
  input aclk;
  input [0:0]\gen_tdest_router.busy_r ;
  input [3:0]arb_gnt_i;
  input [3:0]m_axis_tready;
  input \gen_AB_reg_slice.state[1]_i_2__2_0 ;
  input \gen_AB_reg_slice.state[1]_i_2__2_1 ;
  input arb_busy_r_reg;
  input [0:0]s_decode_err;
  input [7:0]arb_sel_i;
  input [0:0]\gen_tdest_router.busy_r_0 ;
  input arb_busy_r_reg_0;
  input arb_busy_r_i_2;
  input arb_busy_r_i_2__2;
  input [7:0]D;
  input [0:0]s_axis_tvalid;
  input \arb_gnt_r[3]_i_3__1 ;

  wire [7:0]D;
  wire aclk;
  wire arb_busy_r_i_2;
  wire arb_busy_r_i_2__2;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire [3:0]arb_gnt_i;
  wire \arb_gnt_r[3]_i_3__1 ;
  wire [7:0]arb_sel_i;
  wire areset;
  wire \busy_r_reg[3] ;
  wire \gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a[3]_i_3__2_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3]_1 ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__5_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__6_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__2_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__2_1 ;
  wire \gen_AB_reg_slice.state[1]_i_3__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__1_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_1 ;
  wire \gen_AB_reg_slice.state_reg[0]_2 ;
  wire \gen_AB_reg_slice.state_reg[0]_3 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[1] ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [0:0]\gen_tdest_router.busy_r_0 ;
  wire [3:0]\gen_tdest_routing.arb_req_ns ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[2] ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.decode_err_r_i_2__2_n_0 ;
  wire \gen_tdest_routing.decode_err_r_i_3_n_0 ;
  wire \gen_tdest_routing.m_axis_tvalid_req ;
  wire [3:0]m_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  LUT6 #(
    .INIT(64'h000000000000A820)) 
    arb_busy_r_i_2__1
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .I4(arb_busy_r_reg_0),
        .I5(arb_gnt_i[1]),
        .O(\gen_AB_reg_slice.state_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h000000000000A820)) 
    arb_busy_r_i_3__1
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I4(arb_busy_r_reg),
        .I5(arb_gnt_i[2]),
        .O(\gen_AB_reg_slice.state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hEFFFEEFFEFFFFFFF)) 
    arb_busy_r_i_5
       (.I0(arb_busy_r_i_2__2),
        .I1(arb_gnt_i[0]),
        .I2(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.sel ),
        .I5(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_tdest_routing.busy_r_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000008C80)) 
    \arb_gnt_r[3]_i_8__0 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I4(arb_busy_r_i_2),
        .I5(arb_gnt_i[3]),
        .O(\gen_AB_reg_slice.payload_b_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \arb_gnt_r[3]_i_8__1 
       (.I0(\gen_AB_reg_slice.payload_b_reg[2]_0 ),
        .I1(arb_busy_r_reg),
        .I2(arb_gnt_i[2]),
        .I3(\arb_gnt_r[3]_i_3__1 ),
        .O(\gen_tdest_routing.busy_r_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_AB_reg_slice.payload_a[0]_i_1 
       (.I0(D[5]),
        .I1(D[6]),
        .I2(D[4]),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3__2_n_0 ),
        .I4(D[0]),
        .I5(D[1]),
        .O(\gen_tdest_routing.arb_req_ns [0]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \gen_AB_reg_slice.payload_a[1]_i_1 
       (.I0(D[5]),
        .I1(D[6]),
        .I2(D[4]),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3__2_n_0 ),
        .I4(D[0]),
        .I5(D[1]),
        .O(\gen_tdest_routing.arb_req_ns [1]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \gen_AB_reg_slice.payload_a[2]_i_1 
       (.I0(D[5]),
        .I1(D[6]),
        .I2(D[4]),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3__2_n_0 ),
        .I4(D[1]),
        .I5(D[0]),
        .O(\gen_tdest_routing.arb_req_ns [2]));
  LUT3 #(
    .INIT(8'h45)) 
    \gen_AB_reg_slice.payload_a[3]_i_1 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .O(\gen_AB_reg_slice.payload_a ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_AB_reg_slice.payload_a[3]_i_2__2 
       (.I0(D[5]),
        .I1(D[6]),
        .I2(D[4]),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3__2_n_0 ),
        .I4(D[1]),
        .I5(D[0]),
        .O(\gen_tdest_routing.arb_req_ns [3]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \gen_AB_reg_slice.payload_a[3]_i_3__2 
       (.I0(D[2]),
        .I1(D[3]),
        .I2(s_axis_tvalid),
        .I3(D[7]),
        .O(\gen_AB_reg_slice.payload_a[3]_i_3__2_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(\gen_tdest_routing.arb_req_ns [0]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(\gen_tdest_routing.arb_req_ns [1]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(\gen_tdest_routing.arb_req_ns [2]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a ),
        .D(\gen_tdest_routing.arb_req_ns [3]),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \gen_AB_reg_slice.payload_b[3]_i_1 
       (.I0(\gen_AB_reg_slice.sel_wr ),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .O(\gen_AB_reg_slice.payload_b ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(\gen_tdest_routing.arb_req_ns [0]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(\gen_tdest_routing.arb_req_ns [1]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(\gen_tdest_routing.arb_req_ns [2]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b ),
        .D(\gen_tdest_routing.arb_req_ns [3]),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \gen_AB_reg_slice.sel_rd_i_1__5 
       (.I0(\busy_r_reg[3] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__5_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(areset));
  LUT3 #(
    .INIT(8'h78)) 
    \gen_AB_reg_slice.sel_wr_i_1__6 
       (.I0(s_axis_tvalid),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__6_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hF8D8)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(\busy_r_reg[3] ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(\busy_r_reg[3] ),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202022222222222)) 
    \gen_AB_reg_slice.state[1]_i_2__2 
       (.I0(\gen_AB_reg_slice.state[1]_i_3__2_n_0 ),
        .I1(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ),
        .I2(\gen_AB_reg_slice.payload_b_reg[1]_0 ),
        .I3(\gen_tdest_router.busy_r ),
        .I4(arb_gnt_i[1]),
        .I5(m_axis_tready[1]),
        .O(\busy_r_reg[3] ));
  LUT5 #(
    .INIT(32'h00001FFF)) 
    \gen_AB_reg_slice.state[1]_i_3__2 
       (.I0(arb_gnt_i[2]),
        .I1(\gen_tdest_router.busy_r_0 ),
        .I2(m_axis_tready[2]),
        .I3(\gen_AB_reg_slice.payload_b_reg[2]_0 ),
        .I4(s_decode_err),
        .O(\gen_AB_reg_slice.state[1]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \gen_AB_reg_slice.state[1]_i_4__1 
       (.I0(m_axis_tready[3]),
        .I1(\gen_AB_reg_slice.state[1]_i_2__2_0 ),
        .I2(\gen_tdest_routing.decode_err_r_i_2__2_n_0 ),
        .I3(m_axis_tready[0]),
        .I4(\gen_AB_reg_slice.state[1]_i_2__2_1 ),
        .I5(\gen_tdest_routing.decode_err_r_i_3_n_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_tdest_routing.m_axis_tvalid_req ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .R(areset));
  LUT6 #(
    .INIT(64'hA820000000000000)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_4 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I4(arb_sel_i[4]),
        .I5(arb_sel_i[5]),
        .O(\gen_AB_reg_slice.state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hA820000000000000)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_4__0 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .I4(arb_sel_i[2]),
        .I5(arb_sel_i[3]),
        .O(\gen_AB_reg_slice.state_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \gen_tdest_routing.decode_err_r_i_1__2 
       (.I0(\gen_AB_reg_slice.payload_b_reg[2]_0 ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(s_decode_err),
        .I3(\gen_tdest_routing.decode_err_r_i_2__2_n_0 ),
        .I4(\gen_tdest_routing.decode_err_r_i_3_n_0 ),
        .I5(\gen_AB_reg_slice.payload_b_reg[1]_0 ),
        .O(\gen_tdest_routing.decode_err_r0 ));
  LUT4 #(
    .INIT(16'hE020)) 
    \gen_tdest_routing.decode_err_r_i_2__2 
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .O(\gen_tdest_routing.decode_err_r_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'hE020)) 
    \gen_tdest_routing.decode_err_r_i_3 
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .O(\gen_tdest_routing.decode_err_r_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8C80000000000000)) 
    \m_axis_tvalid[0]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .I4(arb_sel_i[1]),
        .I5(arb_sel_i[0]),
        .O(\gen_AB_reg_slice.payload_b_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hAC00)) 
    \m_axis_tvalid[1]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .O(\gen_AB_reg_slice.payload_b_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hAC00)) 
    \m_axis_tvalid[2]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .O(\gen_AB_reg_slice.payload_b_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h8C80000000000000)) 
    \m_axis_tvalid[3]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I4(arb_sel_i[6]),
        .I5(arb_sel_i[7]),
        .O(\gen_AB_reg_slice.payload_b_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_29_axisc_register_slice" *) 
module axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_11
   (\gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_tdest_routing.decode_err_r0 ,
    \gen_AB_reg_slice.state_reg[0]_1 ,
    m_axis_tready_0_sp_1,
    \gen_AB_reg_slice.payload_a_reg[0]_0 ,
    \gen_AB_reg_slice.payload_a_reg[0]_1 ,
    areset,
    aclk,
    arb_busy_r_i_2,
    arb_gnt_i,
    s_decode_err,
    arb_sel_i,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    \gen_tdest_router.busy_r_0 ,
    arb_busy_r_i_2__2,
    D,
    s_axis_tvalid);
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_tdest_routing.decode_err_r0 ;
  output \gen_AB_reg_slice.state_reg[0]_1 ;
  output m_axis_tready_0_sp_1;
  output \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  output \gen_AB_reg_slice.payload_a_reg[0]_1 ;
  input areset;
  input aclk;
  input arb_busy_r_i_2;
  input [1:0]arb_gnt_i;
  input [0:0]s_decode_err;
  input [3:0]arb_sel_i;
  input [1:0]m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]\gen_tdest_router.busy_r_0 ;
  input arb_busy_r_i_2__2;
  input [7:0]D;
  input [0:0]s_axis_tvalid;

  wire [7:0]D;
  wire aclk;
  wire arb_busy_r_i_2;
  wire arb_busy_r_i_2__2;
  wire [1:0]arb_gnt_i;
  wire [3:0]arb_sel_i;
  wire areset;
  wire \gen_AB_reg_slice.payload_a[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[3]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[3]_i_3__0_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[0]_1 ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_b[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b[3]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__0_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_1 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[1] ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [0:0]\gen_tdest_router.busy_r_0 ;
  wire [3:0]\gen_tdest_routing.arb_req_ns ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.decode_err_r_i_2__0_n_0 ;
  wire \gen_tdest_routing.m_axis_tvalid_req ;
  wire [1:0]m_axis_tready;
  wire m_axis_tready_0_sn_1;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  assign m_axis_tready_0_sp_1 = m_axis_tready_0_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF37F7)) 
    arb_busy_r_i_4
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I4(arb_busy_r_i_2__2),
        .I5(arb_gnt_i[0]),
        .O(\gen_AB_reg_slice.payload_a_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000000000000A808)) 
    \arb_gnt_r[3]_i_9__1 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I4(arb_busy_r_i_2),
        .I5(arb_gnt_i[1]),
        .O(\gen_AB_reg_slice.state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \gen_AB_reg_slice.payload_a[0]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [0]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \gen_AB_reg_slice.payload_a[0]_i_2 
       (.I0(D[2]),
        .I1(D[3]),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3__0_n_0 ),
        .I4(D[1]),
        .I5(D[0]),
        .O(\gen_tdest_routing.arb_req_ns [0]));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \gen_AB_reg_slice.payload_a[3]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [3]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_a[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \gen_AB_reg_slice.payload_a[3]_i_2__0 
       (.I0(D[2]),
        .I1(D[3]),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3__0_n_0 ),
        .I4(D[1]),
        .I5(D[0]),
        .O(\gen_tdest_routing.arb_req_ns [3]));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_AB_reg_slice.payload_a[3]_i_3__0 
       (.I0(D[5]),
        .I1(D[4]),
        .I2(D[6]),
        .I3(D[7]),
        .O(\gen_AB_reg_slice.payload_a[3]_i_3__0_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[3]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \gen_AB_reg_slice.payload_b[0]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [0]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \gen_AB_reg_slice.payload_b[3]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [3]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_b[3]_i_1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[3]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \gen_AB_reg_slice.sel_rd_i_1__1 
       (.I0(m_axis_tready_0_sn_1),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__1_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(areset));
  LUT3 #(
    .INIT(8'h78)) 
    \gen_AB_reg_slice.sel_wr_i_1__2 
       (.I0(s_axis_tvalid),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__2_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF8D8)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(m_axis_tready_0_sn_1),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(m_axis_tready_0_sn_1),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF57)) 
    \gen_AB_reg_slice.state[1]_i_2__0 
       (.I0(m_axis_tready[0]),
        .I1(arb_gnt_i[0]),
        .I2(\gen_tdest_router.busy_r ),
        .I3(\gen_AB_reg_slice.state[1]_i_3__0_n_0 ),
        .I4(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ),
        .O(m_axis_tready_0_sn_1));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \gen_AB_reg_slice.state[1]_i_3__0 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.state[1]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAAAA)) 
    \gen_AB_reg_slice.state[1]_i_4__0 
       (.I0(s_decode_err),
        .I1(\gen_tdest_routing.decode_err_r_i_2__0_n_0 ),
        .I2(arb_gnt_i[1]),
        .I3(\gen_tdest_router.busy_r_0 ),
        .I4(m_axis_tready[1]),
        .O(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_tdest_routing.m_axis_tvalid_req ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .R(areset));
  LUT6 #(
    .INIT(64'h00001D0000000000)) 
    \gen_tdest_routing.decode_err_r_i_1__0 
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(s_decode_err),
        .I5(\gen_tdest_routing.decode_err_r_i_2__0_n_0 ),
        .O(\gen_tdest_routing.decode_err_r0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \gen_tdest_routing.decode_err_r_i_2__0 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .O(\gen_tdest_routing.decode_err_r_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C8080000)) 
    \m_axis_tvalid[0]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I4(arb_sel_i[0]),
        .I5(arb_sel_i[1]),
        .O(\gen_AB_reg_slice.payload_a_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00000000A8080000)) 
    \m_axis_tvalid[3]_INST_0_i_3 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I4(arb_sel_i[2]),
        .I5(arb_sel_i[3]),
        .O(\gen_AB_reg_slice.state_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_29_axisc_register_slice" *) 
module axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_13
   (\gen_tdest_routing.busy_r_reg[3] ,
    \gen_AB_reg_slice.payload_a_reg[3]_0 ,
    \gen_tdest_routing.decode_err_r0 ,
    \gen_AB_reg_slice.payload_b_reg[2]_0 ,
    \gen_AB_reg_slice.payload_b_reg[1]_0 ,
    \gen_AB_reg_slice.payload_a_reg[3]_1 ,
    m_axis_tready_2_sp_1,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_AB_reg_slice.payload_a_reg[2]_0 ,
    \gen_tdest_routing.busy_r_reg[1] ,
    areset,
    aclk,
    arb_busy_r_reg,
    arb_busy_r_reg_0,
    arb_gnt_i,
    arb_busy_r_reg_1,
    arb_busy_r_reg_2,
    s_decode_err,
    arb_sel_i,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    \gen_AB_reg_slice.state[1]_i_2_0 ,
    \gen_AB_reg_slice.state[1]_i_2_1 ,
    arb_busy_r_reg_3,
    arb_busy_r_reg_4,
    s_axis_tdest,
    s_axis_tvalid,
    \arb_gnt_r[3]_i_3__0 );
  output \gen_tdest_routing.busy_r_reg[3] ;
  output \gen_AB_reg_slice.payload_a_reg[3]_0 ;
  output \gen_tdest_routing.decode_err_r0 ;
  output \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_a_reg[3]_1 ;
  output m_axis_tready_2_sp_1;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_AB_reg_slice.payload_a_reg[2]_0 ;
  output \gen_tdest_routing.busy_r_reg[1] ;
  input areset;
  input aclk;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;
  input [2:0]arb_gnt_i;
  input arb_busy_r_reg_1;
  input arb_busy_r_reg_2;
  input [0:0]s_decode_err;
  input [1:0]arb_sel_i;
  input [2:0]m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input \gen_AB_reg_slice.state[1]_i_2_0 ;
  input \gen_AB_reg_slice.state[1]_i_2_1 ;
  input arb_busy_r_reg_3;
  input arb_busy_r_reg_4;
  input [7:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input \arb_gnt_r[3]_i_3__0 ;

  wire aclk;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire arb_busy_r_reg_1;
  wire arb_busy_r_reg_2;
  wire arb_busy_r_reg_3;
  wire arb_busy_r_reg_4;
  wire [2:0]arb_gnt_i;
  wire \arb_gnt_r[3]_i_3__0 ;
  wire [1:0]arb_sel_i;
  wire areset;
  wire \gen_AB_reg_slice.payload_a[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[2]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[3]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[3]_i_3_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[3]_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[3]_1 ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_b[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b[2]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b[3]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[2] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2_1 ;
  wire \gen_AB_reg_slice.state[1]_i_3_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[1] ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [3:1]\gen_tdest_routing.arb_req_ns ;
  wire \gen_tdest_routing.busy_r_reg[1] ;
  wire \gen_tdest_routing.busy_r_reg[3] ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.decode_err_r_i_2_n_0 ;
  wire \gen_tdest_routing.m_axis_tvalid_req ;
  wire [2:0]m_axis_tready;
  wire m_axis_tready_2_sn_1;
  wire [7:0]s_axis_tdest;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  assign m_axis_tready_2_sp_1 = m_axis_tready_2_sn_1;
  LUT6 #(
    .INIT(64'h0000000000005554)) 
    arb_busy_r_i_2
       (.I0(arb_busy_r_reg),
        .I1(\gen_tdest_routing.decode_err_r_i_2_n_0 ),
        .I2(arb_busy_r_reg_0),
        .I3(arb_gnt_i[2]),
        .I4(arb_busy_r_reg_1),
        .I5(arb_busy_r_reg_2),
        .O(\gen_tdest_routing.busy_r_reg[3] ));
  LUT6 #(
    .INIT(64'h000000000000C808)) 
    arb_busy_r_i_2__0
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I4(arb_busy_r_reg_4),
        .I5(arb_gnt_i[1]),
        .O(\gen_AB_reg_slice.payload_a_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h000000000000A808)) 
    arb_busy_r_i_3
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .I4(arb_busy_r_reg_3),
        .I5(arb_gnt_i[0]),
        .O(\gen_AB_reg_slice.state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF37F7)) 
    \arb_gnt_r[3]_i_11 
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I4(arb_busy_r_reg_0),
        .I5(arb_gnt_i[2]),
        .O(\gen_AB_reg_slice.payload_a_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \arb_gnt_r[3]_i_8__2 
       (.I0(\gen_AB_reg_slice.payload_b_reg[1]_0 ),
        .I1(arb_busy_r_reg_3),
        .I2(arb_gnt_i[0]),
        .I3(\arb_gnt_r[3]_i_3__0 ),
        .O(\gen_tdest_routing.busy_r_reg[1] ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \gen_AB_reg_slice.payload_a[1]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [1]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.payload_a[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_AB_reg_slice.payload_a[1]_i_2 
       (.I0(\gen_AB_reg_slice.payload_a[3]_i_3_n_0 ),
        .I1(s_axis_tvalid),
        .I2(s_axis_tdest[0]),
        .I3(s_axis_tdest[1]),
        .O(\gen_tdest_routing.arb_req_ns [1]));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \gen_AB_reg_slice.payload_a[2]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [2]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .O(\gen_AB_reg_slice.payload_a[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_AB_reg_slice.payload_a[2]_i_2 
       (.I0(s_axis_tdest[0]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tdest[1]),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3_n_0 ),
        .O(\gen_tdest_routing.arb_req_ns [2]));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \gen_AB_reg_slice.payload_a[3]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [3]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_a[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_AB_reg_slice.payload_a[3]_i_2 
       (.I0(s_axis_tdest[0]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tdest[1]),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3_n_0 ),
        .O(\gen_tdest_routing.arb_req_ns [3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_AB_reg_slice.payload_a[3]_i_3 
       (.I0(s_axis_tdest[6]),
        .I1(s_axis_tdest[5]),
        .I2(s_axis_tdest[7]),
        .I3(s_axis_tdest[3]),
        .I4(s_axis_tdest[2]),
        .I5(s_axis_tdest[4]),
        .O(\gen_AB_reg_slice.payload_a[3]_i_3_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[2]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[3]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \gen_AB_reg_slice.payload_b[1]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [1]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .O(\gen_AB_reg_slice.payload_b[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \gen_AB_reg_slice.payload_b[2]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [2]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .O(\gen_AB_reg_slice.payload_b[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \gen_AB_reg_slice.payload_b[3]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [3]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_b[3]_i_1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[2]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[3]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \gen_AB_reg_slice.sel_rd_i_1 
       (.I0(m_axis_tready_2_sn_1),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(areset));
  LUT3 #(
    .INIT(8'h78)) 
    \gen_AB_reg_slice.sel_wr_i_1__0 
       (.I0(s_axis_tvalid),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF8D8)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(m_axis_tready_2_sn_1),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(m_axis_tready_2_sn_1),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF57)) 
    \gen_AB_reg_slice.state[1]_i_2 
       (.I0(m_axis_tready[1]),
        .I1(\gen_tdest_router.busy_r ),
        .I2(arb_gnt_i[1]),
        .I3(\gen_AB_reg_slice.payload_b_reg[2]_0 ),
        .I4(s_decode_err),
        .I5(\gen_AB_reg_slice.state[1]_i_3_n_0 ),
        .O(m_axis_tready_2_sn_1));
  LUT6 #(
    .INIT(64'h4040404040FF4040)) 
    \gen_AB_reg_slice.state[1]_i_3 
       (.I0(\gen_AB_reg_slice.payload_b_reg[1]_0 ),
        .I1(\gen_AB_reg_slice.state[1]_i_2_0 ),
        .I2(m_axis_tready[0]),
        .I3(\gen_tdest_routing.decode_err_r_i_2_n_0 ),
        .I4(m_axis_tready[2]),
        .I5(\gen_AB_reg_slice.state[1]_i_2_1 ),
        .O(\gen_AB_reg_slice.state[1]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_tdest_routing.m_axis_tvalid_req ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .R(areset));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(s_decode_err),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.payload_b_reg[2]_0 ),
        .I3(\gen_tdest_routing.decode_err_r_i_2_n_0 ),
        .I4(\gen_AB_reg_slice.payload_b_reg[1]_0 ),
        .O(\gen_tdest_routing.decode_err_r0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \gen_tdest_routing.decode_err_r_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .O(\gen_tdest_routing.decode_err_r_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \m_axis_tvalid[1]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[1] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .O(\gen_AB_reg_slice.payload_b_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \m_axis_tvalid[2]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[2] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(\gen_AB_reg_slice.payload_a_reg_n_0_[2] ),
        .O(\gen_AB_reg_slice.payload_b_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h000000000000C808)) 
    \m_axis_tvalid[3]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I4(arb_sel_i[0]),
        .I5(arb_sel_i[1]),
        .O(\gen_AB_reg_slice.payload_a_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_29_axisc_register_slice" *) 
module axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_9
   (\gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_tdest_routing.decode_err_r0 ,
    \gen_AB_reg_slice.state_reg[0]_1 ,
    m_axis_tready_0_sp_1,
    \gen_AB_reg_slice.payload_b_reg[0]_0 ,
    \gen_AB_reg_slice.payload_a_reg[0]_0 ,
    \gen_AB_reg_slice.payload_a_reg[0]_1 ,
    areset,
    aclk,
    arb_busy_r_i_2,
    arb_gnt_i,
    s_decode_err,
    arb_sel_i,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    \gen_tdest_router.busy_r_0 ,
    \arb_gnt_r[3]_i_9__2 ,
    D,
    s_axis_tvalid,
    arb_busy_r_reg,
    arb_busy_r_reg_0);
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_tdest_routing.decode_err_r0 ;
  output \gen_AB_reg_slice.state_reg[0]_1 ;
  output m_axis_tready_0_sp_1;
  output \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  output \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  output \gen_AB_reg_slice.payload_a_reg[0]_1 ;
  input areset;
  input aclk;
  input arb_busy_r_i_2;
  input [1:0]arb_gnt_i;
  input [0:0]s_decode_err;
  input [1:0]arb_sel_i;
  input [1:0]m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]\gen_tdest_router.busy_r_0 ;
  input \arb_gnt_r[3]_i_9__2 ;
  input [7:0]D;
  input [0:0]s_axis_tvalid;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;

  wire [7:0]D;
  wire aclk;
  wire arb_busy_r_i_2;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire [1:0]arb_gnt_i;
  wire \arb_gnt_r[3]_i_9__2 ;
  wire [1:0]arb_sel_i;
  wire areset;
  wire \gen_AB_reg_slice.payload_a[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[3]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a[3]_i_3__1_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[0]_1 ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_a_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.payload_b[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b[3]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[0] ;
  wire \gen_AB_reg_slice.payload_b_reg_n_0_[3] ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__4_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3__1_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_1 ;
  wire \gen_AB_reg_slice.state_reg_n_0_[1] ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [0:0]\gen_tdest_router.busy_r_0 ;
  wire [3:0]\gen_tdest_routing.arb_req_ns ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.decode_err_r_i_2__1_n_0 ;
  wire \gen_tdest_routing.m_axis_tvalid_req ;
  wire [1:0]m_axis_tready;
  wire m_axis_tready_0_sn_1;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  assign m_axis_tready_0_sp_1 = m_axis_tready_0_sn_1;
  LUT3 #(
    .INIT(8'h80)) 
    arb_busy_r_i_2__2
       (.I0(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I1(arb_busy_r_reg),
        .I2(arb_busy_r_reg_0),
        .O(\gen_AB_reg_slice.payload_a_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF37F7)) 
    arb_busy_r_i_3__0
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I4(\arb_gnt_r[3]_i_9__2 ),
        .I5(arb_gnt_i[0]),
        .O(\gen_AB_reg_slice.payload_a_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000000000000A808)) 
    \arb_gnt_r[3]_i_10__1 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I4(arb_busy_r_i_2),
        .I5(arb_gnt_i[1]),
        .O(\gen_AB_reg_slice.state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \gen_AB_reg_slice.payload_a[0]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [0]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \gen_AB_reg_slice.payload_a[0]_i_2__0 
       (.I0(D[2]),
        .I1(D[3]),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3__1_n_0 ),
        .I4(D[1]),
        .I5(D[0]),
        .O(\gen_tdest_routing.arb_req_ns [0]));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \gen_AB_reg_slice.payload_a[3]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [3]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_a[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \gen_AB_reg_slice.payload_a[3]_i_2__1 
       (.I0(D[2]),
        .I1(D[3]),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.payload_a[3]_i_3__1_n_0 ),
        .I4(D[1]),
        .I5(D[0]),
        .O(\gen_tdest_routing.arb_req_ns [3]));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_AB_reg_slice.payload_a[3]_i_3__1 
       (.I0(D[5]),
        .I1(D[4]),
        .I2(D[6]),
        .I3(D[7]),
        .O(\gen_AB_reg_slice.payload_a[3]_i_3__1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_a[3]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \gen_AB_reg_slice.payload_b[0]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [0]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \gen_AB_reg_slice.payload_b[3]_i_1 
       (.I0(\gen_tdest_routing.arb_req_ns [3]),
        .I1(\gen_AB_reg_slice.sel_wr ),
        .I2(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .O(\gen_AB_reg_slice.payload_b[3]_i_1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.payload_b[3]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \gen_AB_reg_slice.sel_rd_i_1__3 
       (.I0(m_axis_tready_0_sn_1),
        .I1(\gen_tdest_routing.m_axis_tvalid_req ),
        .I2(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__3_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(areset));
  LUT3 #(
    .INIT(8'h78)) 
    \gen_AB_reg_slice.sel_wr_i_1__4 
       (.I0(s_axis_tvalid),
        .I1(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I2(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__4_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF8D8)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(m_axis_tready_0_sn_1),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(m_axis_tready_0_sn_1),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF57)) 
    \gen_AB_reg_slice.state[1]_i_2__1 
       (.I0(m_axis_tready[0]),
        .I1(arb_gnt_i[0]),
        .I2(\gen_tdest_router.busy_r ),
        .I3(\gen_AB_reg_slice.payload_b_reg[0]_0 ),
        .I4(\gen_AB_reg_slice.state[1]_i_3__1_n_0 ),
        .O(m_axis_tready_0_sn_1));
  LUT5 #(
    .INIT(32'hBBBAAAAA)) 
    \gen_AB_reg_slice.state[1]_i_3__1 
       (.I0(s_decode_err),
        .I1(\gen_tdest_routing.decode_err_r_i_2__1_n_0 ),
        .I2(arb_gnt_i[1]),
        .I3(\gen_tdest_router.busy_r_0 ),
        .I4(m_axis_tready[1]),
        .O(\gen_AB_reg_slice.state[1]_i_3__1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_tdest_routing.m_axis_tvalid_req ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg_n_0_[1] ),
        .R(areset));
  LUT6 #(
    .INIT(64'h00001D0000000000)) 
    \gen_tdest_routing.decode_err_r_i_1__1 
       (.I0(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .I4(s_decode_err),
        .I5(\gen_tdest_routing.decode_err_r_i_2__1_n_0 ),
        .O(\gen_tdest_routing.decode_err_r0 ));
  LUT4 #(
    .INIT(16'h47FF)) 
    \gen_tdest_routing.decode_err_r_i_2__1 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I3(\gen_tdest_routing.m_axis_tvalid_req ),
        .O(\gen_tdest_routing.decode_err_r_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4F7F)) 
    \m_axis_tvalid[0]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b_reg_n_0_[0] ),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_tdest_routing.m_axis_tvalid_req ),
        .I3(\gen_AB_reg_slice.payload_a_reg_n_0_[0] ),
        .O(\gen_AB_reg_slice.payload_b_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000A8080000)) 
    \m_axis_tvalid[3]_INST_0_i_4 
       (.I0(\gen_tdest_routing.m_axis_tvalid_req ),
        .I1(\gen_AB_reg_slice.payload_a_reg_n_0_[3] ),
        .I2(\gen_AB_reg_slice.sel ),
        .I3(\gen_AB_reg_slice.payload_b_reg_n_0_[3] ),
        .I4(arb_sel_i[1]),
        .I5(arb_sel_i[0]),
        .O(\gen_AB_reg_slice.state_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_arb_rr" *) 
module axis_switch_swifsaxis_switch_v1_1_29_arb_rr
   (arb_busy_r,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ,
    m_axis_tvalid,
    areset_reg,
    \arb_gnt_r_reg[3]_0 ,
    m_axis_tdata,
    \arb_sel_r_reg[0]_0 ,
    \arb_sel_r_reg[1]_0 ,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    SR,
    arb_busy_ns,
    aclk,
    arb_sel_r0_9,
    m_axis_tready,
    m_axis_tvalid_0_sp_1,
    \m_axis_tvalid[0]_0 ,
    \m_axis_tvalid[0]_1 ,
    \gen_tdest_router.busy_r_10 ,
    \arb_gnt_r[3]_i_3__2_0 ,
    \arb_gnt_r[3]_i_3__2_1 ,
    \arb_gnt_r[3]_i_3__2_2 ,
    m_axis_tdata_0_sp_1,
    \m_axis_tdata[0]_0 ,
    \m_axis_tdata[0]_1 ,
    \m_axis_tdata[0]_2 ,
    m_axis_tdata_1_sp_1,
    \m_axis_tdata[1]_0 ,
    \m_axis_tdata[1]_1 ,
    \m_axis_tdata[1]_2 ,
    m_axis_tdata_2_sp_1,
    \m_axis_tdata[2]_0 ,
    \m_axis_tdata[2]_1 ,
    \m_axis_tdata[2]_2 ,
    m_axis_tdata_3_sp_1,
    \m_axis_tdata[3]_0 ,
    \m_axis_tdata[3]_1 ,
    \m_axis_tdata[3]_2 ,
    m_axis_tdata_4_sp_1,
    \m_axis_tdata[4]_0 ,
    \m_axis_tdata[4]_1 ,
    \m_axis_tdata[4]_2 ,
    m_axis_tdata_5_sp_1,
    \m_axis_tdata[5]_0 ,
    \m_axis_tdata[5]_1 ,
    \m_axis_tdata[5]_2 ,
    m_axis_tdata_6_sp_1,
    \m_axis_tdata[6]_0 ,
    \m_axis_tdata[6]_1 ,
    \m_axis_tdata[6]_2 ,
    m_axis_tdata_7_sp_1,
    \m_axis_tdata[7]_0 ,
    \m_axis_tdata[7]_1 ,
    \m_axis_tdata[7]_2 ,
    m_axis_tlast_0_sp_1,
    \m_axis_tlast[0]_0 ,
    \m_axis_tlast[0]_1 ,
    \m_axis_tlast[0]_2 ,
    m_axis_tid_0_sp_1,
    \m_axis_tid[0]_0 ,
    \m_axis_tid[0]_1 ,
    \m_axis_tid[0]_2 ,
    m_axis_tid_1_sp_1,
    \m_axis_tid[1]_0 ,
    \m_axis_tid[1]_1 ,
    \m_axis_tid[1]_2 ,
    m_axis_tid_2_sp_1,
    \m_axis_tid[2]_0 ,
    \m_axis_tid[2]_1 ,
    \m_axis_tid[2]_2 ,
    m_axis_tid_3_sp_1,
    \m_axis_tid[3]_0 ,
    \m_axis_tid[3]_1 ,
    \m_axis_tid[3]_2 ,
    m_axis_tid_4_sp_1,
    \m_axis_tid[4]_0 ,
    \m_axis_tid[4]_1 ,
    \m_axis_tid[4]_2 ,
    m_axis_tid_5_sp_1,
    \m_axis_tid[5]_0 ,
    \m_axis_tid[5]_1 ,
    \m_axis_tid[5]_2 ,
    m_axis_tid_6_sp_1,
    \m_axis_tid[6]_0 ,
    \m_axis_tid[6]_1 ,
    \m_axis_tid[6]_2 ,
    m_axis_tid_7_sp_1,
    \m_axis_tid[7]_0 ,
    \m_axis_tid[7]_1 ,
    \m_axis_tid[7]_2 ,
    m_axis_tdest_0_sp_1,
    \m_axis_tdest[0]_0 ,
    \m_axis_tdest[0]_1 ,
    \m_axis_tdest[0]_2 ,
    m_axis_tdest_1_sp_1,
    \m_axis_tdest[1]_0 ,
    \m_axis_tdest[1]_1 ,
    \m_axis_tdest[1]_2 ,
    m_axis_tdest_2_sp_1,
    \m_axis_tdest[2]_0 ,
    \m_axis_tdest[2]_1 ,
    \m_axis_tdest[2]_2 ,
    m_axis_tdest_3_sp_1,
    \m_axis_tdest[3]_0 ,
    \m_axis_tdest[3]_1 ,
    \m_axis_tdest[3]_2 ,
    m_axis_tdest_4_sp_1,
    \m_axis_tdest[4]_0 ,
    \m_axis_tdest[4]_1 ,
    \m_axis_tdest[4]_2 ,
    m_axis_tdest_5_sp_1,
    \m_axis_tdest[5]_0 ,
    \m_axis_tdest[5]_1 ,
    \m_axis_tdest[5]_2 ,
    m_axis_tdest_6_sp_1,
    \m_axis_tdest[6]_0 ,
    \m_axis_tdest[6]_1 ,
    \m_axis_tdest[6]_2 ,
    m_axis_tdest_7_sp_1,
    \m_axis_tdest[7]_0 ,
    \m_axis_tdest[7]_1 ,
    \m_axis_tdest[7]_2 ,
    m_axis_tuser_0_sp_1,
    \m_axis_tuser[0]_0 ,
    \m_axis_tuser[0]_1 ,
    \m_axis_tuser[0]_2 );
  output arb_busy_r;
  output \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  output [0:0]m_axis_tvalid;
  output areset_reg;
  output [3:0]\arb_gnt_r_reg[3]_0 ;
  output [7:0]m_axis_tdata;
  output \arb_sel_r_reg[0]_0 ;
  output \arb_sel_r_reg[1]_0 ;
  output [0:0]m_axis_tlast;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input [0:0]SR;
  input arb_busy_ns;
  input aclk;
  input arb_sel_r0_9;
  input [0:0]m_axis_tready;
  input m_axis_tvalid_0_sp_1;
  input \m_axis_tvalid[0]_0 ;
  input \m_axis_tvalid[0]_1 ;
  input [3:0]\gen_tdest_router.busy_r_10 ;
  input \arb_gnt_r[3]_i_3__2_0 ;
  input \arb_gnt_r[3]_i_3__2_1 ;
  input \arb_gnt_r[3]_i_3__2_2 ;
  input m_axis_tdata_0_sp_1;
  input \m_axis_tdata[0]_0 ;
  input \m_axis_tdata[0]_1 ;
  input \m_axis_tdata[0]_2 ;
  input m_axis_tdata_1_sp_1;
  input \m_axis_tdata[1]_0 ;
  input \m_axis_tdata[1]_1 ;
  input \m_axis_tdata[1]_2 ;
  input m_axis_tdata_2_sp_1;
  input \m_axis_tdata[2]_0 ;
  input \m_axis_tdata[2]_1 ;
  input \m_axis_tdata[2]_2 ;
  input m_axis_tdata_3_sp_1;
  input \m_axis_tdata[3]_0 ;
  input \m_axis_tdata[3]_1 ;
  input \m_axis_tdata[3]_2 ;
  input m_axis_tdata_4_sp_1;
  input \m_axis_tdata[4]_0 ;
  input \m_axis_tdata[4]_1 ;
  input \m_axis_tdata[4]_2 ;
  input m_axis_tdata_5_sp_1;
  input \m_axis_tdata[5]_0 ;
  input \m_axis_tdata[5]_1 ;
  input \m_axis_tdata[5]_2 ;
  input m_axis_tdata_6_sp_1;
  input \m_axis_tdata[6]_0 ;
  input \m_axis_tdata[6]_1 ;
  input \m_axis_tdata[6]_2 ;
  input m_axis_tdata_7_sp_1;
  input \m_axis_tdata[7]_0 ;
  input \m_axis_tdata[7]_1 ;
  input \m_axis_tdata[7]_2 ;
  input m_axis_tlast_0_sp_1;
  input \m_axis_tlast[0]_0 ;
  input \m_axis_tlast[0]_1 ;
  input \m_axis_tlast[0]_2 ;
  input m_axis_tid_0_sp_1;
  input \m_axis_tid[0]_0 ;
  input \m_axis_tid[0]_1 ;
  input \m_axis_tid[0]_2 ;
  input m_axis_tid_1_sp_1;
  input \m_axis_tid[1]_0 ;
  input \m_axis_tid[1]_1 ;
  input \m_axis_tid[1]_2 ;
  input m_axis_tid_2_sp_1;
  input \m_axis_tid[2]_0 ;
  input \m_axis_tid[2]_1 ;
  input \m_axis_tid[2]_2 ;
  input m_axis_tid_3_sp_1;
  input \m_axis_tid[3]_0 ;
  input \m_axis_tid[3]_1 ;
  input \m_axis_tid[3]_2 ;
  input m_axis_tid_4_sp_1;
  input \m_axis_tid[4]_0 ;
  input \m_axis_tid[4]_1 ;
  input \m_axis_tid[4]_2 ;
  input m_axis_tid_5_sp_1;
  input \m_axis_tid[5]_0 ;
  input \m_axis_tid[5]_1 ;
  input \m_axis_tid[5]_2 ;
  input m_axis_tid_6_sp_1;
  input \m_axis_tid[6]_0 ;
  input \m_axis_tid[6]_1 ;
  input \m_axis_tid[6]_2 ;
  input m_axis_tid_7_sp_1;
  input \m_axis_tid[7]_0 ;
  input \m_axis_tid[7]_1 ;
  input \m_axis_tid[7]_2 ;
  input m_axis_tdest_0_sp_1;
  input \m_axis_tdest[0]_0 ;
  input \m_axis_tdest[0]_1 ;
  input \m_axis_tdest[0]_2 ;
  input m_axis_tdest_1_sp_1;
  input \m_axis_tdest[1]_0 ;
  input \m_axis_tdest[1]_1 ;
  input \m_axis_tdest[1]_2 ;
  input m_axis_tdest_2_sp_1;
  input \m_axis_tdest[2]_0 ;
  input \m_axis_tdest[2]_1 ;
  input \m_axis_tdest[2]_2 ;
  input m_axis_tdest_3_sp_1;
  input \m_axis_tdest[3]_0 ;
  input \m_axis_tdest[3]_1 ;
  input \m_axis_tdest[3]_2 ;
  input m_axis_tdest_4_sp_1;
  input \m_axis_tdest[4]_0 ;
  input \m_axis_tdest[4]_1 ;
  input \m_axis_tdest[4]_2 ;
  input m_axis_tdest_5_sp_1;
  input \m_axis_tdest[5]_0 ;
  input \m_axis_tdest[5]_1 ;
  input \m_axis_tdest[5]_2 ;
  input m_axis_tdest_6_sp_1;
  input \m_axis_tdest[6]_0 ;
  input \m_axis_tdest[6]_1 ;
  input \m_axis_tdest[6]_2 ;
  input m_axis_tdest_7_sp_1;
  input \m_axis_tdest[7]_0 ;
  input \m_axis_tdest[7]_1 ;
  input \m_axis_tdest[7]_2 ;
  input m_axis_tuser_0_sp_1;
  input \m_axis_tuser[0]_0 ;
  input \m_axis_tuser[0]_1 ;
  input \m_axis_tuser[0]_2 ;

  wire [0:0]SR;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire \arb_gnt_r[0]_i_1__2_n_0 ;
  wire \arb_gnt_r[1]_i_1__2_n_0 ;
  wire \arb_gnt_r[2]_i_1__1_n_0 ;
  wire \arb_gnt_r[3]_i_10__0_n_0 ;
  wire \arb_gnt_r[3]_i_1__0_n_0 ;
  wire \arb_gnt_r[3]_i_3__2_0 ;
  wire \arb_gnt_r[3]_i_3__2_1 ;
  wire \arb_gnt_r[3]_i_3__2_2 ;
  wire \arb_gnt_r[3]_i_5__1_n_0 ;
  wire \arb_gnt_r[3]_i_6__2_n_0 ;
  wire \arb_gnt_r[3]_i_7__2_n_0 ;
  wire \arb_gnt_r[3]_i_8_n_0 ;
  wire \arb_gnt_r[3]_i_9__2_n_0 ;
  wire [3:0]\arb_gnt_r_reg[3]_0 ;
  wire arb_sel_r0_9;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire \arb_sel_r_reg[0]_0 ;
  wire \arb_sel_r_reg[1]_0 ;
  wire areset_reg;
  wire barrel_cntr;
  wire [1:0]barrel_cntr_ns;
  wire \barrel_cntr_reg_n_0_[0] ;
  wire \barrel_cntr_reg_n_0_[1] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  wire [3:0]\gen_tdest_router.busy_r_10 ;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[0]_0 ;
  wire \m_axis_tdata[0]_1 ;
  wire \m_axis_tdata[0]_2 ;
  wire \m_axis_tdata[1]_0 ;
  wire \m_axis_tdata[1]_1 ;
  wire \m_axis_tdata[1]_2 ;
  wire \m_axis_tdata[2]_0 ;
  wire \m_axis_tdata[2]_1 ;
  wire \m_axis_tdata[2]_2 ;
  wire \m_axis_tdata[3]_0 ;
  wire \m_axis_tdata[3]_1 ;
  wire \m_axis_tdata[3]_2 ;
  wire \m_axis_tdata[4]_0 ;
  wire \m_axis_tdata[4]_1 ;
  wire \m_axis_tdata[4]_2 ;
  wire \m_axis_tdata[5]_0 ;
  wire \m_axis_tdata[5]_1 ;
  wire \m_axis_tdata[5]_2 ;
  wire \m_axis_tdata[6]_0 ;
  wire \m_axis_tdata[6]_1 ;
  wire \m_axis_tdata[6]_2 ;
  wire \m_axis_tdata[7]_0 ;
  wire \m_axis_tdata[7]_1 ;
  wire \m_axis_tdata[7]_2 ;
  wire m_axis_tdata_0_sn_1;
  wire m_axis_tdata_1_sn_1;
  wire m_axis_tdata_2_sn_1;
  wire m_axis_tdata_3_sn_1;
  wire m_axis_tdata_4_sn_1;
  wire m_axis_tdata_5_sn_1;
  wire m_axis_tdata_6_sn_1;
  wire m_axis_tdata_7_sn_1;
  wire [7:0]m_axis_tdest;
  wire \m_axis_tdest[0]_0 ;
  wire \m_axis_tdest[0]_1 ;
  wire \m_axis_tdest[0]_2 ;
  wire \m_axis_tdest[1]_0 ;
  wire \m_axis_tdest[1]_1 ;
  wire \m_axis_tdest[1]_2 ;
  wire \m_axis_tdest[2]_0 ;
  wire \m_axis_tdest[2]_1 ;
  wire \m_axis_tdest[2]_2 ;
  wire \m_axis_tdest[3]_0 ;
  wire \m_axis_tdest[3]_1 ;
  wire \m_axis_tdest[3]_2 ;
  wire \m_axis_tdest[4]_0 ;
  wire \m_axis_tdest[4]_1 ;
  wire \m_axis_tdest[4]_2 ;
  wire \m_axis_tdest[5]_0 ;
  wire \m_axis_tdest[5]_1 ;
  wire \m_axis_tdest[5]_2 ;
  wire \m_axis_tdest[6]_0 ;
  wire \m_axis_tdest[6]_1 ;
  wire \m_axis_tdest[6]_2 ;
  wire \m_axis_tdest[7]_0 ;
  wire \m_axis_tdest[7]_1 ;
  wire \m_axis_tdest[7]_2 ;
  wire m_axis_tdest_0_sn_1;
  wire m_axis_tdest_1_sn_1;
  wire m_axis_tdest_2_sn_1;
  wire m_axis_tdest_3_sn_1;
  wire m_axis_tdest_4_sn_1;
  wire m_axis_tdest_5_sn_1;
  wire m_axis_tdest_6_sn_1;
  wire m_axis_tdest_7_sn_1;
  wire [7:0]m_axis_tid;
  wire \m_axis_tid[0]_0 ;
  wire \m_axis_tid[0]_1 ;
  wire \m_axis_tid[0]_2 ;
  wire \m_axis_tid[1]_0 ;
  wire \m_axis_tid[1]_1 ;
  wire \m_axis_tid[1]_2 ;
  wire \m_axis_tid[2]_0 ;
  wire \m_axis_tid[2]_1 ;
  wire \m_axis_tid[2]_2 ;
  wire \m_axis_tid[3]_0 ;
  wire \m_axis_tid[3]_1 ;
  wire \m_axis_tid[3]_2 ;
  wire \m_axis_tid[4]_0 ;
  wire \m_axis_tid[4]_1 ;
  wire \m_axis_tid[4]_2 ;
  wire \m_axis_tid[5]_0 ;
  wire \m_axis_tid[5]_1 ;
  wire \m_axis_tid[5]_2 ;
  wire \m_axis_tid[6]_0 ;
  wire \m_axis_tid[6]_1 ;
  wire \m_axis_tid[6]_2 ;
  wire \m_axis_tid[7]_0 ;
  wire \m_axis_tid[7]_1 ;
  wire \m_axis_tid[7]_2 ;
  wire m_axis_tid_0_sn_1;
  wire m_axis_tid_1_sn_1;
  wire m_axis_tid_2_sn_1;
  wire m_axis_tid_3_sn_1;
  wire m_axis_tid_4_sn_1;
  wire m_axis_tid_5_sn_1;
  wire m_axis_tid_6_sn_1;
  wire m_axis_tid_7_sn_1;
  wire [0:0]m_axis_tlast;
  wire \m_axis_tlast[0]_0 ;
  wire \m_axis_tlast[0]_1 ;
  wire \m_axis_tlast[0]_2 ;
  wire m_axis_tlast_0_sn_1;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire \m_axis_tuser[0]_0 ;
  wire \m_axis_tuser[0]_1 ;
  wire \m_axis_tuser[0]_2 ;
  wire m_axis_tuser_0_sn_1;
  wire [0:0]m_axis_tvalid;
  wire \m_axis_tvalid[0]_0 ;
  wire \m_axis_tvalid[0]_1 ;
  wire \m_axis_tvalid[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[0]_INST_0_i_2_n_0 ;
  wire \m_axis_tvalid[0]_INST_0_i_6_n_0 ;
  wire m_axis_tvalid_0_sn_1;
  wire [7:0]port_priority_ns;
  wire [1:0]sel_i;

  assign m_axis_tdata_0_sn_1 = m_axis_tdata_0_sp_1;
  assign m_axis_tdata_1_sn_1 = m_axis_tdata_1_sp_1;
  assign m_axis_tdata_2_sn_1 = m_axis_tdata_2_sp_1;
  assign m_axis_tdata_3_sn_1 = m_axis_tdata_3_sp_1;
  assign m_axis_tdata_4_sn_1 = m_axis_tdata_4_sp_1;
  assign m_axis_tdata_5_sn_1 = m_axis_tdata_5_sp_1;
  assign m_axis_tdata_6_sn_1 = m_axis_tdata_6_sp_1;
  assign m_axis_tdata_7_sn_1 = m_axis_tdata_7_sp_1;
  assign m_axis_tdest_0_sn_1 = m_axis_tdest_0_sp_1;
  assign m_axis_tdest_1_sn_1 = m_axis_tdest_1_sp_1;
  assign m_axis_tdest_2_sn_1 = m_axis_tdest_2_sp_1;
  assign m_axis_tdest_3_sn_1 = m_axis_tdest_3_sp_1;
  assign m_axis_tdest_4_sn_1 = m_axis_tdest_4_sp_1;
  assign m_axis_tdest_5_sn_1 = m_axis_tdest_5_sp_1;
  assign m_axis_tdest_6_sn_1 = m_axis_tdest_6_sp_1;
  assign m_axis_tdest_7_sn_1 = m_axis_tdest_7_sp_1;
  assign m_axis_tid_0_sn_1 = m_axis_tid_0_sp_1;
  assign m_axis_tid_1_sn_1 = m_axis_tid_1_sp_1;
  assign m_axis_tid_2_sn_1 = m_axis_tid_2_sp_1;
  assign m_axis_tid_3_sn_1 = m_axis_tid_3_sp_1;
  assign m_axis_tid_4_sn_1 = m_axis_tid_4_sp_1;
  assign m_axis_tid_5_sn_1 = m_axis_tid_5_sp_1;
  assign m_axis_tid_6_sn_1 = m_axis_tid_6_sp_1;
  assign m_axis_tid_7_sn_1 = m_axis_tid_7_sp_1;
  assign m_axis_tlast_0_sn_1 = m_axis_tlast_0_sp_1;
  assign m_axis_tuser_0_sn_1 = m_axis_tuser_0_sp_1;
  assign m_axis_tvalid_0_sn_1 = m_axis_tvalid_0_sp_1;
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns),
        .Q(arb_busy_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \arb_gnt_r[0]_i_1__2 
       (.I0(sel_i[1]),
        .I1(SR),
        .I2(arb_sel_r0_9),
        .I3(sel_i[0]),
        .O(\arb_gnt_r[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \arb_gnt_r[1]_i_1__2 
       (.I0(sel_i[1]),
        .I1(sel_i[0]),
        .I2(SR),
        .I3(arb_sel_r0_9),
        .O(\arb_gnt_r[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \arb_gnt_r[2]_i_1__1 
       (.I0(sel_i[1]),
        .I1(SR),
        .I2(arb_sel_r0_9),
        .I3(sel_i[0]),
        .O(\arb_gnt_r[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h035DCF7FFFFFFFFF)) 
    \arb_gnt_r[3]_i_10__0 
       (.I0(\arb_gnt_r[3]_i_3__2_2 ),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(\arb_gnt_r[3]_i_3__2_1 ),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(\arb_gnt_r[3]_i_3__2_0 ),
        .I5(port_priority_ns[4]),
        .O(\arb_gnt_r[3]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \arb_gnt_r[3]_i_1__0 
       (.I0(sel_i[1]),
        .I1(sel_i[0]),
        .I2(SR),
        .I3(arb_sel_r0_9),
        .O(\arb_gnt_r[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF750000FF75FF75)) 
    \arb_gnt_r[3]_i_2__2 
       (.I0(\arb_gnt_r[3]_i_5__1_n_0 ),
        .I1(\arb_gnt_r[3]_i_6__2_n_0 ),
        .I2(port_priority_ns[1]),
        .I3(\arb_gnt_r[3]_i_7__2_n_0 ),
        .I4(port_priority_ns[7]),
        .I5(\arb_gnt_r[3]_i_8_n_0 ),
        .O(sel_i[1]));
  LUT6 #(
    .INIT(64'hD0DDDDDDD0DDD0DD)) 
    \arb_gnt_r[3]_i_3__2 
       (.I0(\arb_gnt_r[3]_i_8_n_0 ),
        .I1(port_priority_ns[6]),
        .I2(\arb_gnt_r[3]_i_9__2_n_0 ),
        .I3(\arb_gnt_r[3]_i_10__0_n_0 ),
        .I4(\arb_gnt_r[3]_i_6__2_n_0 ),
        .I5(port_priority_ns[0]),
        .O(sel_i[0]));
  LUT6 #(
    .INIT(64'h035DCF7FFFFFFFFF)) 
    \arb_gnt_r[3]_i_5__1 
       (.I0(\arb_gnt_r[3]_i_3__2_2 ),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(\arb_gnt_r[3]_i_3__2_1 ),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(\arb_gnt_r[3]_i_3__2_0 ),
        .I5(port_priority_ns[5]),
        .O(\arb_gnt_r[3]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \arb_gnt_r[3]_i_6__2 
       (.I0(\arb_gnt_r[3]_i_3__2_2 ),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(\arb_gnt_r[3]_i_3__2_1 ),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(\arb_gnt_r[3]_i_3__2_0 ),
        .O(\arb_gnt_r[3]_i_6__2_n_0 ));
  LUT6 #(
    .INIT(64'h080CCC8C3B2CFF2C)) 
    \arb_gnt_r[3]_i_7__2 
       (.I0(port_priority_ns[3]),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(\arb_gnt_r[3]_i_3__2_0 ),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(\arb_gnt_r[3]_i_3__2_1 ),
        .I5(\arb_gnt_r[3]_i_3__2_2 ),
        .O(\arb_gnt_r[3]_i_7__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h303F5050)) 
    \arb_gnt_r[3]_i_8 
       (.I0(\arb_gnt_r[3]_i_3__2_2 ),
        .I1(\arb_gnt_r[3]_i_3__2_1 ),
        .I2(\barrel_cntr_reg_n_0_[1] ),
        .I3(\arb_gnt_r[3]_i_3__2_0 ),
        .I4(\barrel_cntr_reg_n_0_[0] ),
        .O(\arb_gnt_r[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5F005DEE1D001DCC)) 
    \arb_gnt_r[3]_i_9__2 
       (.I0(\arb_gnt_r[3]_i_3__2_0 ),
        .I1(\barrel_cntr_reg_n_0_[1] ),
        .I2(\arb_gnt_r[3]_i_3__2_1 ),
        .I3(\barrel_cntr_reg_n_0_[0] ),
        .I4(\arb_gnt_r[3]_i_3__2_2 ),
        .I5(port_priority_ns[2]),
        .O(\arb_gnt_r[3]_i_9__2_n_0 ));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1__2_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[1]_i_1__2_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[2]_i_1__1_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[3]_i_1__0_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_sel_r[0]_i_1 
       (.I0(sel_i[0]),
        .I1(arb_sel_r0_9),
        .I2(\arb_sel_r_reg[0]_0 ),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_sel_r[1]_i_1 
       (.I0(sel_i[1]),
        .I1(arb_sel_r0_9),
        .I2(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[0]_0 ),
        .R(SR));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[1]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \barrel_cntr[0]_i_1 
       (.I0(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[0]));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \barrel_cntr[1]_i_1 
       (.I0(\arb_gnt_r_reg[3]_0 [0]),
        .I1(\arb_gnt_r_reg[3]_0 [3]),
        .I2(\arb_gnt_r_reg[3]_0 [1]),
        .I3(arb_busy_r),
        .I4(\arb_gnt_r_reg[3]_0 [2]),
        .O(barrel_cntr));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \barrel_cntr[1]_i_2 
       (.I0(\barrel_cntr_reg_n_0_[0] ),
        .I1(\barrel_cntr_reg_n_0_[1] ),
        .O(barrel_cntr_ns[1]));
  FDRE \barrel_cntr_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[0]),
        .Q(\barrel_cntr_reg_n_0_[0] ),
        .R(SR));
  FDRE \barrel_cntr_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[1]),
        .Q(\barrel_cntr_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1__2 
       (.I0(SR),
        .I1(m_axis_tvalid),
        .O(areset_reg));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(m_axis_tdata_0_sn_1),
        .I1(\m_axis_tdata[0]_0 ),
        .I2(\m_axis_tdata[0]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[0]_2 ),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(m_axis_tdata_1_sn_1),
        .I1(\m_axis_tdata[1]_0 ),
        .I2(\m_axis_tdata[1]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[1]_2 ),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(m_axis_tdata_2_sn_1),
        .I1(\m_axis_tdata[2]_0 ),
        .I2(\m_axis_tdata[2]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[2]_2 ),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(m_axis_tdata_3_sn_1),
        .I1(\m_axis_tdata[3]_0 ),
        .I2(\m_axis_tdata[3]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[3]_2 ),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(m_axis_tdata_4_sn_1),
        .I1(\m_axis_tdata[4]_0 ),
        .I2(\m_axis_tdata[4]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[4]_2 ),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(m_axis_tdata_5_sn_1),
        .I1(\m_axis_tdata[5]_0 ),
        .I2(\m_axis_tdata[5]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[5]_2 ),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(m_axis_tdata_6_sn_1),
        .I1(\m_axis_tdata[6]_0 ),
        .I2(\m_axis_tdata[6]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[6]_2 ),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(m_axis_tdata_7_sn_1),
        .I1(\m_axis_tdata[7]_0 ),
        .I2(\m_axis_tdata[7]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[7]_2 ),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(m_axis_tdest_0_sn_1),
        .I1(\m_axis_tdest[0]_0 ),
        .I2(\m_axis_tdest[0]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[0]_2 ),
        .O(m_axis_tdest[0]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[1]_INST_0 
       (.I0(m_axis_tdest_1_sn_1),
        .I1(\m_axis_tdest[1]_0 ),
        .I2(\m_axis_tdest[1]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[1]_2 ),
        .O(m_axis_tdest[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[2]_INST_0 
       (.I0(m_axis_tdest_2_sn_1),
        .I1(\m_axis_tdest[2]_0 ),
        .I2(\m_axis_tdest[2]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[2]_2 ),
        .O(m_axis_tdest[2]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[3]_INST_0 
       (.I0(m_axis_tdest_3_sn_1),
        .I1(\m_axis_tdest[3]_0 ),
        .I2(\m_axis_tdest[3]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[3]_2 ),
        .O(m_axis_tdest[3]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[4]_INST_0 
       (.I0(m_axis_tdest_4_sn_1),
        .I1(\m_axis_tdest[4]_0 ),
        .I2(\m_axis_tdest[4]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[4]_2 ),
        .O(m_axis_tdest[4]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[5]_INST_0 
       (.I0(m_axis_tdest_5_sn_1),
        .I1(\m_axis_tdest[5]_0 ),
        .I2(\m_axis_tdest[5]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[5]_2 ),
        .O(m_axis_tdest[5]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[6]_INST_0 
       (.I0(m_axis_tdest_6_sn_1),
        .I1(\m_axis_tdest[6]_0 ),
        .I2(\m_axis_tdest[6]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[6]_2 ),
        .O(m_axis_tdest[6]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[7]_INST_0 
       (.I0(m_axis_tdest_7_sn_1),
        .I1(\m_axis_tdest[7]_0 ),
        .I2(\m_axis_tdest[7]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[7]_2 ),
        .O(m_axis_tdest[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[0]_INST_0 
       (.I0(m_axis_tid_0_sn_1),
        .I1(\m_axis_tid[0]_0 ),
        .I2(\m_axis_tid[0]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[0]_2 ),
        .O(m_axis_tid[0]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[1]_INST_0 
       (.I0(m_axis_tid_1_sn_1),
        .I1(\m_axis_tid[1]_0 ),
        .I2(\m_axis_tid[1]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[1]_2 ),
        .O(m_axis_tid[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[2]_INST_0 
       (.I0(m_axis_tid_2_sn_1),
        .I1(\m_axis_tid[2]_0 ),
        .I2(\m_axis_tid[2]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[2]_2 ),
        .O(m_axis_tid[2]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[3]_INST_0 
       (.I0(m_axis_tid_3_sn_1),
        .I1(\m_axis_tid[3]_0 ),
        .I2(\m_axis_tid[3]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[3]_2 ),
        .O(m_axis_tid[3]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[4]_INST_0 
       (.I0(m_axis_tid_4_sn_1),
        .I1(\m_axis_tid[4]_0 ),
        .I2(\m_axis_tid[4]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[4]_2 ),
        .O(m_axis_tid[4]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[5]_INST_0 
       (.I0(m_axis_tid_5_sn_1),
        .I1(\m_axis_tid[5]_0 ),
        .I2(\m_axis_tid[5]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[5]_2 ),
        .O(m_axis_tid[5]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[6]_INST_0 
       (.I0(m_axis_tid_6_sn_1),
        .I1(\m_axis_tid[6]_0 ),
        .I2(\m_axis_tid[6]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[6]_2 ),
        .O(m_axis_tid[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[7]_INST_0 
       (.I0(m_axis_tid_7_sn_1),
        .I1(\m_axis_tid[7]_0 ),
        .I2(\m_axis_tid[7]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[7]_2 ),
        .O(m_axis_tid[7]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(m_axis_tlast_0_sn_1),
        .I1(\m_axis_tlast[0]_0 ),
        .I2(\m_axis_tlast[0]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tlast[0]_2 ),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tuser[0]_INST_0 
       (.I0(m_axis_tuser_0_sn_1),
        .I1(\m_axis_tuser[0]_0 ),
        .I2(\m_axis_tuser[0]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tuser[0]_2 ),
        .O(m_axis_tuser));
  LUT6 #(
    .INIT(64'hEEE0EEE0EEE0EEEE)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(\m_axis_tvalid[0]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tvalid[0]_INST_0_i_2_n_0 ),
        .I2(m_axis_tvalid_0_sn_1),
        .I3(\m_axis_tvalid[0]_0 ),
        .I4(\m_axis_tvalid[0]_1 ),
        .I5(\m_axis_tvalid[0]_INST_0_i_6_n_0 ),
        .O(m_axis_tvalid));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tvalid[0]_INST_0_i_1 
       (.I0(\arb_gnt_r_reg[3]_0 [1]),
        .I1(\gen_tdest_router.busy_r_10 [1]),
        .I2(\arb_gnt_r_reg[3]_0 [2]),
        .I3(\gen_tdest_router.busy_r_10 [2]),
        .O(\m_axis_tvalid[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tvalid[0]_INST_0_i_2 
       (.I0(\arb_gnt_r_reg[3]_0 [3]),
        .I1(\gen_tdest_router.busy_r_10 [3]),
        .I2(\arb_gnt_r_reg[3]_0 [0]),
        .I3(\gen_tdest_router.busy_r_10 [0]),
        .O(\m_axis_tvalid[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_tvalid[0]_INST_0_i_6 
       (.I0(\arb_sel_r_reg[0]_0 ),
        .I1(\arb_sel_r_reg[1]_0 ),
        .O(\m_axis_tvalid[0]_INST_0_i_6_n_0 ));
  FDRE \port_priority_r_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[0]),
        .Q(port_priority_ns[6]),
        .R(SR));
  FDRE \port_priority_r_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[1]),
        .Q(port_priority_ns[7]),
        .R(SR));
  FDSE \port_priority_r_reg[2] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[2]),
        .Q(port_priority_ns[0]),
        .S(SR));
  FDRE \port_priority_r_reg[3] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[3]),
        .Q(port_priority_ns[1]),
        .R(SR));
  FDRE \port_priority_r_reg[4] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[4]),
        .Q(port_priority_ns[2]),
        .R(SR));
  FDSE \port_priority_r_reg[5] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[5]),
        .Q(port_priority_ns[3]),
        .S(SR));
  FDSE \port_priority_r_reg[6] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[6]),
        .Q(port_priority_ns[4]),
        .S(SR));
  FDSE \port_priority_r_reg[7] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[7]),
        .Q(port_priority_ns[5]),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_arb_rr" *) 
module axis_switch_swifsaxis_switch_v1_1_29_arb_rr_5
   (arb_busy_r_0,
    \arb_gnt_r_reg[3]_0 ,
    areset_reg,
    m_axis_tvalid,
    \arb_sel_r_reg[0]_0 ,
    \arb_sel_r_reg[1]_0 ,
    \arb_gnt_r_reg[2]_0 ,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    \arb_gnt_r_reg[2]_1 ,
    \m_axis_tready[1] ,
    SR,
    arb_busy_ns_3,
    aclk,
    arb_sel_r0,
    \arb_gnt_r[3]_i_4__0_0 ,
    \arb_gnt_r[3]_i_4__0_1 ,
    \arb_gnt_r[3]_i_4__0_2 ,
    \m_axis_tvalid[1] ,
    \m_axis_tvalid[1]_0 ,
    \m_axis_tvalid[1]_1 ,
    \gen_tdest_router.busy_r_6 ,
    \m_axis_tdata[8] ,
    \m_axis_tdata[8]_0 ,
    \m_axis_tdata[8]_1 ,
    \m_axis_tdata[8]_2 ,
    \m_axis_tdata[9] ,
    \m_axis_tdata[9]_0 ,
    \m_axis_tdata[9]_1 ,
    \m_axis_tdata[9]_2 ,
    \m_axis_tdata[10] ,
    \m_axis_tdata[10]_0 ,
    \m_axis_tdata[10]_1 ,
    \m_axis_tdata[10]_2 ,
    \m_axis_tdata[11] ,
    \m_axis_tdata[11]_0 ,
    \m_axis_tdata[11]_1 ,
    \m_axis_tdata[11]_2 ,
    \m_axis_tdata[12] ,
    \m_axis_tdata[12]_0 ,
    \m_axis_tdata[12]_1 ,
    \m_axis_tdata[12]_2 ,
    \m_axis_tdata[13] ,
    \m_axis_tdata[13]_0 ,
    \m_axis_tdata[13]_1 ,
    \m_axis_tdata[13]_2 ,
    \m_axis_tdata[14] ,
    \m_axis_tdata[14]_0 ,
    \m_axis_tdata[14]_1 ,
    \m_axis_tdata[14]_2 ,
    \m_axis_tdata[15] ,
    \m_axis_tdata[15]_0 ,
    \m_axis_tdata[15]_1 ,
    \m_axis_tdata[15]_2 ,
    \m_axis_tlast[1] ,
    \m_axis_tlast[1]_0 ,
    \m_axis_tlast[1]_1 ,
    \m_axis_tlast[1]_2 ,
    \m_axis_tid[8] ,
    \m_axis_tid[8]_0 ,
    \m_axis_tid[8]_1 ,
    \m_axis_tid[8]_2 ,
    \m_axis_tid[9] ,
    \m_axis_tid[9]_0 ,
    \m_axis_tid[9]_1 ,
    \m_axis_tid[9]_2 ,
    \m_axis_tid[10] ,
    \m_axis_tid[10]_0 ,
    \m_axis_tid[10]_1 ,
    \m_axis_tid[10]_2 ,
    \m_axis_tid[11] ,
    \m_axis_tid[11]_0 ,
    \m_axis_tid[11]_1 ,
    \m_axis_tid[11]_2 ,
    \m_axis_tid[12] ,
    \m_axis_tid[12]_0 ,
    \m_axis_tid[12]_1 ,
    \m_axis_tid[12]_2 ,
    \m_axis_tid[13] ,
    \m_axis_tid[13]_0 ,
    \m_axis_tid[13]_1 ,
    \m_axis_tid[13]_2 ,
    \m_axis_tid[14] ,
    \m_axis_tid[14]_0 ,
    \m_axis_tid[14]_1 ,
    \m_axis_tid[14]_2 ,
    \m_axis_tid[15] ,
    \m_axis_tid[15]_0 ,
    \m_axis_tid[15]_1 ,
    \m_axis_tid[15]_2 ,
    \m_axis_tdest[8] ,
    \m_axis_tdest[8]_0 ,
    \m_axis_tdest[8]_1 ,
    \m_axis_tdest[8]_2 ,
    \m_axis_tdest[9] ,
    \m_axis_tdest[9]_0 ,
    \m_axis_tdest[9]_1 ,
    \m_axis_tdest[9]_2 ,
    \m_axis_tdest[10] ,
    \m_axis_tdest[10]_0 ,
    \m_axis_tdest[10]_1 ,
    \m_axis_tdest[10]_2 ,
    \m_axis_tdest[11] ,
    \m_axis_tdest[11]_0 ,
    \m_axis_tdest[11]_1 ,
    \m_axis_tdest[11]_2 ,
    \m_axis_tdest[12] ,
    \m_axis_tdest[12]_0 ,
    \m_axis_tdest[12]_1 ,
    \m_axis_tdest[12]_2 ,
    \m_axis_tdest[13] ,
    \m_axis_tdest[13]_0 ,
    \m_axis_tdest[13]_1 ,
    \m_axis_tdest[13]_2 ,
    \m_axis_tdest[14] ,
    \m_axis_tdest[14]_0 ,
    \m_axis_tdest[14]_1 ,
    \m_axis_tdest[14]_2 ,
    \m_axis_tdest[15] ,
    \m_axis_tdest[15]_0 ,
    \m_axis_tdest[15]_1 ,
    \m_axis_tdest[15]_2 ,
    \m_axis_tuser[1] ,
    \m_axis_tuser[1]_0 ,
    \m_axis_tuser[1]_1 ,
    \m_axis_tuser[1]_2 ,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ,
    m_axis_tready);
  output arb_busy_r_0;
  output \arb_gnt_r_reg[3]_0 ;
  output areset_reg;
  output [0:0]m_axis_tvalid;
  output \arb_sel_r_reg[0]_0 ;
  output \arb_sel_r_reg[1]_0 ;
  output [2:0]\arb_gnt_r_reg[2]_0 ;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output \arb_gnt_r_reg[2]_1 ;
  output \m_axis_tready[1] ;
  input [0:0]SR;
  input arb_busy_ns_3;
  input aclk;
  input arb_sel_r0;
  input \arb_gnt_r[3]_i_4__0_0 ;
  input \arb_gnt_r[3]_i_4__0_1 ;
  input \arb_gnt_r[3]_i_4__0_2 ;
  input \m_axis_tvalid[1] ;
  input \m_axis_tvalid[1]_0 ;
  input \m_axis_tvalid[1]_1 ;
  input [2:0]\gen_tdest_router.busy_r_6 ;
  input \m_axis_tdata[8] ;
  input \m_axis_tdata[8]_0 ;
  input \m_axis_tdata[8]_1 ;
  input \m_axis_tdata[8]_2 ;
  input \m_axis_tdata[9] ;
  input \m_axis_tdata[9]_0 ;
  input \m_axis_tdata[9]_1 ;
  input \m_axis_tdata[9]_2 ;
  input \m_axis_tdata[10] ;
  input \m_axis_tdata[10]_0 ;
  input \m_axis_tdata[10]_1 ;
  input \m_axis_tdata[10]_2 ;
  input \m_axis_tdata[11] ;
  input \m_axis_tdata[11]_0 ;
  input \m_axis_tdata[11]_1 ;
  input \m_axis_tdata[11]_2 ;
  input \m_axis_tdata[12] ;
  input \m_axis_tdata[12]_0 ;
  input \m_axis_tdata[12]_1 ;
  input \m_axis_tdata[12]_2 ;
  input \m_axis_tdata[13] ;
  input \m_axis_tdata[13]_0 ;
  input \m_axis_tdata[13]_1 ;
  input \m_axis_tdata[13]_2 ;
  input \m_axis_tdata[14] ;
  input \m_axis_tdata[14]_0 ;
  input \m_axis_tdata[14]_1 ;
  input \m_axis_tdata[14]_2 ;
  input \m_axis_tdata[15] ;
  input \m_axis_tdata[15]_0 ;
  input \m_axis_tdata[15]_1 ;
  input \m_axis_tdata[15]_2 ;
  input \m_axis_tlast[1] ;
  input \m_axis_tlast[1]_0 ;
  input \m_axis_tlast[1]_1 ;
  input \m_axis_tlast[1]_2 ;
  input \m_axis_tid[8] ;
  input \m_axis_tid[8]_0 ;
  input \m_axis_tid[8]_1 ;
  input \m_axis_tid[8]_2 ;
  input \m_axis_tid[9] ;
  input \m_axis_tid[9]_0 ;
  input \m_axis_tid[9]_1 ;
  input \m_axis_tid[9]_2 ;
  input \m_axis_tid[10] ;
  input \m_axis_tid[10]_0 ;
  input \m_axis_tid[10]_1 ;
  input \m_axis_tid[10]_2 ;
  input \m_axis_tid[11] ;
  input \m_axis_tid[11]_0 ;
  input \m_axis_tid[11]_1 ;
  input \m_axis_tid[11]_2 ;
  input \m_axis_tid[12] ;
  input \m_axis_tid[12]_0 ;
  input \m_axis_tid[12]_1 ;
  input \m_axis_tid[12]_2 ;
  input \m_axis_tid[13] ;
  input \m_axis_tid[13]_0 ;
  input \m_axis_tid[13]_1 ;
  input \m_axis_tid[13]_2 ;
  input \m_axis_tid[14] ;
  input \m_axis_tid[14]_0 ;
  input \m_axis_tid[14]_1 ;
  input \m_axis_tid[14]_2 ;
  input \m_axis_tid[15] ;
  input \m_axis_tid[15]_0 ;
  input \m_axis_tid[15]_1 ;
  input \m_axis_tid[15]_2 ;
  input \m_axis_tdest[8] ;
  input \m_axis_tdest[8]_0 ;
  input \m_axis_tdest[8]_1 ;
  input \m_axis_tdest[8]_2 ;
  input \m_axis_tdest[9] ;
  input \m_axis_tdest[9]_0 ;
  input \m_axis_tdest[9]_1 ;
  input \m_axis_tdest[9]_2 ;
  input \m_axis_tdest[10] ;
  input \m_axis_tdest[10]_0 ;
  input \m_axis_tdest[10]_1 ;
  input \m_axis_tdest[10]_2 ;
  input \m_axis_tdest[11] ;
  input \m_axis_tdest[11]_0 ;
  input \m_axis_tdest[11]_1 ;
  input \m_axis_tdest[11]_2 ;
  input \m_axis_tdest[12] ;
  input \m_axis_tdest[12]_0 ;
  input \m_axis_tdest[12]_1 ;
  input \m_axis_tdest[12]_2 ;
  input \m_axis_tdest[13] ;
  input \m_axis_tdest[13]_0 ;
  input \m_axis_tdest[13]_1 ;
  input \m_axis_tdest[13]_2 ;
  input \m_axis_tdest[14] ;
  input \m_axis_tdest[14]_0 ;
  input \m_axis_tdest[14]_1 ;
  input \m_axis_tdest[14]_2 ;
  input \m_axis_tdest[15] ;
  input \m_axis_tdest[15]_0 ;
  input \m_axis_tdest[15]_1 ;
  input \m_axis_tdest[15]_2 ;
  input \m_axis_tuser[1] ;
  input \m_axis_tuser[1]_0 ;
  input \m_axis_tuser[1]_1 ;
  input \m_axis_tuser[1]_2 ;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  input [0:0]m_axis_tready;

  wire [0:0]SR;
  wire aclk;
  wire arb_busy_ns_3;
  wire arb_busy_r_0;
  wire \arb_gnt_r[0]_i_1_n_0 ;
  wire \arb_gnt_r[1]_i_1_n_0 ;
  wire \arb_gnt_r[2]_i_1__0_n_0 ;
  wire \arb_gnt_r[3]_i_1__1_n_0 ;
  wire \arb_gnt_r[3]_i_2__0_n_0 ;
  wire \arb_gnt_r[3]_i_4__0_0 ;
  wire \arb_gnt_r[3]_i_4__0_1 ;
  wire \arb_gnt_r[3]_i_4__0_2 ;
  wire \arb_gnt_r[3]_i_5_n_0 ;
  wire \arb_gnt_r[3]_i_6__0_n_0 ;
  wire \arb_gnt_r[3]_i_7__0_n_0 ;
  wire \arb_gnt_r[3]_i_9_n_0 ;
  wire [2:0]\arb_gnt_r_reg[2]_0 ;
  wire \arb_gnt_r_reg[2]_1 ;
  wire \arb_gnt_r_reg[3]_0 ;
  wire arb_sel_r0;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire \arb_sel_r_reg[0]_0 ;
  wire \arb_sel_r_reg[1]_0 ;
  wire areset_reg;
  wire barrel_cntr;
  wire [1:0]barrel_cntr_ns;
  wire \barrel_cntr_reg_n_0_[0] ;
  wire \barrel_cntr_reg_n_0_[1] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3__0_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  wire [2:0]\gen_tdest_router.busy_r_6 ;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[10] ;
  wire \m_axis_tdata[10]_0 ;
  wire \m_axis_tdata[10]_1 ;
  wire \m_axis_tdata[10]_2 ;
  wire \m_axis_tdata[11] ;
  wire \m_axis_tdata[11]_0 ;
  wire \m_axis_tdata[11]_1 ;
  wire \m_axis_tdata[11]_2 ;
  wire \m_axis_tdata[12] ;
  wire \m_axis_tdata[12]_0 ;
  wire \m_axis_tdata[12]_1 ;
  wire \m_axis_tdata[12]_2 ;
  wire \m_axis_tdata[13] ;
  wire \m_axis_tdata[13]_0 ;
  wire \m_axis_tdata[13]_1 ;
  wire \m_axis_tdata[13]_2 ;
  wire \m_axis_tdata[14] ;
  wire \m_axis_tdata[14]_0 ;
  wire \m_axis_tdata[14]_1 ;
  wire \m_axis_tdata[14]_2 ;
  wire \m_axis_tdata[15] ;
  wire \m_axis_tdata[15]_0 ;
  wire \m_axis_tdata[15]_1 ;
  wire \m_axis_tdata[15]_2 ;
  wire \m_axis_tdata[8] ;
  wire \m_axis_tdata[8]_0 ;
  wire \m_axis_tdata[8]_1 ;
  wire \m_axis_tdata[8]_2 ;
  wire \m_axis_tdata[9] ;
  wire \m_axis_tdata[9]_0 ;
  wire \m_axis_tdata[9]_1 ;
  wire \m_axis_tdata[9]_2 ;
  wire [7:0]m_axis_tdest;
  wire \m_axis_tdest[10] ;
  wire \m_axis_tdest[10]_0 ;
  wire \m_axis_tdest[10]_1 ;
  wire \m_axis_tdest[10]_2 ;
  wire \m_axis_tdest[11] ;
  wire \m_axis_tdest[11]_0 ;
  wire \m_axis_tdest[11]_1 ;
  wire \m_axis_tdest[11]_2 ;
  wire \m_axis_tdest[12] ;
  wire \m_axis_tdest[12]_0 ;
  wire \m_axis_tdest[12]_1 ;
  wire \m_axis_tdest[12]_2 ;
  wire \m_axis_tdest[13] ;
  wire \m_axis_tdest[13]_0 ;
  wire \m_axis_tdest[13]_1 ;
  wire \m_axis_tdest[13]_2 ;
  wire \m_axis_tdest[14] ;
  wire \m_axis_tdest[14]_0 ;
  wire \m_axis_tdest[14]_1 ;
  wire \m_axis_tdest[14]_2 ;
  wire \m_axis_tdest[15] ;
  wire \m_axis_tdest[15]_0 ;
  wire \m_axis_tdest[15]_1 ;
  wire \m_axis_tdest[15]_2 ;
  wire \m_axis_tdest[8] ;
  wire \m_axis_tdest[8]_0 ;
  wire \m_axis_tdest[8]_1 ;
  wire \m_axis_tdest[8]_2 ;
  wire \m_axis_tdest[9] ;
  wire \m_axis_tdest[9]_0 ;
  wire \m_axis_tdest[9]_1 ;
  wire \m_axis_tdest[9]_2 ;
  wire [7:0]m_axis_tid;
  wire \m_axis_tid[10] ;
  wire \m_axis_tid[10]_0 ;
  wire \m_axis_tid[10]_1 ;
  wire \m_axis_tid[10]_2 ;
  wire \m_axis_tid[11] ;
  wire \m_axis_tid[11]_0 ;
  wire \m_axis_tid[11]_1 ;
  wire \m_axis_tid[11]_2 ;
  wire \m_axis_tid[12] ;
  wire \m_axis_tid[12]_0 ;
  wire \m_axis_tid[12]_1 ;
  wire \m_axis_tid[12]_2 ;
  wire \m_axis_tid[13] ;
  wire \m_axis_tid[13]_0 ;
  wire \m_axis_tid[13]_1 ;
  wire \m_axis_tid[13]_2 ;
  wire \m_axis_tid[14] ;
  wire \m_axis_tid[14]_0 ;
  wire \m_axis_tid[14]_1 ;
  wire \m_axis_tid[14]_2 ;
  wire \m_axis_tid[15] ;
  wire \m_axis_tid[15]_0 ;
  wire \m_axis_tid[15]_1 ;
  wire \m_axis_tid[15]_2 ;
  wire \m_axis_tid[8] ;
  wire \m_axis_tid[8]_0 ;
  wire \m_axis_tid[8]_1 ;
  wire \m_axis_tid[8]_2 ;
  wire \m_axis_tid[9] ;
  wire \m_axis_tid[9]_0 ;
  wire \m_axis_tid[9]_1 ;
  wire \m_axis_tid[9]_2 ;
  wire [0:0]m_axis_tlast;
  wire \m_axis_tlast[1] ;
  wire \m_axis_tlast[1]_0 ;
  wire \m_axis_tlast[1]_1 ;
  wire \m_axis_tlast[1]_2 ;
  wire [0:0]m_axis_tready;
  wire \m_axis_tready[1] ;
  wire [0:0]m_axis_tuser;
  wire \m_axis_tuser[1] ;
  wire \m_axis_tuser[1]_0 ;
  wire \m_axis_tuser[1]_1 ;
  wire \m_axis_tuser[1]_2 ;
  wire [0:0]m_axis_tvalid;
  wire \m_axis_tvalid[1] ;
  wire \m_axis_tvalid[1]_0 ;
  wire \m_axis_tvalid[1]_1 ;
  wire \m_axis_tvalid[1]_INST_0_i_1_n_0 ;
  wire [7:0]port_priority_ns;
  wire [0:0]sel_i;

  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns_3),
        .Q(arb_busy_r_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \arb_gnt_r[0]_i_1 
       (.I0(\arb_gnt_r[3]_i_2__0_n_0 ),
        .I1(arb_sel_r0),
        .I2(SR),
        .I3(sel_i),
        .O(\arb_gnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \arb_gnt_r[1]_i_1 
       (.I0(\arb_gnt_r[3]_i_2__0_n_0 ),
        .I1(arb_sel_r0),
        .I2(SR),
        .I3(sel_i),
        .O(\arb_gnt_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \arb_gnt_r[2]_i_1__0 
       (.I0(\arb_gnt_r[3]_i_2__0_n_0 ),
        .I1(arb_sel_r0),
        .I2(SR),
        .I3(sel_i),
        .O(\arb_gnt_r[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \arb_gnt_r[3]_i_1__1 
       (.I0(\arb_gnt_r[3]_i_2__0_n_0 ),
        .I1(arb_sel_r0),
        .I2(SR),
        .I3(sel_i),
        .O(\arb_gnt_r[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h55553303)) 
    \arb_gnt_r[3]_i_2__0 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_5_n_0 ),
        .I2(port_priority_ns[5]),
        .I3(\arb_gnt_r[3]_i_6__0_n_0 ),
        .I4(\arb_gnt_r[3]_i_7__0_n_0 ),
        .O(\arb_gnt_r[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \arb_gnt_r[3]_i_4__0 
       (.I0(port_priority_ns[6]),
        .I1(\arb_gnt_r[3]_i_7__0_n_0 ),
        .I2(\arb_gnt_r[3]_i_6__0_n_0 ),
        .I3(port_priority_ns[4]),
        .I4(\arb_gnt_r[3]_i_9_n_0 ),
        .O(sel_i));
  LUT6 #(
    .INIT(64'hB88C308088800080)) 
    \arb_gnt_r[3]_i_5 
       (.I0(port_priority_ns[1]),
        .I1(\barrel_cntr_reg_n_0_[1] ),
        .I2(\arb_gnt_r[3]_i_4__0_0 ),
        .I3(\barrel_cntr_reg_n_0_[0] ),
        .I4(\arb_gnt_r[3]_i_4__0_1 ),
        .I5(port_priority_ns[3]),
        .O(\arb_gnt_r[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888888BC88888888)) 
    \arb_gnt_r[3]_i_6__0 
       (.I0(\arb_gnt_r[3]_i_4__0_1 ),
        .I1(\barrel_cntr_reg_n_0_[1] ),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(\arb_gnt_r_reg[3]_0 ),
        .I4(\arb_gnt_r[3]_i_4__0_2 ),
        .I5(\m_axis_tvalid[1] ),
        .O(\arb_gnt_r[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h020000FF02000000)) 
    \arb_gnt_r[3]_i_7__0 
       (.I0(\m_axis_tvalid[1] ),
        .I1(\arb_gnt_r[3]_i_4__0_2 ),
        .I2(\arb_gnt_r_reg[3]_0 ),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(\barrel_cntr_reg_n_0_[0] ),
        .I5(\arb_gnt_r[3]_i_4__0_1 ),
        .O(\arb_gnt_r[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hB88C308088800080)) 
    \arb_gnt_r[3]_i_9 
       (.I0(port_priority_ns[0]),
        .I1(\barrel_cntr_reg_n_0_[1] ),
        .I2(\arb_gnt_r[3]_i_4__0_0 ),
        .I3(\barrel_cntr_reg_n_0_[0] ),
        .I4(\arb_gnt_r[3]_i_4__0_1 ),
        .I5(port_priority_ns[2]),
        .O(\arb_gnt_r[3]_i_9_n_0 ));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[2]_0 [0]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[1]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[2]_0 [1]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[2]_i_1__0_n_0 ),
        .Q(\arb_gnt_r_reg[2]_0 [2]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[3]_i_1__1_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_sel_r[0]_i_1 
       (.I0(sel_i),
        .I1(arb_sel_r0),
        .I2(\arb_sel_r_reg[0]_0 ),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \arb_sel_r[1]_i_1 
       (.I0(\arb_gnt_r[3]_i_2__0_n_0 ),
        .I1(arb_sel_r0),
        .I2(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[0]_0 ),
        .R(SR));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[1]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \barrel_cntr[0]_i_1__0 
       (.I0(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[0]));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \barrel_cntr[1]_i_1__0 
       (.I0(\arb_gnt_r_reg[3]_0 ),
        .I1(\arb_gnt_r_reg[2]_0 [0]),
        .I2(\arb_gnt_r_reg[2]_0 [1]),
        .I3(arb_busy_r_0),
        .I4(\arb_gnt_r_reg[2]_0 [2]),
        .O(barrel_cntr));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \barrel_cntr[1]_i_2__0 
       (.I0(\barrel_cntr_reg_n_0_[1] ),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[1]));
  FDRE \barrel_cntr_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[0]),
        .Q(\barrel_cntr_reg_n_0_[0] ),
        .R(SR));
  FDRE \barrel_cntr_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[1]),
        .Q(\barrel_cntr_reg_n_0_[1] ),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[2]_i_1__2 
       (.I0(\arb_gnt_r_reg[2]_0 [2]),
        .I1(\gen_tdest_router.busy_r_6 [1]),
        .O(\arb_gnt_r_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hF1F1F10000000000)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2__1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3__0_n_0 ),
        .I1(\m_axis_tvalid[1]_1 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I3(\m_axis_tvalid[1]_0 ),
        .I4(\m_axis_tvalid[1]_INST_0_i_1_n_0 ),
        .I5(m_axis_tready),
        .O(\m_axis_tready[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3__0 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1__0 
       (.I0(SR),
        .I1(m_axis_tvalid),
        .O(areset_reg));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\m_axis_tdata[10] ),
        .I1(\m_axis_tdata[10]_0 ),
        .I2(\m_axis_tdata[10]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[10]_2 ),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\m_axis_tdata[11] ),
        .I1(\m_axis_tdata[11]_0 ),
        .I2(\m_axis_tdata[11]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[11]_2 ),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\m_axis_tdata[12] ),
        .I1(\m_axis_tdata[12]_0 ),
        .I2(\m_axis_tdata[12]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[12]_2 ),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\m_axis_tdata[13] ),
        .I1(\m_axis_tdata[13]_0 ),
        .I2(\m_axis_tdata[13]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[13]_2 ),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\m_axis_tdata[14] ),
        .I1(\m_axis_tdata[14]_0 ),
        .I2(\m_axis_tdata[14]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[14]_2 ),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\m_axis_tdata[15] ),
        .I1(\m_axis_tdata[15]_0 ),
        .I2(\m_axis_tdata[15]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[15]_2 ),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\m_axis_tdata[8] ),
        .I1(\m_axis_tdata[8]_0 ),
        .I2(\m_axis_tdata[8]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[8]_2 ),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\m_axis_tdata[9] ),
        .I1(\m_axis_tdata[9]_0 ),
        .I2(\m_axis_tdata[9]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[9]_2 ),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[10]_INST_0 
       (.I0(\m_axis_tdest[10] ),
        .I1(\m_axis_tdest[10]_0 ),
        .I2(\m_axis_tdest[10]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[10]_2 ),
        .O(m_axis_tdest[2]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[11]_INST_0 
       (.I0(\m_axis_tdest[11] ),
        .I1(\m_axis_tdest[11]_0 ),
        .I2(\m_axis_tdest[11]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[11]_2 ),
        .O(m_axis_tdest[3]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[12]_INST_0 
       (.I0(\m_axis_tdest[12] ),
        .I1(\m_axis_tdest[12]_0 ),
        .I2(\m_axis_tdest[12]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[12]_2 ),
        .O(m_axis_tdest[4]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[13]_INST_0 
       (.I0(\m_axis_tdest[13] ),
        .I1(\m_axis_tdest[13]_0 ),
        .I2(\m_axis_tdest[13]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[13]_2 ),
        .O(m_axis_tdest[5]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[14]_INST_0 
       (.I0(\m_axis_tdest[14] ),
        .I1(\m_axis_tdest[14]_0 ),
        .I2(\m_axis_tdest[14]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[14]_2 ),
        .O(m_axis_tdest[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[15]_INST_0 
       (.I0(\m_axis_tdest[15] ),
        .I1(\m_axis_tdest[15]_0 ),
        .I2(\m_axis_tdest[15]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[15]_2 ),
        .O(m_axis_tdest[7]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[8]_INST_0 
       (.I0(\m_axis_tdest[8] ),
        .I1(\m_axis_tdest[8]_0 ),
        .I2(\m_axis_tdest[8]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[8]_2 ),
        .O(m_axis_tdest[0]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[9]_INST_0 
       (.I0(\m_axis_tdest[9] ),
        .I1(\m_axis_tdest[9]_0 ),
        .I2(\m_axis_tdest[9]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[9]_2 ),
        .O(m_axis_tdest[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[10]_INST_0 
       (.I0(\m_axis_tid[10] ),
        .I1(\m_axis_tid[10]_0 ),
        .I2(\m_axis_tid[10]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[10]_2 ),
        .O(m_axis_tid[2]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[11]_INST_0 
       (.I0(\m_axis_tid[11] ),
        .I1(\m_axis_tid[11]_0 ),
        .I2(\m_axis_tid[11]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[11]_2 ),
        .O(m_axis_tid[3]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[12]_INST_0 
       (.I0(\m_axis_tid[12] ),
        .I1(\m_axis_tid[12]_0 ),
        .I2(\m_axis_tid[12]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[12]_2 ),
        .O(m_axis_tid[4]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[13]_INST_0 
       (.I0(\m_axis_tid[13] ),
        .I1(\m_axis_tid[13]_0 ),
        .I2(\m_axis_tid[13]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[13]_2 ),
        .O(m_axis_tid[5]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[14]_INST_0 
       (.I0(\m_axis_tid[14] ),
        .I1(\m_axis_tid[14]_0 ),
        .I2(\m_axis_tid[14]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[14]_2 ),
        .O(m_axis_tid[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[15]_INST_0 
       (.I0(\m_axis_tid[15] ),
        .I1(\m_axis_tid[15]_0 ),
        .I2(\m_axis_tid[15]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[15]_2 ),
        .O(m_axis_tid[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[8]_INST_0 
       (.I0(\m_axis_tid[8] ),
        .I1(\m_axis_tid[8]_0 ),
        .I2(\m_axis_tid[8]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[8]_2 ),
        .O(m_axis_tid[0]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[9]_INST_0 
       (.I0(\m_axis_tid[9] ),
        .I1(\m_axis_tid[9]_0 ),
        .I2(\m_axis_tid[9]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[9]_2 ),
        .O(m_axis_tid[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tlast[1]_INST_0 
       (.I0(\m_axis_tlast[1] ),
        .I1(\m_axis_tlast[1]_0 ),
        .I2(\m_axis_tlast[1]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tlast[1]_2 ),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tuser[1]_INST_0 
       (.I0(\m_axis_tuser[1] ),
        .I1(\m_axis_tuser[1]_0 ),
        .I2(\m_axis_tuser[1]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tuser[1]_2 ),
        .O(m_axis_tuser));
  LUT6 #(
    .INIT(64'hE0000000E00000EE)) 
    \m_axis_tvalid[1]_INST_0 
       (.I0(\m_axis_tvalid[1]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tvalid[1]_0 ),
        .I2(\m_axis_tvalid[1] ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tvalid[1]_1 ),
        .O(m_axis_tvalid));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tvalid[1]_INST_0_i_1 
       (.I0(\arb_gnt_r_reg[2]_0 [0]),
        .I1(\gen_tdest_router.busy_r_6 [0]),
        .I2(\arb_gnt_r_reg[3]_0 ),
        .I3(\gen_tdest_router.busy_r_6 [2]),
        .O(\m_axis_tvalid[1]_INST_0_i_1_n_0 ));
  FDRE \port_priority_r_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[0]),
        .Q(port_priority_ns[6]),
        .R(SR));
  FDRE \port_priority_r_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[1]),
        .Q(port_priority_ns[7]),
        .R(SR));
  FDSE \port_priority_r_reg[2] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[2]),
        .Q(port_priority_ns[0]),
        .S(SR));
  FDRE \port_priority_r_reg[3] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[3]),
        .Q(port_priority_ns[1]),
        .R(SR));
  FDRE \port_priority_r_reg[4] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[4]),
        .Q(port_priority_ns[2]),
        .R(SR));
  FDSE \port_priority_r_reg[5] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[5]),
        .Q(port_priority_ns[3]),
        .S(SR));
  FDSE \port_priority_r_reg[6] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[6]),
        .Q(port_priority_ns[4]),
        .S(SR));
  FDSE \port_priority_r_reg[7] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[7]),
        .Q(port_priority_ns[5]),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_arb_rr" *) 
module axis_switch_swifsaxis_switch_v1_1_29_arb_rr_6
   (arb_busy_r_1,
    \arb_gnt_r_reg[3]_0 ,
    \arb_gnt_r_reg[0]_0 ,
    areset_reg,
    m_axis_tvalid,
    \arb_sel_r_reg[0]_0 ,
    \arb_sel_r_reg[1]_0 ,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    \arb_gnt_r_reg[1]_0 ,
    \arb_gnt_r_reg[2]_0 ,
    \m_axis_tready[2] ,
    SR,
    arb_busy_ns_4,
    aclk,
    arb_sel_r0_7,
    \arb_gnt_r[3]_i_4__1_0 ,
    \arb_gnt_r[3]_i_4__1_1 ,
    \arb_gnt_r[3]_i_2__1_0 ,
    \m_axis_tvalid[2] ,
    \arb_gnt_r[3]_i_4__1_2 ,
    \m_axis_tvalid[2]_0 ,
    \gen_tdest_router.busy_r_8 ,
    \m_axis_tdata[16] ,
    \m_axis_tdata[16]_0 ,
    \m_axis_tdata[16]_1 ,
    \m_axis_tdata[16]_2 ,
    \m_axis_tdata[17] ,
    \m_axis_tdata[17]_0 ,
    \m_axis_tdata[17]_1 ,
    \m_axis_tdata[17]_2 ,
    \m_axis_tdata[18] ,
    \m_axis_tdata[18]_0 ,
    \m_axis_tdata[18]_1 ,
    \m_axis_tdata[18]_2 ,
    \m_axis_tdata[19] ,
    \m_axis_tdata[19]_0 ,
    \m_axis_tdata[19]_1 ,
    \m_axis_tdata[19]_2 ,
    \m_axis_tdata[20] ,
    \m_axis_tdata[20]_0 ,
    \m_axis_tdata[20]_1 ,
    \m_axis_tdata[20]_2 ,
    \m_axis_tdata[21] ,
    \m_axis_tdata[21]_0 ,
    \m_axis_tdata[21]_1 ,
    \m_axis_tdata[21]_2 ,
    \m_axis_tdata[22] ,
    \m_axis_tdata[22]_0 ,
    \m_axis_tdata[22]_1 ,
    \m_axis_tdata[22]_2 ,
    \m_axis_tdata[23] ,
    \m_axis_tdata[23]_0 ,
    \m_axis_tdata[23]_1 ,
    \m_axis_tdata[23]_2 ,
    \m_axis_tlast[2] ,
    \m_axis_tlast[2]_0 ,
    \m_axis_tlast[2]_1 ,
    \m_axis_tlast[2]_2 ,
    \m_axis_tid[16] ,
    \m_axis_tid[16]_0 ,
    \m_axis_tid[16]_1 ,
    \m_axis_tid[16]_2 ,
    \m_axis_tid[17] ,
    \m_axis_tid[17]_0 ,
    \m_axis_tid[17]_1 ,
    \m_axis_tid[17]_2 ,
    \m_axis_tid[18] ,
    \m_axis_tid[18]_0 ,
    \m_axis_tid[18]_1 ,
    \m_axis_tid[18]_2 ,
    \m_axis_tid[19] ,
    \m_axis_tid[19]_0 ,
    \m_axis_tid[19]_1 ,
    \m_axis_tid[19]_2 ,
    \m_axis_tid[20] ,
    \m_axis_tid[20]_0 ,
    \m_axis_tid[20]_1 ,
    \m_axis_tid[20]_2 ,
    \m_axis_tid[21] ,
    \m_axis_tid[21]_0 ,
    \m_axis_tid[21]_1 ,
    \m_axis_tid[21]_2 ,
    \m_axis_tid[22] ,
    \m_axis_tid[22]_0 ,
    \m_axis_tid[22]_1 ,
    \m_axis_tid[22]_2 ,
    \m_axis_tid[23] ,
    \m_axis_tid[23]_0 ,
    \m_axis_tid[23]_1 ,
    \m_axis_tid[23]_2 ,
    \m_axis_tdest[16] ,
    \m_axis_tdest[16]_0 ,
    \m_axis_tdest[16]_1 ,
    \m_axis_tdest[16]_2 ,
    \m_axis_tdest[17] ,
    \m_axis_tdest[17]_0 ,
    \m_axis_tdest[17]_1 ,
    \m_axis_tdest[17]_2 ,
    \m_axis_tdest[18] ,
    \m_axis_tdest[18]_0 ,
    \m_axis_tdest[18]_1 ,
    \m_axis_tdest[18]_2 ,
    \m_axis_tdest[19] ,
    \m_axis_tdest[19]_0 ,
    \m_axis_tdest[19]_1 ,
    \m_axis_tdest[19]_2 ,
    \m_axis_tdest[20] ,
    \m_axis_tdest[20]_0 ,
    \m_axis_tdest[20]_1 ,
    \m_axis_tdest[20]_2 ,
    \m_axis_tdest[21] ,
    \m_axis_tdest[21]_0 ,
    \m_axis_tdest[21]_1 ,
    \m_axis_tdest[21]_2 ,
    \m_axis_tdest[22] ,
    \m_axis_tdest[22]_0 ,
    \m_axis_tdest[22]_1 ,
    \m_axis_tdest[22]_2 ,
    \m_axis_tdest[23] ,
    \m_axis_tdest[23]_0 ,
    \m_axis_tdest[23]_1 ,
    \m_axis_tdest[23]_2 ,
    \m_axis_tuser[2] ,
    \m_axis_tuser[2]_0 ,
    \m_axis_tuser[2]_1 ,
    \m_axis_tuser[2]_2 ,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ,
    m_axis_tready);
  output arb_busy_r_1;
  output \arb_gnt_r_reg[3]_0 ;
  output \arb_gnt_r_reg[0]_0 ;
  output areset_reg;
  output [0:0]m_axis_tvalid;
  output \arb_sel_r_reg[0]_0 ;
  output \arb_sel_r_reg[1]_0 ;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [0:0]\arb_gnt_r_reg[1]_0 ;
  output \arb_gnt_r_reg[2]_0 ;
  output \m_axis_tready[2] ;
  input [0:0]SR;
  input arb_busy_ns_4;
  input aclk;
  input arb_sel_r0_7;
  input \arb_gnt_r[3]_i_4__1_0 ;
  input \arb_gnt_r[3]_i_4__1_1 ;
  input \arb_gnt_r[3]_i_2__1_0 ;
  input \m_axis_tvalid[2] ;
  input \arb_gnt_r[3]_i_4__1_2 ;
  input \m_axis_tvalid[2]_0 ;
  input [3:0]\gen_tdest_router.busy_r_8 ;
  input \m_axis_tdata[16] ;
  input \m_axis_tdata[16]_0 ;
  input \m_axis_tdata[16]_1 ;
  input \m_axis_tdata[16]_2 ;
  input \m_axis_tdata[17] ;
  input \m_axis_tdata[17]_0 ;
  input \m_axis_tdata[17]_1 ;
  input \m_axis_tdata[17]_2 ;
  input \m_axis_tdata[18] ;
  input \m_axis_tdata[18]_0 ;
  input \m_axis_tdata[18]_1 ;
  input \m_axis_tdata[18]_2 ;
  input \m_axis_tdata[19] ;
  input \m_axis_tdata[19]_0 ;
  input \m_axis_tdata[19]_1 ;
  input \m_axis_tdata[19]_2 ;
  input \m_axis_tdata[20] ;
  input \m_axis_tdata[20]_0 ;
  input \m_axis_tdata[20]_1 ;
  input \m_axis_tdata[20]_2 ;
  input \m_axis_tdata[21] ;
  input \m_axis_tdata[21]_0 ;
  input \m_axis_tdata[21]_1 ;
  input \m_axis_tdata[21]_2 ;
  input \m_axis_tdata[22] ;
  input \m_axis_tdata[22]_0 ;
  input \m_axis_tdata[22]_1 ;
  input \m_axis_tdata[22]_2 ;
  input \m_axis_tdata[23] ;
  input \m_axis_tdata[23]_0 ;
  input \m_axis_tdata[23]_1 ;
  input \m_axis_tdata[23]_2 ;
  input \m_axis_tlast[2] ;
  input \m_axis_tlast[2]_0 ;
  input \m_axis_tlast[2]_1 ;
  input \m_axis_tlast[2]_2 ;
  input \m_axis_tid[16] ;
  input \m_axis_tid[16]_0 ;
  input \m_axis_tid[16]_1 ;
  input \m_axis_tid[16]_2 ;
  input \m_axis_tid[17] ;
  input \m_axis_tid[17]_0 ;
  input \m_axis_tid[17]_1 ;
  input \m_axis_tid[17]_2 ;
  input \m_axis_tid[18] ;
  input \m_axis_tid[18]_0 ;
  input \m_axis_tid[18]_1 ;
  input \m_axis_tid[18]_2 ;
  input \m_axis_tid[19] ;
  input \m_axis_tid[19]_0 ;
  input \m_axis_tid[19]_1 ;
  input \m_axis_tid[19]_2 ;
  input \m_axis_tid[20] ;
  input \m_axis_tid[20]_0 ;
  input \m_axis_tid[20]_1 ;
  input \m_axis_tid[20]_2 ;
  input \m_axis_tid[21] ;
  input \m_axis_tid[21]_0 ;
  input \m_axis_tid[21]_1 ;
  input \m_axis_tid[21]_2 ;
  input \m_axis_tid[22] ;
  input \m_axis_tid[22]_0 ;
  input \m_axis_tid[22]_1 ;
  input \m_axis_tid[22]_2 ;
  input \m_axis_tid[23] ;
  input \m_axis_tid[23]_0 ;
  input \m_axis_tid[23]_1 ;
  input \m_axis_tid[23]_2 ;
  input \m_axis_tdest[16] ;
  input \m_axis_tdest[16]_0 ;
  input \m_axis_tdest[16]_1 ;
  input \m_axis_tdest[16]_2 ;
  input \m_axis_tdest[17] ;
  input \m_axis_tdest[17]_0 ;
  input \m_axis_tdest[17]_1 ;
  input \m_axis_tdest[17]_2 ;
  input \m_axis_tdest[18] ;
  input \m_axis_tdest[18]_0 ;
  input \m_axis_tdest[18]_1 ;
  input \m_axis_tdest[18]_2 ;
  input \m_axis_tdest[19] ;
  input \m_axis_tdest[19]_0 ;
  input \m_axis_tdest[19]_1 ;
  input \m_axis_tdest[19]_2 ;
  input \m_axis_tdest[20] ;
  input \m_axis_tdest[20]_0 ;
  input \m_axis_tdest[20]_1 ;
  input \m_axis_tdest[20]_2 ;
  input \m_axis_tdest[21] ;
  input \m_axis_tdest[21]_0 ;
  input \m_axis_tdest[21]_1 ;
  input \m_axis_tdest[21]_2 ;
  input \m_axis_tdest[22] ;
  input \m_axis_tdest[22]_0 ;
  input \m_axis_tdest[22]_1 ;
  input \m_axis_tdest[22]_2 ;
  input \m_axis_tdest[23] ;
  input \m_axis_tdest[23]_0 ;
  input \m_axis_tdest[23]_1 ;
  input \m_axis_tdest[23]_2 ;
  input \m_axis_tuser[2] ;
  input \m_axis_tuser[2]_0 ;
  input \m_axis_tuser[2]_1 ;
  input \m_axis_tuser[2]_2 ;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  input [0:0]m_axis_tready;

  wire [0:0]SR;
  wire aclk;
  wire arb_busy_ns_4;
  wire arb_busy_r_1;
  wire [10:10]arb_gnt_i;
  wire \arb_gnt_r[0]_i_1__0_n_0 ;
  wire \arb_gnt_r[1]_i_1__0_n_0 ;
  wire \arb_gnt_r[2]_i_1__2_n_0 ;
  wire \arb_gnt_r[3]_i_10_n_0 ;
  wire \arb_gnt_r[3]_i_1__2_n_0 ;
  wire \arb_gnt_r[3]_i_2__1_0 ;
  wire \arb_gnt_r[3]_i_2__1_n_0 ;
  wire \arb_gnt_r[3]_i_4__1_0 ;
  wire \arb_gnt_r[3]_i_4__1_1 ;
  wire \arb_gnt_r[3]_i_4__1_2 ;
  wire \arb_gnt_r[3]_i_5__0_n_0 ;
  wire \arb_gnt_r[3]_i_6__1_n_0 ;
  wire \arb_gnt_r[3]_i_7__1_n_0 ;
  wire \arb_gnt_r[3]_i_9__0_n_0 ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire [0:0]\arb_gnt_r_reg[1]_0 ;
  wire \arb_gnt_r_reg[2]_0 ;
  wire \arb_gnt_r_reg[3]_0 ;
  wire arb_sel_r0_7;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire \arb_sel_r_reg[0]_0 ;
  wire \arb_sel_r_reg[1]_0 ;
  wire areset_reg;
  wire barrel_cntr;
  wire [1:0]barrel_cntr_ns;
  wire \barrel_cntr_reg_n_0_[0] ;
  wire \barrel_cntr_reg_n_0_[1] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  wire [3:0]\gen_tdest_router.busy_r_8 ;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[16] ;
  wire \m_axis_tdata[16]_0 ;
  wire \m_axis_tdata[16]_1 ;
  wire \m_axis_tdata[16]_2 ;
  wire \m_axis_tdata[17] ;
  wire \m_axis_tdata[17]_0 ;
  wire \m_axis_tdata[17]_1 ;
  wire \m_axis_tdata[17]_2 ;
  wire \m_axis_tdata[18] ;
  wire \m_axis_tdata[18]_0 ;
  wire \m_axis_tdata[18]_1 ;
  wire \m_axis_tdata[18]_2 ;
  wire \m_axis_tdata[19] ;
  wire \m_axis_tdata[19]_0 ;
  wire \m_axis_tdata[19]_1 ;
  wire \m_axis_tdata[19]_2 ;
  wire \m_axis_tdata[20] ;
  wire \m_axis_tdata[20]_0 ;
  wire \m_axis_tdata[20]_1 ;
  wire \m_axis_tdata[20]_2 ;
  wire \m_axis_tdata[21] ;
  wire \m_axis_tdata[21]_0 ;
  wire \m_axis_tdata[21]_1 ;
  wire \m_axis_tdata[21]_2 ;
  wire \m_axis_tdata[22] ;
  wire \m_axis_tdata[22]_0 ;
  wire \m_axis_tdata[22]_1 ;
  wire \m_axis_tdata[22]_2 ;
  wire \m_axis_tdata[23] ;
  wire \m_axis_tdata[23]_0 ;
  wire \m_axis_tdata[23]_1 ;
  wire \m_axis_tdata[23]_2 ;
  wire [7:0]m_axis_tdest;
  wire \m_axis_tdest[16] ;
  wire \m_axis_tdest[16]_0 ;
  wire \m_axis_tdest[16]_1 ;
  wire \m_axis_tdest[16]_2 ;
  wire \m_axis_tdest[17] ;
  wire \m_axis_tdest[17]_0 ;
  wire \m_axis_tdest[17]_1 ;
  wire \m_axis_tdest[17]_2 ;
  wire \m_axis_tdest[18] ;
  wire \m_axis_tdest[18]_0 ;
  wire \m_axis_tdest[18]_1 ;
  wire \m_axis_tdest[18]_2 ;
  wire \m_axis_tdest[19] ;
  wire \m_axis_tdest[19]_0 ;
  wire \m_axis_tdest[19]_1 ;
  wire \m_axis_tdest[19]_2 ;
  wire \m_axis_tdest[20] ;
  wire \m_axis_tdest[20]_0 ;
  wire \m_axis_tdest[20]_1 ;
  wire \m_axis_tdest[20]_2 ;
  wire \m_axis_tdest[21] ;
  wire \m_axis_tdest[21]_0 ;
  wire \m_axis_tdest[21]_1 ;
  wire \m_axis_tdest[21]_2 ;
  wire \m_axis_tdest[22] ;
  wire \m_axis_tdest[22]_0 ;
  wire \m_axis_tdest[22]_1 ;
  wire \m_axis_tdest[22]_2 ;
  wire \m_axis_tdest[23] ;
  wire \m_axis_tdest[23]_0 ;
  wire \m_axis_tdest[23]_1 ;
  wire \m_axis_tdest[23]_2 ;
  wire [7:0]m_axis_tid;
  wire \m_axis_tid[16] ;
  wire \m_axis_tid[16]_0 ;
  wire \m_axis_tid[16]_1 ;
  wire \m_axis_tid[16]_2 ;
  wire \m_axis_tid[17] ;
  wire \m_axis_tid[17]_0 ;
  wire \m_axis_tid[17]_1 ;
  wire \m_axis_tid[17]_2 ;
  wire \m_axis_tid[18] ;
  wire \m_axis_tid[18]_0 ;
  wire \m_axis_tid[18]_1 ;
  wire \m_axis_tid[18]_2 ;
  wire \m_axis_tid[19] ;
  wire \m_axis_tid[19]_0 ;
  wire \m_axis_tid[19]_1 ;
  wire \m_axis_tid[19]_2 ;
  wire \m_axis_tid[20] ;
  wire \m_axis_tid[20]_0 ;
  wire \m_axis_tid[20]_1 ;
  wire \m_axis_tid[20]_2 ;
  wire \m_axis_tid[21] ;
  wire \m_axis_tid[21]_0 ;
  wire \m_axis_tid[21]_1 ;
  wire \m_axis_tid[21]_2 ;
  wire \m_axis_tid[22] ;
  wire \m_axis_tid[22]_0 ;
  wire \m_axis_tid[22]_1 ;
  wire \m_axis_tid[22]_2 ;
  wire \m_axis_tid[23] ;
  wire \m_axis_tid[23]_0 ;
  wire \m_axis_tid[23]_1 ;
  wire \m_axis_tid[23]_2 ;
  wire [0:0]m_axis_tlast;
  wire \m_axis_tlast[2] ;
  wire \m_axis_tlast[2]_0 ;
  wire \m_axis_tlast[2]_1 ;
  wire \m_axis_tlast[2]_2 ;
  wire [0:0]m_axis_tready;
  wire \m_axis_tready[2] ;
  wire [0:0]m_axis_tuser;
  wire \m_axis_tuser[2] ;
  wire \m_axis_tuser[2]_0 ;
  wire \m_axis_tuser[2]_1 ;
  wire \m_axis_tuser[2]_2 ;
  wire [0:0]m_axis_tvalid;
  wire \m_axis_tvalid[2] ;
  wire \m_axis_tvalid[2]_0 ;
  wire \m_axis_tvalid[2]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[2]_INST_0_i_2_n_0 ;
  wire [7:0]port_priority_ns;
  wire [0:0]sel_i;

  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns_4),
        .Q(arb_busy_r_1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \arb_gnt_r[0]_i_1__0 
       (.I0(\arb_gnt_r[3]_i_2__1_n_0 ),
        .I1(arb_sel_r0_7),
        .I2(SR),
        .I3(sel_i),
        .O(\arb_gnt_r[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \arb_gnt_r[1]_i_1__0 
       (.I0(\arb_gnt_r[3]_i_2__1_n_0 ),
        .I1(arb_sel_r0_7),
        .I2(SR),
        .I3(sel_i),
        .O(\arb_gnt_r[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \arb_gnt_r[2]_i_1__2 
       (.I0(\arb_gnt_r[3]_i_2__1_n_0 ),
        .I1(arb_sel_r0_7),
        .I2(SR),
        .I3(sel_i),
        .O(\arb_gnt_r[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h2F0A2AEA200A2A2A)) 
    \arb_gnt_r[3]_i_10 
       (.I0(port_priority_ns[4]),
        .I1(\arb_gnt_r[3]_i_4__1_0 ),
        .I2(\barrel_cntr_reg_n_0_[1] ),
        .I3(\barrel_cntr_reg_n_0_[0] ),
        .I4(\arb_gnt_r[3]_i_4__1_1 ),
        .I5(port_priority_ns[2]),
        .O(\arb_gnt_r[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \arb_gnt_r[3]_i_1__2 
       (.I0(\arb_gnt_r[3]_i_2__1_n_0 ),
        .I1(arb_sel_r0_7),
        .I2(SR),
        .I3(sel_i),
        .O(\arb_gnt_r[3]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h47474447)) 
    \arb_gnt_r[3]_i_2__1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_5__0_n_0 ),
        .I2(\arb_gnt_r[3]_i_6__1_n_0 ),
        .I3(port_priority_ns[5]),
        .I4(\arb_gnt_r[3]_i_7__1_n_0 ),
        .O(\arb_gnt_r[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \arb_gnt_r[3]_i_4__1 
       (.I0(port_priority_ns[6]),
        .I1(\arb_gnt_r[3]_i_5__0_n_0 ),
        .I2(\arb_gnt_r[3]_i_9__0_n_0 ),
        .I3(port_priority_ns[0]),
        .I4(\arb_gnt_r[3]_i_10_n_0 ),
        .O(sel_i));
  LUT6 #(
    .INIT(64'h020000FF02000000)) 
    \arb_gnt_r[3]_i_5__0 
       (.I0(\m_axis_tvalid[2] ),
        .I1(\arb_gnt_r[3]_i_2__1_0 ),
        .I2(\arb_gnt_r_reg[3]_0 ),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(\barrel_cntr_reg_n_0_[0] ),
        .I5(\arb_gnt_r[3]_i_4__1_0 ),
        .O(\arb_gnt_r[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hECC820C020082000)) 
    \arb_gnt_r[3]_i_6__1 
       (.I0(port_priority_ns[3]),
        .I1(\barrel_cntr_reg_n_0_[1] ),
        .I2(\arb_gnt_r[3]_i_4__1_1 ),
        .I3(\barrel_cntr_reg_n_0_[0] ),
        .I4(\arb_gnt_r[3]_i_4__1_0 ),
        .I5(port_priority_ns[1]),
        .O(\arb_gnt_r[3]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h888888BC88888888)) 
    \arb_gnt_r[3]_i_7__1 
       (.I0(\arb_gnt_r[3]_i_4__1_0 ),
        .I1(\barrel_cntr_reg_n_0_[1] ),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(\arb_gnt_r_reg[3]_0 ),
        .I4(\arb_gnt_r[3]_i_2__1_0 ),
        .I5(\m_axis_tvalid[2] ),
        .O(\arb_gnt_r[3]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F7F7F7F757)) 
    \arb_gnt_r[3]_i_9__0 
       (.I0(\barrel_cntr_reg_n_0_[1] ),
        .I1(\arb_gnt_r[3]_i_4__1_1 ),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(\arb_gnt_r_reg[0]_0 ),
        .I4(\arb_gnt_r[3]_i_4__1_2 ),
        .I5(\m_axis_tvalid[2]_0 ),
        .O(\arb_gnt_r[3]_i_9__0_n_0 ));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1__0_n_0 ),
        .Q(\arb_gnt_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[1]_i_1__0_n_0 ),
        .Q(\arb_gnt_r_reg[1]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[2]_i_1__2_n_0 ),
        .Q(arb_gnt_i),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[3]_i_1__2_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_sel_r[0]_i_1 
       (.I0(sel_i),
        .I1(arb_sel_r0_7),
        .I2(\arb_sel_r_reg[0]_0 ),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \arb_sel_r[1]_i_1 
       (.I0(\arb_gnt_r[3]_i_2__1_n_0 ),
        .I1(arb_sel_r0_7),
        .I2(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[0]_0 ),
        .R(SR));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[1]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \barrel_cntr[0]_i_1__1 
       (.I0(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[0]));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \barrel_cntr[1]_i_1__1 
       (.I0(\arb_gnt_r_reg[3]_0 ),
        .I1(\arb_gnt_r_reg[0]_0 ),
        .I2(\arb_gnt_r_reg[1]_0 ),
        .I3(arb_busy_r_1),
        .I4(arb_gnt_i),
        .O(barrel_cntr));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \barrel_cntr[1]_i_2__1 
       (.I0(\barrel_cntr_reg_n_0_[1] ),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[1]));
  FDRE \barrel_cntr_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[0]),
        .Q(\barrel_cntr_reg_n_0_[0] ),
        .R(SR));
  FDRE \barrel_cntr_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[1]),
        .Q(\barrel_cntr_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[2]_i_1__1 
       (.I0(arb_gnt_i),
        .I1(\gen_tdest_router.busy_r_8 [2]),
        .O(\arb_gnt_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF1F1F10000000000)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2__2 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3_n_0 ),
        .I1(\m_axis_tvalid[2]_0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I3(\m_axis_tvalid[2]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tvalid[2]_INST_0_i_1_n_0 ),
        .I5(m_axis_tready),
        .O(\m_axis_tready[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1__1 
       (.I0(SR),
        .I1(m_axis_tvalid),
        .O(areset_reg));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata[16] ),
        .I1(\m_axis_tdata[16]_0 ),
        .I2(\m_axis_tdata[16]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[16]_2 ),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\m_axis_tdata[17] ),
        .I1(\m_axis_tdata[17]_0 ),
        .I2(\m_axis_tdata[17]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[17]_2 ),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\m_axis_tdata[18] ),
        .I1(\m_axis_tdata[18]_0 ),
        .I2(\m_axis_tdata[18]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[18]_2 ),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\m_axis_tdata[19] ),
        .I1(\m_axis_tdata[19]_0 ),
        .I2(\m_axis_tdata[19]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[19]_2 ),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\m_axis_tdata[20] ),
        .I1(\m_axis_tdata[20]_0 ),
        .I2(\m_axis_tdata[20]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[20]_2 ),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\m_axis_tdata[21] ),
        .I1(\m_axis_tdata[21]_0 ),
        .I2(\m_axis_tdata[21]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[21]_2 ),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\m_axis_tdata[22] ),
        .I1(\m_axis_tdata[22]_0 ),
        .I2(\m_axis_tdata[22]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[22]_2 ),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\m_axis_tdata[23] ),
        .I1(\m_axis_tdata[23]_0 ),
        .I2(\m_axis_tdata[23]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[23]_2 ),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[16]_INST_0 
       (.I0(\m_axis_tdest[16] ),
        .I1(\m_axis_tdest[16]_0 ),
        .I2(\m_axis_tdest[16]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[16]_2 ),
        .O(m_axis_tdest[0]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[17]_INST_0 
       (.I0(\m_axis_tdest[17] ),
        .I1(\m_axis_tdest[17]_0 ),
        .I2(\m_axis_tdest[17]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[17]_2 ),
        .O(m_axis_tdest[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[18]_INST_0 
       (.I0(\m_axis_tdest[18] ),
        .I1(\m_axis_tdest[18]_0 ),
        .I2(\m_axis_tdest[18]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[18]_2 ),
        .O(m_axis_tdest[2]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[19]_INST_0 
       (.I0(\m_axis_tdest[19] ),
        .I1(\m_axis_tdest[19]_0 ),
        .I2(\m_axis_tdest[19]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[19]_2 ),
        .O(m_axis_tdest[3]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[20]_INST_0 
       (.I0(\m_axis_tdest[20] ),
        .I1(\m_axis_tdest[20]_0 ),
        .I2(\m_axis_tdest[20]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[20]_2 ),
        .O(m_axis_tdest[4]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[21]_INST_0 
       (.I0(\m_axis_tdest[21] ),
        .I1(\m_axis_tdest[21]_0 ),
        .I2(\m_axis_tdest[21]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[21]_2 ),
        .O(m_axis_tdest[5]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[22]_INST_0 
       (.I0(\m_axis_tdest[22] ),
        .I1(\m_axis_tdest[22]_0 ),
        .I2(\m_axis_tdest[22]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[22]_2 ),
        .O(m_axis_tdest[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[23]_INST_0 
       (.I0(\m_axis_tdest[23] ),
        .I1(\m_axis_tdest[23]_0 ),
        .I2(\m_axis_tdest[23]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[23]_2 ),
        .O(m_axis_tdest[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[16]_INST_0 
       (.I0(\m_axis_tid[16] ),
        .I1(\m_axis_tid[16]_0 ),
        .I2(\m_axis_tid[16]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[16]_2 ),
        .O(m_axis_tid[0]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[17]_INST_0 
       (.I0(\m_axis_tid[17] ),
        .I1(\m_axis_tid[17]_0 ),
        .I2(\m_axis_tid[17]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[17]_2 ),
        .O(m_axis_tid[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[18]_INST_0 
       (.I0(\m_axis_tid[18] ),
        .I1(\m_axis_tid[18]_0 ),
        .I2(\m_axis_tid[18]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[18]_2 ),
        .O(m_axis_tid[2]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[19]_INST_0 
       (.I0(\m_axis_tid[19] ),
        .I1(\m_axis_tid[19]_0 ),
        .I2(\m_axis_tid[19]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[19]_2 ),
        .O(m_axis_tid[3]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[20]_INST_0 
       (.I0(\m_axis_tid[20] ),
        .I1(\m_axis_tid[20]_0 ),
        .I2(\m_axis_tid[20]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[20]_2 ),
        .O(m_axis_tid[4]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[21]_INST_0 
       (.I0(\m_axis_tid[21] ),
        .I1(\m_axis_tid[21]_0 ),
        .I2(\m_axis_tid[21]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[21]_2 ),
        .O(m_axis_tid[5]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[22]_INST_0 
       (.I0(\m_axis_tid[22] ),
        .I1(\m_axis_tid[22]_0 ),
        .I2(\m_axis_tid[22]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[22]_2 ),
        .O(m_axis_tid[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[23]_INST_0 
       (.I0(\m_axis_tid[23] ),
        .I1(\m_axis_tid[23]_0 ),
        .I2(\m_axis_tid[23]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[23]_2 ),
        .O(m_axis_tid[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tlast[2]_INST_0 
       (.I0(\m_axis_tlast[2] ),
        .I1(\m_axis_tlast[2]_0 ),
        .I2(\m_axis_tlast[2]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tlast[2]_2 ),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tuser[2]_INST_0 
       (.I0(\m_axis_tuser[2] ),
        .I1(\m_axis_tuser[2]_0 ),
        .I2(\m_axis_tuser[2]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tuser[2]_2 ),
        .O(m_axis_tuser));
  LUT6 #(
    .INIT(64'hE0000000E00000EE)) 
    \m_axis_tvalid[2]_INST_0 
       (.I0(\m_axis_tvalid[2]_INST_0_i_1_n_0 ),
        .I1(\m_axis_tvalid[2]_INST_0_i_2_n_0 ),
        .I2(\m_axis_tvalid[2] ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tvalid[2]_0 ),
        .O(m_axis_tvalid));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tvalid[2]_INST_0_i_1 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(\gen_tdest_router.busy_r_8 [0]),
        .I2(\arb_gnt_r_reg[3]_0 ),
        .I3(\gen_tdest_router.busy_r_8 [3]),
        .O(\m_axis_tvalid[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tvalid[2]_INST_0_i_2 
       (.I0(\arb_gnt_r_reg[1]_0 ),
        .I1(\gen_tdest_router.busy_r_8 [1]),
        .I2(\gen_tdest_router.busy_r_8 [2]),
        .I3(arb_gnt_i),
        .O(\m_axis_tvalid[2]_INST_0_i_2_n_0 ));
  FDRE \port_priority_r_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[0]),
        .Q(port_priority_ns[6]),
        .R(SR));
  FDRE \port_priority_r_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[1]),
        .Q(port_priority_ns[7]),
        .R(SR));
  FDSE \port_priority_r_reg[2] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[2]),
        .Q(port_priority_ns[0]),
        .S(SR));
  FDRE \port_priority_r_reg[3] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[3]),
        .Q(port_priority_ns[1]),
        .R(SR));
  FDRE \port_priority_r_reg[4] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[4]),
        .Q(port_priority_ns[2]),
        .R(SR));
  FDSE \port_priority_r_reg[5] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[5]),
        .Q(port_priority_ns[3]),
        .S(SR));
  FDSE \port_priority_r_reg[6] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[6]),
        .Q(port_priority_ns[4]),
        .S(SR));
  FDSE \port_priority_r_reg[7] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[7]),
        .Q(port_priority_ns[5]),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_arb_rr" *) 
module axis_switch_swifsaxis_switch_v1_1_29_arb_rr_7
   (arb_busy_r_reg_0,
    \gen_AB_reg_slice.payload_b_reg[3] ,
    areset_reg,
    \arb_gnt_r_reg[0]_0 ,
    \arb_gnt_r_reg[0]_1 ,
    \arb_gnt_r_reg[3]_0 ,
    m_axis_tdata,
    \arb_sel_r_reg[0]_0 ,
    \arb_sel_r_reg[1]_0 ,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    \m_axis_tready[3] ,
    SR,
    arb_busy_ns_5,
    aclk,
    \arb_gnt_r_reg[2]_0 ,
    \arb_gnt_r_reg[2]_1 ,
    \arb_gnt_r_reg[2]_2 ,
    \arb_gnt_r_reg[2]_3 ,
    m_axis_tready,
    \arb_sel_r_reg[0]_1 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ,
    \arb_sel_r_reg[0]_2 ,
    \m_axis_tvalid[3] ,
    \m_axis_tvalid[3]_0 ,
    \m_axis_tvalid[3]_1 ,
    \m_axis_tvalid[3]_2 ,
    \gen_tdest_router.busy_r ,
    \m_axis_tdata[24] ,
    \m_axis_tdata[24]_0 ,
    \m_axis_tdata[24]_1 ,
    \m_axis_tdata[24]_2 ,
    \m_axis_tdata[25] ,
    \m_axis_tdata[25]_0 ,
    \m_axis_tdata[25]_1 ,
    \m_axis_tdata[25]_2 ,
    \m_axis_tdata[26] ,
    \m_axis_tdata[26]_0 ,
    \m_axis_tdata[26]_1 ,
    \m_axis_tdata[26]_2 ,
    \m_axis_tdata[27] ,
    \m_axis_tdata[27]_0 ,
    \m_axis_tdata[27]_1 ,
    \m_axis_tdata[27]_2 ,
    \m_axis_tdata[28] ,
    \m_axis_tdata[28]_0 ,
    \m_axis_tdata[28]_1 ,
    \m_axis_tdata[28]_2 ,
    \m_axis_tdata[29] ,
    \m_axis_tdata[29]_0 ,
    \m_axis_tdata[29]_1 ,
    \m_axis_tdata[29]_2 ,
    \m_axis_tdata[30] ,
    \m_axis_tdata[30]_0 ,
    \m_axis_tdata[30]_1 ,
    \m_axis_tdata[30]_2 ,
    \m_axis_tdata[31] ,
    \m_axis_tdata[31]_0 ,
    \m_axis_tdata[31]_1 ,
    \m_axis_tdata[31]_2 ,
    \m_axis_tlast[3] ,
    \m_axis_tlast[3]_0 ,
    \m_axis_tlast[3]_1 ,
    \m_axis_tlast[3]_2 ,
    \m_axis_tid[24] ,
    \m_axis_tid[24]_0 ,
    \m_axis_tid[24]_1 ,
    \m_axis_tid[24]_2 ,
    \m_axis_tid[25] ,
    \m_axis_tid[25]_0 ,
    \m_axis_tid[25]_1 ,
    \m_axis_tid[25]_2 ,
    \m_axis_tid[26] ,
    \m_axis_tid[26]_0 ,
    \m_axis_tid[26]_1 ,
    \m_axis_tid[26]_2 ,
    \m_axis_tid[27] ,
    \m_axis_tid[27]_0 ,
    \m_axis_tid[27]_1 ,
    \m_axis_tid[27]_2 ,
    \m_axis_tid[28] ,
    \m_axis_tid[28]_0 ,
    \m_axis_tid[28]_1 ,
    \m_axis_tid[28]_2 ,
    \m_axis_tid[29] ,
    \m_axis_tid[29]_0 ,
    \m_axis_tid[29]_1 ,
    \m_axis_tid[29]_2 ,
    \m_axis_tid[30] ,
    \m_axis_tid[30]_0 ,
    \m_axis_tid[30]_1 ,
    \m_axis_tid[30]_2 ,
    \m_axis_tid[31] ,
    \m_axis_tid[31]_0 ,
    \m_axis_tid[31]_1 ,
    \m_axis_tid[31]_2 ,
    \m_axis_tdest[24] ,
    \m_axis_tdest[24]_0 ,
    \m_axis_tdest[24]_1 ,
    \m_axis_tdest[24]_2 ,
    \m_axis_tdest[25] ,
    \m_axis_tdest[25]_0 ,
    \m_axis_tdest[25]_1 ,
    \m_axis_tdest[25]_2 ,
    \m_axis_tdest[26] ,
    \m_axis_tdest[26]_0 ,
    \m_axis_tdest[26]_1 ,
    \m_axis_tdest[26]_2 ,
    \m_axis_tdest[27] ,
    \m_axis_tdest[27]_0 ,
    \m_axis_tdest[27]_1 ,
    \m_axis_tdest[27]_2 ,
    \m_axis_tdest[28] ,
    \m_axis_tdest[28]_0 ,
    \m_axis_tdest[28]_1 ,
    \m_axis_tdest[28]_2 ,
    \m_axis_tdest[29] ,
    \m_axis_tdest[29]_0 ,
    \m_axis_tdest[29]_1 ,
    \m_axis_tdest[29]_2 ,
    \m_axis_tdest[30] ,
    \m_axis_tdest[30]_0 ,
    \m_axis_tdest[30]_1 ,
    \m_axis_tdest[30]_2 ,
    \m_axis_tdest[31] ,
    \m_axis_tdest[31]_0 ,
    \m_axis_tdest[31]_1 ,
    \m_axis_tdest[31]_2 ,
    \m_axis_tuser[3] ,
    \m_axis_tuser[3]_0 ,
    \m_axis_tuser[3]_1 ,
    \m_axis_tuser[3]_2 ,
    \arb_gnt_r_reg[2]_4 );
  output arb_busy_r_reg_0;
  output \gen_AB_reg_slice.payload_b_reg[3] ;
  output areset_reg;
  output \arb_gnt_r_reg[0]_0 ;
  output \arb_gnt_r_reg[0]_1 ;
  output [2:0]\arb_gnt_r_reg[3]_0 ;
  output [7:0]m_axis_tdata;
  output \arb_sel_r_reg[0]_0 ;
  output \arb_sel_r_reg[1]_0 ;
  output [0:0]m_axis_tlast;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output \m_axis_tready[3] ;
  input [0:0]SR;
  input arb_busy_ns_5;
  input aclk;
  input \arb_gnt_r_reg[2]_0 ;
  input \arb_gnt_r_reg[2]_1 ;
  input \arb_gnt_r_reg[2]_2 ;
  input \arb_gnt_r_reg[2]_3 ;
  input [0:0]m_axis_tready;
  input \arb_sel_r_reg[0]_1 ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  input \arb_sel_r_reg[0]_2 ;
  input \m_axis_tvalid[3] ;
  input \m_axis_tvalid[3]_0 ;
  input \m_axis_tvalid[3]_1 ;
  input \m_axis_tvalid[3]_2 ;
  input [3:0]\gen_tdest_router.busy_r ;
  input \m_axis_tdata[24] ;
  input \m_axis_tdata[24]_0 ;
  input \m_axis_tdata[24]_1 ;
  input \m_axis_tdata[24]_2 ;
  input \m_axis_tdata[25] ;
  input \m_axis_tdata[25]_0 ;
  input \m_axis_tdata[25]_1 ;
  input \m_axis_tdata[25]_2 ;
  input \m_axis_tdata[26] ;
  input \m_axis_tdata[26]_0 ;
  input \m_axis_tdata[26]_1 ;
  input \m_axis_tdata[26]_2 ;
  input \m_axis_tdata[27] ;
  input \m_axis_tdata[27]_0 ;
  input \m_axis_tdata[27]_1 ;
  input \m_axis_tdata[27]_2 ;
  input \m_axis_tdata[28] ;
  input \m_axis_tdata[28]_0 ;
  input \m_axis_tdata[28]_1 ;
  input \m_axis_tdata[28]_2 ;
  input \m_axis_tdata[29] ;
  input \m_axis_tdata[29]_0 ;
  input \m_axis_tdata[29]_1 ;
  input \m_axis_tdata[29]_2 ;
  input \m_axis_tdata[30] ;
  input \m_axis_tdata[30]_0 ;
  input \m_axis_tdata[30]_1 ;
  input \m_axis_tdata[30]_2 ;
  input \m_axis_tdata[31] ;
  input \m_axis_tdata[31]_0 ;
  input \m_axis_tdata[31]_1 ;
  input \m_axis_tdata[31]_2 ;
  input \m_axis_tlast[3] ;
  input \m_axis_tlast[3]_0 ;
  input \m_axis_tlast[3]_1 ;
  input \m_axis_tlast[3]_2 ;
  input \m_axis_tid[24] ;
  input \m_axis_tid[24]_0 ;
  input \m_axis_tid[24]_1 ;
  input \m_axis_tid[24]_2 ;
  input \m_axis_tid[25] ;
  input \m_axis_tid[25]_0 ;
  input \m_axis_tid[25]_1 ;
  input \m_axis_tid[25]_2 ;
  input \m_axis_tid[26] ;
  input \m_axis_tid[26]_0 ;
  input \m_axis_tid[26]_1 ;
  input \m_axis_tid[26]_2 ;
  input \m_axis_tid[27] ;
  input \m_axis_tid[27]_0 ;
  input \m_axis_tid[27]_1 ;
  input \m_axis_tid[27]_2 ;
  input \m_axis_tid[28] ;
  input \m_axis_tid[28]_0 ;
  input \m_axis_tid[28]_1 ;
  input \m_axis_tid[28]_2 ;
  input \m_axis_tid[29] ;
  input \m_axis_tid[29]_0 ;
  input \m_axis_tid[29]_1 ;
  input \m_axis_tid[29]_2 ;
  input \m_axis_tid[30] ;
  input \m_axis_tid[30]_0 ;
  input \m_axis_tid[30]_1 ;
  input \m_axis_tid[30]_2 ;
  input \m_axis_tid[31] ;
  input \m_axis_tid[31]_0 ;
  input \m_axis_tid[31]_1 ;
  input \m_axis_tid[31]_2 ;
  input \m_axis_tdest[24] ;
  input \m_axis_tdest[24]_0 ;
  input \m_axis_tdest[24]_1 ;
  input \m_axis_tdest[24]_2 ;
  input \m_axis_tdest[25] ;
  input \m_axis_tdest[25]_0 ;
  input \m_axis_tdest[25]_1 ;
  input \m_axis_tdest[25]_2 ;
  input \m_axis_tdest[26] ;
  input \m_axis_tdest[26]_0 ;
  input \m_axis_tdest[26]_1 ;
  input \m_axis_tdest[26]_2 ;
  input \m_axis_tdest[27] ;
  input \m_axis_tdest[27]_0 ;
  input \m_axis_tdest[27]_1 ;
  input \m_axis_tdest[27]_2 ;
  input \m_axis_tdest[28] ;
  input \m_axis_tdest[28]_0 ;
  input \m_axis_tdest[28]_1 ;
  input \m_axis_tdest[28]_2 ;
  input \m_axis_tdest[29] ;
  input \m_axis_tdest[29]_0 ;
  input \m_axis_tdest[29]_1 ;
  input \m_axis_tdest[29]_2 ;
  input \m_axis_tdest[30] ;
  input \m_axis_tdest[30]_0 ;
  input \m_axis_tdest[30]_1 ;
  input \m_axis_tdest[30]_2 ;
  input \m_axis_tdest[31] ;
  input \m_axis_tdest[31]_0 ;
  input \m_axis_tdest[31]_1 ;
  input \m_axis_tdest[31]_2 ;
  input \m_axis_tuser[3] ;
  input \m_axis_tuser[3]_0 ;
  input \m_axis_tuser[3]_1 ;
  input \m_axis_tuser[3]_2 ;
  input \arb_gnt_r_reg[2]_4 ;

  wire [0:0]SR;
  wire aclk;
  wire arb_busy_ns_5;
  wire arb_busy_r_reg_0;
  wire \arb_gnt_r[0]_i_1__1_n_0 ;
  wire \arb_gnt_r[1]_i_1__1_n_0 ;
  wire \arb_gnt_r[2]_i_1_n_0 ;
  wire \arb_gnt_r[3]_i_1_n_0 ;
  wire \arb_gnt_r[3]_i_2_n_0 ;
  wire \arb_gnt_r[3]_i_3_n_0 ;
  wire \arb_gnt_r[3]_i_4_n_0 ;
  wire \arb_gnt_r[3]_i_5__2_n_0 ;
  wire \arb_gnt_r[3]_i_6_n_0 ;
  wire \arb_gnt_r[3]_i_7_n_0 ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire \arb_gnt_r_reg[0]_1 ;
  wire \arb_gnt_r_reg[2]_0 ;
  wire \arb_gnt_r_reg[2]_1 ;
  wire \arb_gnt_r_reg[2]_2 ;
  wire \arb_gnt_r_reg[2]_3 ;
  wire \arb_gnt_r_reg[2]_4 ;
  wire [2:0]\arb_gnt_r_reg[3]_0 ;
  wire arb_sel_r0;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire \arb_sel_r_reg[0]_0 ;
  wire \arb_sel_r_reg[0]_1 ;
  wire \arb_sel_r_reg[0]_2 ;
  wire \arb_sel_r_reg[1]_0 ;
  wire areset_reg;
  wire barrel_cntr;
  wire [1:0]barrel_cntr_ns;
  wire \barrel_cntr_reg_n_0_[0] ;
  wire \barrel_cntr_reg_n_0_[1] ;
  wire \gen_AB_reg_slice.payload_b_reg[3] ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[24] ;
  wire \m_axis_tdata[24]_0 ;
  wire \m_axis_tdata[24]_1 ;
  wire \m_axis_tdata[24]_2 ;
  wire \m_axis_tdata[25] ;
  wire \m_axis_tdata[25]_0 ;
  wire \m_axis_tdata[25]_1 ;
  wire \m_axis_tdata[25]_2 ;
  wire \m_axis_tdata[26] ;
  wire \m_axis_tdata[26]_0 ;
  wire \m_axis_tdata[26]_1 ;
  wire \m_axis_tdata[26]_2 ;
  wire \m_axis_tdata[27] ;
  wire \m_axis_tdata[27]_0 ;
  wire \m_axis_tdata[27]_1 ;
  wire \m_axis_tdata[27]_2 ;
  wire \m_axis_tdata[28] ;
  wire \m_axis_tdata[28]_0 ;
  wire \m_axis_tdata[28]_1 ;
  wire \m_axis_tdata[28]_2 ;
  wire \m_axis_tdata[29] ;
  wire \m_axis_tdata[29]_0 ;
  wire \m_axis_tdata[29]_1 ;
  wire \m_axis_tdata[29]_2 ;
  wire \m_axis_tdata[30] ;
  wire \m_axis_tdata[30]_0 ;
  wire \m_axis_tdata[30]_1 ;
  wire \m_axis_tdata[30]_2 ;
  wire \m_axis_tdata[31] ;
  wire \m_axis_tdata[31]_0 ;
  wire \m_axis_tdata[31]_1 ;
  wire \m_axis_tdata[31]_2 ;
  wire [7:0]m_axis_tdest;
  wire \m_axis_tdest[24] ;
  wire \m_axis_tdest[24]_0 ;
  wire \m_axis_tdest[24]_1 ;
  wire \m_axis_tdest[24]_2 ;
  wire \m_axis_tdest[25] ;
  wire \m_axis_tdest[25]_0 ;
  wire \m_axis_tdest[25]_1 ;
  wire \m_axis_tdest[25]_2 ;
  wire \m_axis_tdest[26] ;
  wire \m_axis_tdest[26]_0 ;
  wire \m_axis_tdest[26]_1 ;
  wire \m_axis_tdest[26]_2 ;
  wire \m_axis_tdest[27] ;
  wire \m_axis_tdest[27]_0 ;
  wire \m_axis_tdest[27]_1 ;
  wire \m_axis_tdest[27]_2 ;
  wire \m_axis_tdest[28] ;
  wire \m_axis_tdest[28]_0 ;
  wire \m_axis_tdest[28]_1 ;
  wire \m_axis_tdest[28]_2 ;
  wire \m_axis_tdest[29] ;
  wire \m_axis_tdest[29]_0 ;
  wire \m_axis_tdest[29]_1 ;
  wire \m_axis_tdest[29]_2 ;
  wire \m_axis_tdest[30] ;
  wire \m_axis_tdest[30]_0 ;
  wire \m_axis_tdest[30]_1 ;
  wire \m_axis_tdest[30]_2 ;
  wire \m_axis_tdest[31] ;
  wire \m_axis_tdest[31]_0 ;
  wire \m_axis_tdest[31]_1 ;
  wire \m_axis_tdest[31]_2 ;
  wire [7:0]m_axis_tid;
  wire \m_axis_tid[24] ;
  wire \m_axis_tid[24]_0 ;
  wire \m_axis_tid[24]_1 ;
  wire \m_axis_tid[24]_2 ;
  wire \m_axis_tid[25] ;
  wire \m_axis_tid[25]_0 ;
  wire \m_axis_tid[25]_1 ;
  wire \m_axis_tid[25]_2 ;
  wire \m_axis_tid[26] ;
  wire \m_axis_tid[26]_0 ;
  wire \m_axis_tid[26]_1 ;
  wire \m_axis_tid[26]_2 ;
  wire \m_axis_tid[27] ;
  wire \m_axis_tid[27]_0 ;
  wire \m_axis_tid[27]_1 ;
  wire \m_axis_tid[27]_2 ;
  wire \m_axis_tid[28] ;
  wire \m_axis_tid[28]_0 ;
  wire \m_axis_tid[28]_1 ;
  wire \m_axis_tid[28]_2 ;
  wire \m_axis_tid[29] ;
  wire \m_axis_tid[29]_0 ;
  wire \m_axis_tid[29]_1 ;
  wire \m_axis_tid[29]_2 ;
  wire \m_axis_tid[30] ;
  wire \m_axis_tid[30]_0 ;
  wire \m_axis_tid[30]_1 ;
  wire \m_axis_tid[30]_2 ;
  wire \m_axis_tid[31] ;
  wire \m_axis_tid[31]_0 ;
  wire \m_axis_tid[31]_1 ;
  wire \m_axis_tid[31]_2 ;
  wire [0:0]m_axis_tlast;
  wire \m_axis_tlast[3] ;
  wire \m_axis_tlast[3]_0 ;
  wire \m_axis_tlast[3]_1 ;
  wire \m_axis_tlast[3]_2 ;
  wire [0:0]m_axis_tready;
  wire \m_axis_tready[3] ;
  wire [0:0]m_axis_tuser;
  wire \m_axis_tuser[3] ;
  wire \m_axis_tuser[3]_0 ;
  wire \m_axis_tuser[3]_1 ;
  wire \m_axis_tuser[3]_2 ;
  wire \m_axis_tvalid[3] ;
  wire \m_axis_tvalid[3]_0 ;
  wire \m_axis_tvalid[3]_1 ;
  wire \m_axis_tvalid[3]_2 ;
  wire \m_axis_tvalid[3]_INST_0_i_5_n_0 ;
  wire \m_axis_tvalid[3]_INST_0_i_6_n_0 ;
  wire [7:0]port_priority_ns;

  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns_5),
        .Q(arb_busy_r_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0703070300000700)) 
    \arb_gnt_r[0]_i_1__1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_2_n_0 ),
        .I2(\arb_gnt_r[3]_i_5__2_n_0 ),
        .I3(\arb_gnt_r[3]_i_3_n_0 ),
        .I4(port_priority_ns[6]),
        .I5(\arb_gnt_r[3]_i_4_n_0 ),
        .O(\arb_gnt_r[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007303)) 
    \arb_gnt_r[1]_i_1__1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_2_n_0 ),
        .I2(\arb_gnt_r[3]_i_3_n_0 ),
        .I3(port_priority_ns[6]),
        .I4(\arb_gnt_r[3]_i_4_n_0 ),
        .I5(\arb_gnt_r[3]_i_5__2_n_0 ),
        .O(\arb_gnt_r[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h080C080C00000800)) 
    \arb_gnt_r[2]_i_1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_2_n_0 ),
        .I2(\arb_gnt_r[3]_i_5__2_n_0 ),
        .I3(\arb_gnt_r[3]_i_3_n_0 ),
        .I4(port_priority_ns[6]),
        .I5(\arb_gnt_r[3]_i_4_n_0 ),
        .O(\arb_gnt_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008C0C)) 
    \arb_gnt_r[3]_i_1 
       (.I0(port_priority_ns[7]),
        .I1(\arb_gnt_r[3]_i_2_n_0 ),
        .I2(\arb_gnt_r[3]_i_3_n_0 ),
        .I3(port_priority_ns[6]),
        .I4(\arb_gnt_r[3]_i_4_n_0 ),
        .I5(\arb_gnt_r[3]_i_5__2_n_0 ),
        .O(\arb_gnt_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFFAAEEEEEEEE)) 
    \arb_gnt_r[3]_i_2 
       (.I0(\arb_gnt_r[3]_i_3_n_0 ),
        .I1(port_priority_ns[1]),
        .I2(port_priority_ns[3]),
        .I3(port_priority_ns[5]),
        .I4(\arb_gnt_r[3]_i_6_n_0 ),
        .I5(\arb_gnt_r[3]_i_7_n_0 ),
        .O(\arb_gnt_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF000F0FF)) 
    \arb_gnt_r[3]_i_3 
       (.I0(\arb_gnt_r_reg[2]_0 ),
        .I1(\arb_gnt_r_reg[2]_1 ),
        .I2(\arb_gnt_r_reg[2]_2 ),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(\arb_gnt_r_reg[2]_3 ),
        .I5(\barrel_cntr_reg_n_0_[0] ),
        .O(\arb_gnt_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1013101300033033)) 
    \arb_gnt_r[3]_i_4 
       (.I0(port_priority_ns[2]),
        .I1(\arb_gnt_r[3]_i_3_n_0 ),
        .I2(\arb_gnt_r[3]_i_7_n_0 ),
        .I3(port_priority_ns[0]),
        .I4(port_priority_ns[4]),
        .I5(\arb_gnt_r[3]_i_6_n_0 ),
        .O(\arb_gnt_r[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEEEEEEEFEEEFE)) 
    \arb_gnt_r[3]_i_5__2 
       (.I0(SR),
        .I1(\arb_sel_r_reg[0]_2 ),
        .I2(arb_busy_r_reg_0),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I4(\arb_gnt_r_reg[2]_4 ),
        .I5(\gen_AB_reg_slice.payload_b_reg[3] ),
        .O(\arb_gnt_r[3]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \arb_gnt_r[3]_i_6 
       (.I0(\arb_gnt_r_reg[2]_1 ),
        .I1(\arb_gnt_r_reg[2]_0 ),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(\arb_gnt_r_reg[2]_3 ),
        .I4(\barrel_cntr_reg_n_0_[1] ),
        .I5(\arb_gnt_r_reg[2]_2 ),
        .O(\arb_gnt_r[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \arb_gnt_r[3]_i_7 
       (.I0(\arb_gnt_r_reg[2]_3 ),
        .I1(\arb_gnt_r_reg[2]_2 ),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(\arb_gnt_r_reg[2]_0 ),
        .I4(\barrel_cntr_reg_n_0_[1] ),
        .I5(\arb_gnt_r_reg[2]_1 ),
        .O(\arb_gnt_r[3]_i_7_n_0 ));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1__1_n_0 ),
        .Q(\arb_gnt_r_reg[0]_1 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[1]_i_1__1_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[2]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[3]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 [2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0DFF0D00)) 
    \arb_sel_r[0]_i_1 
       (.I0(\arb_gnt_r[3]_i_3_n_0 ),
        .I1(port_priority_ns[6]),
        .I2(\arb_gnt_r[3]_i_4_n_0 ),
        .I3(arb_sel_r0),
        .I4(\arb_sel_r_reg[0]_0 ),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8AFF8A00)) 
    \arb_sel_r[1]_i_1 
       (.I0(\arb_gnt_r[3]_i_2_n_0 ),
        .I1(port_priority_ns[7]),
        .I2(\arb_gnt_r[3]_i_3_n_0 ),
        .I3(arb_sel_r0),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF80FFFF)) 
    \arb_sel_r[1]_i_2 
       (.I0(\gen_AB_reg_slice.payload_b_reg[3] ),
        .I1(m_axis_tready),
        .I2(\arb_sel_r_reg[0]_1 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I4(arb_busy_r_reg_0),
        .I5(\arb_sel_r_reg[0]_2 ),
        .O(arb_sel_r0));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[0]_0 ),
        .R(SR));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[1]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \barrel_cntr[0]_i_1__2 
       (.I0(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \barrel_cntr[1]_i_1__2 
       (.I0(arb_busy_r_reg_0),
        .I1(\arb_gnt_r_reg[0]_1 ),
        .I2(\arb_gnt_r_reg[3]_0 [1]),
        .I3(\arb_gnt_r_reg[3]_0 [2]),
        .I4(\arb_gnt_r_reg[3]_0 [0]),
        .O(barrel_cntr));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \barrel_cntr[1]_i_2__2 
       (.I0(\barrel_cntr_reg_n_0_[1] ),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[1]));
  FDRE \barrel_cntr_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[0]),
        .Q(\barrel_cntr_reg_n_0_[0] ),
        .R(SR));
  FDRE \barrel_cntr_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(barrel_cntr_ns[1]),
        .Q(\barrel_cntr_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[0]_i_1 
       (.I0(\arb_gnt_r_reg[0]_1 ),
        .I1(\gen_tdest_router.busy_r [0]),
        .O(\arb_gnt_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2__0 
       (.I0(\gen_AB_reg_slice.payload_b_reg[3] ),
        .I1(m_axis_tready),
        .O(\m_axis_tready[3] ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1 
       (.I0(SR),
        .I1(\gen_AB_reg_slice.payload_b_reg[3] ),
        .O(areset_reg));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\m_axis_tdata[24] ),
        .I1(\m_axis_tdata[24]_0 ),
        .I2(\m_axis_tdata[24]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[24]_2 ),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\m_axis_tdata[25] ),
        .I1(\m_axis_tdata[25]_0 ),
        .I2(\m_axis_tdata[25]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[25]_2 ),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\m_axis_tdata[26] ),
        .I1(\m_axis_tdata[26]_0 ),
        .I2(\m_axis_tdata[26]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[26]_2 ),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\m_axis_tdata[27] ),
        .I1(\m_axis_tdata[27]_0 ),
        .I2(\m_axis_tdata[27]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[27]_2 ),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\m_axis_tdata[28] ),
        .I1(\m_axis_tdata[28]_0 ),
        .I2(\m_axis_tdata[28]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[28]_2 ),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\m_axis_tdata[29] ),
        .I1(\m_axis_tdata[29]_0 ),
        .I2(\m_axis_tdata[29]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[29]_2 ),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\m_axis_tdata[30] ),
        .I1(\m_axis_tdata[30]_0 ),
        .I2(\m_axis_tdata[30]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[30]_2 ),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(\m_axis_tdata[31] ),
        .I1(\m_axis_tdata[31]_0 ),
        .I2(\m_axis_tdata[31]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdata[31]_2 ),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[24]_INST_0 
       (.I0(\m_axis_tdest[24] ),
        .I1(\m_axis_tdest[24]_0 ),
        .I2(\m_axis_tdest[24]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[24]_2 ),
        .O(m_axis_tdest[0]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[25]_INST_0 
       (.I0(\m_axis_tdest[25] ),
        .I1(\m_axis_tdest[25]_0 ),
        .I2(\m_axis_tdest[25]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[25]_2 ),
        .O(m_axis_tdest[1]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[26]_INST_0 
       (.I0(\m_axis_tdest[26] ),
        .I1(\m_axis_tdest[26]_0 ),
        .I2(\m_axis_tdest[26]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[26]_2 ),
        .O(m_axis_tdest[2]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[27]_INST_0 
       (.I0(\m_axis_tdest[27] ),
        .I1(\m_axis_tdest[27]_0 ),
        .I2(\m_axis_tdest[27]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[27]_2 ),
        .O(m_axis_tdest[3]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[28]_INST_0 
       (.I0(\m_axis_tdest[28] ),
        .I1(\m_axis_tdest[28]_0 ),
        .I2(\m_axis_tdest[28]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[28]_2 ),
        .O(m_axis_tdest[4]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tdest[29]_INST_0 
       (.I0(\m_axis_tdest[29] ),
        .I1(\m_axis_tdest[29]_0 ),
        .I2(\m_axis_tdest[29]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[29]_2 ),
        .O(m_axis_tdest[5]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[30]_INST_0 
       (.I0(\m_axis_tdest[30] ),
        .I1(\m_axis_tdest[30]_0 ),
        .I2(\m_axis_tdest[30]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[30]_2 ),
        .O(m_axis_tdest[6]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tdest[31]_INST_0 
       (.I0(\m_axis_tdest[31] ),
        .I1(\m_axis_tdest[31]_0 ),
        .I2(\m_axis_tdest[31]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tdest[31]_2 ),
        .O(m_axis_tdest[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[24]_INST_0 
       (.I0(\m_axis_tid[24] ),
        .I1(\m_axis_tid[24]_0 ),
        .I2(\m_axis_tid[24]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[24]_2 ),
        .O(m_axis_tid[0]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[25]_INST_0 
       (.I0(\m_axis_tid[25] ),
        .I1(\m_axis_tid[25]_0 ),
        .I2(\m_axis_tid[25]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[25]_2 ),
        .O(m_axis_tid[1]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tid[26]_INST_0 
       (.I0(\m_axis_tid[26] ),
        .I1(\m_axis_tid[26]_0 ),
        .I2(\m_axis_tid[26]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[26]_2 ),
        .O(m_axis_tid[2]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[27]_INST_0 
       (.I0(\m_axis_tid[27] ),
        .I1(\m_axis_tid[27]_0 ),
        .I2(\m_axis_tid[27]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[27]_2 ),
        .O(m_axis_tid[3]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[28]_INST_0 
       (.I0(\m_axis_tid[28] ),
        .I1(\m_axis_tid[28]_0 ),
        .I2(\m_axis_tid[28]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[28]_2 ),
        .O(m_axis_tid[4]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[29]_INST_0 
       (.I0(\m_axis_tid[29] ),
        .I1(\m_axis_tid[29]_0 ),
        .I2(\m_axis_tid[29]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[29]_2 ),
        .O(m_axis_tid[5]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[30]_INST_0 
       (.I0(\m_axis_tid[30] ),
        .I1(\m_axis_tid[30]_0 ),
        .I2(\m_axis_tid[30]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[30]_2 ),
        .O(m_axis_tid[6]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \m_axis_tid[31]_INST_0 
       (.I0(\m_axis_tid[31] ),
        .I1(\m_axis_tid[31]_0 ),
        .I2(\m_axis_tid[31]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tid[31]_2 ),
        .O(m_axis_tid[7]));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tlast[3]_INST_0 
       (.I0(\m_axis_tlast[3] ),
        .I1(\m_axis_tlast[3]_0 ),
        .I2(\m_axis_tlast[3]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tlast[3]_2 ),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \m_axis_tuser[3]_INST_0 
       (.I0(\m_axis_tuser[3] ),
        .I1(\m_axis_tuser[3]_0 ),
        .I2(\m_axis_tuser[3]_1 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .I5(\m_axis_tuser[3]_2 ),
        .O(m_axis_tuser));
  LUT6 #(
    .INIT(64'hFFFE0000FFFEFFFE)) 
    \m_axis_tvalid[3]_INST_0 
       (.I0(\m_axis_tvalid[3] ),
        .I1(\m_axis_tvalid[3]_0 ),
        .I2(\m_axis_tvalid[3]_1 ),
        .I3(\m_axis_tvalid[3]_2 ),
        .I4(\m_axis_tvalid[3]_INST_0_i_5_n_0 ),
        .I5(\m_axis_tvalid[3]_INST_0_i_6_n_0 ),
        .O(\gen_AB_reg_slice.payload_b_reg[3] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tvalid[3]_INST_0_i_5 
       (.I0(\arb_gnt_r_reg[3]_0 [0]),
        .I1(\gen_tdest_router.busy_r [1]),
        .I2(\arb_gnt_r_reg[3]_0 [1]),
        .I3(\gen_tdest_router.busy_r [2]),
        .O(\m_axis_tvalid[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m_axis_tvalid[3]_INST_0_i_6 
       (.I0(\arb_gnt_r_reg[0]_1 ),
        .I1(\gen_tdest_router.busy_r [0]),
        .I2(\arb_gnt_r_reg[3]_0 [2]),
        .I3(\gen_tdest_router.busy_r [3]),
        .O(\m_axis_tvalid[3]_INST_0_i_6_n_0 ));
  FDRE \port_priority_r_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[0]),
        .Q(port_priority_ns[6]),
        .R(SR));
  FDRE \port_priority_r_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[1]),
        .Q(port_priority_ns[7]),
        .R(SR));
  FDSE \port_priority_r_reg[2] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[2]),
        .Q(port_priority_ns[0]),
        .S(SR));
  FDRE \port_priority_r_reg[3] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[3]),
        .Q(port_priority_ns[1]),
        .R(SR));
  FDRE \port_priority_r_reg[4] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[4]),
        .Q(port_priority_ns[2]),
        .R(SR));
  FDSE \port_priority_r_reg[5] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[5]),
        .Q(port_priority_ns[3]),
        .S(SR));
  FDSE \port_priority_r_reg[6] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[6]),
        .Q(port_priority_ns[4]),
        .S(SR));
  FDSE \port_priority_r_reg[7] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[7]),
        .Q(port_priority_ns[5]),
        .S(SR));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "5" *) (* C_ARB_ON_NUM_CYCLES = "1024" *) 
(* C_ARB_ON_TLAST = "0" *) (* C_AXIS_SIGNAL_SET = "243" *) (* C_AXIS_TDATA_WIDTH = "8" *) 
(* C_AXIS_TDEST_WIDTH = "8" *) (* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "1" *) (* C_FAMILY = "artix7" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "2" *) (* C_M_AXIS_BASETDEST_ARRAY = "50462976" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "16'b1111100110011110" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "50462976" *) (* C_NUM_MI_SLOTS = "4" *) 
(* C_NUM_SI_SLOTS = "4" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "0" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "40" *) (* LP_MERGEDOWN_MUX = "1" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_29_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "16'b1111100110011110" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "4'b0000" *) (* P_TPAYLOAD_WIDTH = "26" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [3:0]s_axis_tvalid;
  output [3:0]s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input [3:0]s_axis_tlast;
  input [31:0]s_axis_tid;
  input [31:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output [3:0]m_axis_tvalid;
  input [3:0]m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output [3:0]m_axis_tlast;
  output [31:0]m_axis_tid;
  output [31:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  output [15:0]arb_req;
  output [3:0]arb_done;
  input [15:0]arb_gnt;
  input [7:0]arb_sel;
  output [15:0]arb_last;
  output [127:0]arb_id;
  output [127:0]arb_dest;
  output [15:0]arb_user;
  input [3:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [3:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire [15:0]arb_gnt_i;
  wire [7:0]arb_sel_i;
  wire areset;
  wire aresetn;
  wire \gen_decoder[0].axisc_decoder_0_n_1 ;
  wire \gen_decoder[0].axisc_decoder_0_n_11 ;
  wire \gen_decoder[0].axisc_decoder_0_n_12 ;
  wire \gen_decoder[0].axisc_decoder_0_n_13 ;
  wire \gen_decoder[0].axisc_decoder_0_n_14 ;
  wire \gen_decoder[0].axisc_decoder_0_n_15 ;
  wire \gen_decoder[0].axisc_decoder_0_n_16 ;
  wire \gen_decoder[0].axisc_decoder_0_n_17 ;
  wire \gen_decoder[0].axisc_decoder_0_n_18 ;
  wire \gen_decoder[0].axisc_decoder_0_n_19 ;
  wire \gen_decoder[0].axisc_decoder_0_n_2 ;
  wire \gen_decoder[0].axisc_decoder_0_n_20 ;
  wire \gen_decoder[0].axisc_decoder_0_n_21 ;
  wire \gen_decoder[0].axisc_decoder_0_n_22 ;
  wire \gen_decoder[0].axisc_decoder_0_n_23 ;
  wire \gen_decoder[0].axisc_decoder_0_n_24 ;
  wire \gen_decoder[0].axisc_decoder_0_n_25 ;
  wire \gen_decoder[0].axisc_decoder_0_n_26 ;
  wire \gen_decoder[0].axisc_decoder_0_n_27 ;
  wire \gen_decoder[0].axisc_decoder_0_n_28 ;
  wire \gen_decoder[0].axisc_decoder_0_n_29 ;
  wire \gen_decoder[0].axisc_decoder_0_n_3 ;
  wire \gen_decoder[0].axisc_decoder_0_n_30 ;
  wire \gen_decoder[0].axisc_decoder_0_n_31 ;
  wire \gen_decoder[0].axisc_decoder_0_n_32 ;
  wire \gen_decoder[0].axisc_decoder_0_n_33 ;
  wire \gen_decoder[0].axisc_decoder_0_n_34 ;
  wire \gen_decoder[0].axisc_decoder_0_n_35 ;
  wire \gen_decoder[0].axisc_decoder_0_n_36 ;
  wire \gen_decoder[0].axisc_decoder_0_n_37 ;
  wire \gen_decoder[0].axisc_decoder_0_n_4 ;
  wire \gen_decoder[0].axisc_decoder_0_n_5 ;
  wire \gen_decoder[0].axisc_decoder_0_n_6 ;
  wire \gen_decoder[0].axisc_decoder_0_n_7 ;
  wire \gen_decoder[0].axisc_decoder_0_n_8 ;
  wire \gen_decoder[0].axisc_decoder_0_n_9 ;
  wire \gen_decoder[1].axisc_decoder_0_n_1 ;
  wire \gen_decoder[1].axisc_decoder_0_n_10 ;
  wire \gen_decoder[1].axisc_decoder_0_n_11 ;
  wire \gen_decoder[1].axisc_decoder_0_n_12 ;
  wire \gen_decoder[1].axisc_decoder_0_n_13 ;
  wire \gen_decoder[1].axisc_decoder_0_n_14 ;
  wire \gen_decoder[1].axisc_decoder_0_n_15 ;
  wire \gen_decoder[1].axisc_decoder_0_n_16 ;
  wire \gen_decoder[1].axisc_decoder_0_n_17 ;
  wire \gen_decoder[1].axisc_decoder_0_n_18 ;
  wire \gen_decoder[1].axisc_decoder_0_n_19 ;
  wire \gen_decoder[1].axisc_decoder_0_n_2 ;
  wire \gen_decoder[1].axisc_decoder_0_n_20 ;
  wire \gen_decoder[1].axisc_decoder_0_n_21 ;
  wire \gen_decoder[1].axisc_decoder_0_n_22 ;
  wire \gen_decoder[1].axisc_decoder_0_n_23 ;
  wire \gen_decoder[1].axisc_decoder_0_n_24 ;
  wire \gen_decoder[1].axisc_decoder_0_n_25 ;
  wire \gen_decoder[1].axisc_decoder_0_n_26 ;
  wire \gen_decoder[1].axisc_decoder_0_n_27 ;
  wire \gen_decoder[1].axisc_decoder_0_n_28 ;
  wire \gen_decoder[1].axisc_decoder_0_n_29 ;
  wire \gen_decoder[1].axisc_decoder_0_n_3 ;
  wire \gen_decoder[1].axisc_decoder_0_n_30 ;
  wire \gen_decoder[1].axisc_decoder_0_n_31 ;
  wire \gen_decoder[1].axisc_decoder_0_n_32 ;
  wire \gen_decoder[1].axisc_decoder_0_n_4 ;
  wire \gen_decoder[1].axisc_decoder_0_n_5 ;
  wire \gen_decoder[1].axisc_decoder_0_n_7 ;
  wire \gen_decoder[1].axisc_decoder_0_n_8 ;
  wire \gen_decoder[1].axisc_decoder_0_n_9 ;
  wire \gen_decoder[2].axisc_decoder_0_n_1 ;
  wire \gen_decoder[2].axisc_decoder_0_n_10 ;
  wire \gen_decoder[2].axisc_decoder_0_n_11 ;
  wire \gen_decoder[2].axisc_decoder_0_n_12 ;
  wire \gen_decoder[2].axisc_decoder_0_n_13 ;
  wire \gen_decoder[2].axisc_decoder_0_n_14 ;
  wire \gen_decoder[2].axisc_decoder_0_n_15 ;
  wire \gen_decoder[2].axisc_decoder_0_n_16 ;
  wire \gen_decoder[2].axisc_decoder_0_n_17 ;
  wire \gen_decoder[2].axisc_decoder_0_n_18 ;
  wire \gen_decoder[2].axisc_decoder_0_n_19 ;
  wire \gen_decoder[2].axisc_decoder_0_n_2 ;
  wire \gen_decoder[2].axisc_decoder_0_n_20 ;
  wire \gen_decoder[2].axisc_decoder_0_n_21 ;
  wire \gen_decoder[2].axisc_decoder_0_n_22 ;
  wire \gen_decoder[2].axisc_decoder_0_n_23 ;
  wire \gen_decoder[2].axisc_decoder_0_n_24 ;
  wire \gen_decoder[2].axisc_decoder_0_n_25 ;
  wire \gen_decoder[2].axisc_decoder_0_n_26 ;
  wire \gen_decoder[2].axisc_decoder_0_n_27 ;
  wire \gen_decoder[2].axisc_decoder_0_n_28 ;
  wire \gen_decoder[2].axisc_decoder_0_n_29 ;
  wire \gen_decoder[2].axisc_decoder_0_n_3 ;
  wire \gen_decoder[2].axisc_decoder_0_n_30 ;
  wire \gen_decoder[2].axisc_decoder_0_n_31 ;
  wire \gen_decoder[2].axisc_decoder_0_n_32 ;
  wire \gen_decoder[2].axisc_decoder_0_n_33 ;
  wire \gen_decoder[2].axisc_decoder_0_n_4 ;
  wire \gen_decoder[2].axisc_decoder_0_n_5 ;
  wire \gen_decoder[2].axisc_decoder_0_n_7 ;
  wire \gen_decoder[2].axisc_decoder_0_n_8 ;
  wire \gen_decoder[2].axisc_decoder_0_n_9 ;
  wire \gen_decoder[3].axisc_decoder_0_n_1 ;
  wire \gen_decoder[3].axisc_decoder_0_n_10 ;
  wire \gen_decoder[3].axisc_decoder_0_n_11 ;
  wire \gen_decoder[3].axisc_decoder_0_n_12 ;
  wire \gen_decoder[3].axisc_decoder_0_n_13 ;
  wire \gen_decoder[3].axisc_decoder_0_n_15 ;
  wire \gen_decoder[3].axisc_decoder_0_n_16 ;
  wire \gen_decoder[3].axisc_decoder_0_n_17 ;
  wire \gen_decoder[3].axisc_decoder_0_n_18 ;
  wire \gen_decoder[3].axisc_decoder_0_n_19 ;
  wire \gen_decoder[3].axisc_decoder_0_n_2 ;
  wire \gen_decoder[3].axisc_decoder_0_n_20 ;
  wire \gen_decoder[3].axisc_decoder_0_n_21 ;
  wire \gen_decoder[3].axisc_decoder_0_n_22 ;
  wire \gen_decoder[3].axisc_decoder_0_n_23 ;
  wire \gen_decoder[3].axisc_decoder_0_n_24 ;
  wire \gen_decoder[3].axisc_decoder_0_n_25 ;
  wire \gen_decoder[3].axisc_decoder_0_n_26 ;
  wire \gen_decoder[3].axisc_decoder_0_n_27 ;
  wire \gen_decoder[3].axisc_decoder_0_n_28 ;
  wire \gen_decoder[3].axisc_decoder_0_n_29 ;
  wire \gen_decoder[3].axisc_decoder_0_n_3 ;
  wire \gen_decoder[3].axisc_decoder_0_n_30 ;
  wire \gen_decoder[3].axisc_decoder_0_n_31 ;
  wire \gen_decoder[3].axisc_decoder_0_n_32 ;
  wire \gen_decoder[3].axisc_decoder_0_n_33 ;
  wire \gen_decoder[3].axisc_decoder_0_n_34 ;
  wire \gen_decoder[3].axisc_decoder_0_n_35 ;
  wire \gen_decoder[3].axisc_decoder_0_n_36 ;
  wire \gen_decoder[3].axisc_decoder_0_n_37 ;
  wire \gen_decoder[3].axisc_decoder_0_n_38 ;
  wire \gen_decoder[3].axisc_decoder_0_n_39 ;
  wire \gen_decoder[3].axisc_decoder_0_n_4 ;
  wire \gen_decoder[3].axisc_decoder_0_n_40 ;
  wire \gen_decoder[3].axisc_decoder_0_n_41 ;
  wire \gen_decoder[3].axisc_decoder_0_n_5 ;
  wire \gen_decoder[3].axisc_decoder_0_n_6 ;
  wire \gen_decoder[3].axisc_decoder_0_n_7 ;
  wire \gen_decoder[3].axisc_decoder_0_n_8 ;
  wire \gen_decoder[3].axisc_decoder_0_n_9 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_142 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_143 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_144 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_145 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_146 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_23 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_35 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_37 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_6 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7 ;
  wire \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ;
  wire \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ;
  wire \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ;
  wire \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ;
  wire \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ;
  wire \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ;
  wire \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ;
  wire \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ;
  wire \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ;
  wire \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ;
  wire \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ;
  wire \gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  wire \gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [3:0]\gen_tdest_router.busy_r_0 ;
  wire [3:0]\gen_tdest_router.busy_r_1 ;
  wire [3:0]\gen_tdest_router.busy_r_2 ;
  wire [3:3]\gen_tdest_routing.busy_ns ;
  wire [3:3]\gen_tdest_routing.busy_ns_3 ;
  wire [3:3]\gen_tdest_routing.busy_ns_4 ;
  wire [3:3]\gen_tdest_routing.busy_ns_5 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_0 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_7 ;
  wire \gen_transfer_mux[1].axisc_transfer_mux_0_n_1 ;
  wire \gen_transfer_mux[1].axisc_transfer_mux_0_n_2 ;
  wire \gen_transfer_mux[1].axisc_transfer_mux_0_n_6 ;
  wire \gen_transfer_mux[2].axisc_transfer_mux_0_n_1 ;
  wire \gen_transfer_mux[3].axisc_transfer_mux_0_n_0 ;
  wire \gen_transfer_mux[3].axisc_transfer_mux_0_n_12 ;
  wire \gen_transfer_mux[3].axisc_transfer_mux_0_n_13 ;
  wire \gen_transfer_mux[3].axisc_transfer_mux_0_n_7 ;
  wire [31:0]m_axis_tdata;
  wire [31:0]m_axis_tdest;
  wire [31:0]m_axis_tid;
  wire [3:0]m_axis_tlast;
  wire [3:0]m_axis_tready;
  wire [3:0]m_axis_tuser;
  wire [3:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [31:0]s_axis_tdest;
  wire [31:0]s_axis_tid;
  wire [3:0]s_axis_tlast;
  wire [3:0]s_axis_tready;
  wire [3:0]s_axis_tuser;
  wire [3:0]s_axis_tvalid;
  wire [3:0]s_decode_err;

  assign arb_dest[127] = \<const0> ;
  assign arb_dest[126] = \<const0> ;
  assign arb_dest[125] = \<const0> ;
  assign arb_dest[124] = \<const0> ;
  assign arb_dest[123] = \<const0> ;
  assign arb_dest[122] = \<const0> ;
  assign arb_dest[121] = \<const0> ;
  assign arb_dest[120] = \<const0> ;
  assign arb_dest[119] = \<const0> ;
  assign arb_dest[118] = \<const0> ;
  assign arb_dest[117] = \<const0> ;
  assign arb_dest[116] = \<const0> ;
  assign arb_dest[115] = \<const0> ;
  assign arb_dest[114] = \<const0> ;
  assign arb_dest[113] = \<const0> ;
  assign arb_dest[112] = \<const0> ;
  assign arb_dest[111] = \<const0> ;
  assign arb_dest[110] = \<const0> ;
  assign arb_dest[109] = \<const0> ;
  assign arb_dest[108] = \<const0> ;
  assign arb_dest[107] = \<const0> ;
  assign arb_dest[106] = \<const0> ;
  assign arb_dest[105] = \<const0> ;
  assign arb_dest[104] = \<const0> ;
  assign arb_dest[103] = \<const0> ;
  assign arb_dest[102] = \<const0> ;
  assign arb_dest[101] = \<const0> ;
  assign arb_dest[100] = \<const0> ;
  assign arb_dest[99] = \<const0> ;
  assign arb_dest[98] = \<const0> ;
  assign arb_dest[97] = \<const0> ;
  assign arb_dest[96] = \<const0> ;
  assign arb_dest[95] = \<const0> ;
  assign arb_dest[94] = \<const0> ;
  assign arb_dest[93] = \<const0> ;
  assign arb_dest[92] = \<const0> ;
  assign arb_dest[91] = \<const0> ;
  assign arb_dest[90] = \<const0> ;
  assign arb_dest[89] = \<const0> ;
  assign arb_dest[88] = \<const0> ;
  assign arb_dest[87] = \<const0> ;
  assign arb_dest[86] = \<const0> ;
  assign arb_dest[85] = \<const0> ;
  assign arb_dest[84] = \<const0> ;
  assign arb_dest[83] = \<const0> ;
  assign arb_dest[82] = \<const0> ;
  assign arb_dest[81] = \<const0> ;
  assign arb_dest[80] = \<const0> ;
  assign arb_dest[79] = \<const0> ;
  assign arb_dest[78] = \<const0> ;
  assign arb_dest[77] = \<const0> ;
  assign arb_dest[76] = \<const0> ;
  assign arb_dest[75] = \<const0> ;
  assign arb_dest[74] = \<const0> ;
  assign arb_dest[73] = \<const0> ;
  assign arb_dest[72] = \<const0> ;
  assign arb_dest[71] = \<const0> ;
  assign arb_dest[70] = \<const0> ;
  assign arb_dest[69] = \<const0> ;
  assign arb_dest[68] = \<const0> ;
  assign arb_dest[67] = \<const0> ;
  assign arb_dest[66] = \<const0> ;
  assign arb_dest[65] = \<const0> ;
  assign arb_dest[64] = \<const0> ;
  assign arb_dest[63] = \<const0> ;
  assign arb_dest[62] = \<const0> ;
  assign arb_dest[61] = \<const0> ;
  assign arb_dest[60] = \<const0> ;
  assign arb_dest[59] = \<const0> ;
  assign arb_dest[58] = \<const0> ;
  assign arb_dest[57] = \<const0> ;
  assign arb_dest[56] = \<const0> ;
  assign arb_dest[55] = \<const0> ;
  assign arb_dest[54] = \<const0> ;
  assign arb_dest[53] = \<const0> ;
  assign arb_dest[52] = \<const0> ;
  assign arb_dest[51] = \<const0> ;
  assign arb_dest[50] = \<const0> ;
  assign arb_dest[49] = \<const0> ;
  assign arb_dest[48] = \<const0> ;
  assign arb_dest[47] = \<const0> ;
  assign arb_dest[46] = \<const0> ;
  assign arb_dest[45] = \<const0> ;
  assign arb_dest[44] = \<const0> ;
  assign arb_dest[43] = \<const0> ;
  assign arb_dest[42] = \<const0> ;
  assign arb_dest[41] = \<const0> ;
  assign arb_dest[40] = \<const0> ;
  assign arb_dest[39] = \<const0> ;
  assign arb_dest[38] = \<const0> ;
  assign arb_dest[37] = \<const0> ;
  assign arb_dest[36] = \<const0> ;
  assign arb_dest[35] = \<const0> ;
  assign arb_dest[34] = \<const0> ;
  assign arb_dest[33] = \<const0> ;
  assign arb_dest[32] = \<const0> ;
  assign arb_dest[31] = \<const0> ;
  assign arb_dest[30] = \<const0> ;
  assign arb_dest[29] = \<const0> ;
  assign arb_dest[28] = \<const0> ;
  assign arb_dest[27] = \<const0> ;
  assign arb_dest[26] = \<const0> ;
  assign arb_dest[25] = \<const0> ;
  assign arb_dest[24] = \<const0> ;
  assign arb_dest[23] = \<const0> ;
  assign arb_dest[22] = \<const0> ;
  assign arb_dest[21] = \<const0> ;
  assign arb_dest[20] = \<const0> ;
  assign arb_dest[19] = \<const0> ;
  assign arb_dest[18] = \<const0> ;
  assign arb_dest[17] = \<const0> ;
  assign arb_dest[16] = \<const0> ;
  assign arb_dest[15] = \<const0> ;
  assign arb_dest[14] = \<const0> ;
  assign arb_dest[13] = \<const0> ;
  assign arb_dest[12] = \<const0> ;
  assign arb_dest[11] = \<const0> ;
  assign arb_dest[10] = \<const0> ;
  assign arb_dest[9] = \<const0> ;
  assign arb_dest[8] = \<const0> ;
  assign arb_dest[7] = \<const0> ;
  assign arb_dest[6] = \<const0> ;
  assign arb_dest[5] = \<const0> ;
  assign arb_dest[4] = \<const0> ;
  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[3] = \<const0> ;
  assign arb_done[2] = \<const0> ;
  assign arb_done[1] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[127] = \<const0> ;
  assign arb_id[126] = \<const0> ;
  assign arb_id[125] = \<const0> ;
  assign arb_id[124] = \<const0> ;
  assign arb_id[123] = \<const0> ;
  assign arb_id[122] = \<const0> ;
  assign arb_id[121] = \<const0> ;
  assign arb_id[120] = \<const0> ;
  assign arb_id[119] = \<const0> ;
  assign arb_id[118] = \<const0> ;
  assign arb_id[117] = \<const0> ;
  assign arb_id[116] = \<const0> ;
  assign arb_id[115] = \<const0> ;
  assign arb_id[114] = \<const0> ;
  assign arb_id[113] = \<const0> ;
  assign arb_id[112] = \<const0> ;
  assign arb_id[111] = \<const0> ;
  assign arb_id[110] = \<const0> ;
  assign arb_id[109] = \<const0> ;
  assign arb_id[108] = \<const0> ;
  assign arb_id[107] = \<const0> ;
  assign arb_id[106] = \<const0> ;
  assign arb_id[105] = \<const0> ;
  assign arb_id[104] = \<const0> ;
  assign arb_id[103] = \<const0> ;
  assign arb_id[102] = \<const0> ;
  assign arb_id[101] = \<const0> ;
  assign arb_id[100] = \<const0> ;
  assign arb_id[99] = \<const0> ;
  assign arb_id[98] = \<const0> ;
  assign arb_id[97] = \<const0> ;
  assign arb_id[96] = \<const0> ;
  assign arb_id[95] = \<const0> ;
  assign arb_id[94] = \<const0> ;
  assign arb_id[93] = \<const0> ;
  assign arb_id[92] = \<const0> ;
  assign arb_id[91] = \<const0> ;
  assign arb_id[90] = \<const0> ;
  assign arb_id[89] = \<const0> ;
  assign arb_id[88] = \<const0> ;
  assign arb_id[87] = \<const0> ;
  assign arb_id[86] = \<const0> ;
  assign arb_id[85] = \<const0> ;
  assign arb_id[84] = \<const0> ;
  assign arb_id[83] = \<const0> ;
  assign arb_id[82] = \<const0> ;
  assign arb_id[81] = \<const0> ;
  assign arb_id[80] = \<const0> ;
  assign arb_id[79] = \<const0> ;
  assign arb_id[78] = \<const0> ;
  assign arb_id[77] = \<const0> ;
  assign arb_id[76] = \<const0> ;
  assign arb_id[75] = \<const0> ;
  assign arb_id[74] = \<const0> ;
  assign arb_id[73] = \<const0> ;
  assign arb_id[72] = \<const0> ;
  assign arb_id[71] = \<const0> ;
  assign arb_id[70] = \<const0> ;
  assign arb_id[69] = \<const0> ;
  assign arb_id[68] = \<const0> ;
  assign arb_id[67] = \<const0> ;
  assign arb_id[66] = \<const0> ;
  assign arb_id[65] = \<const0> ;
  assign arb_id[64] = \<const0> ;
  assign arb_id[63] = \<const0> ;
  assign arb_id[62] = \<const0> ;
  assign arb_id[61] = \<const0> ;
  assign arb_id[60] = \<const0> ;
  assign arb_id[59] = \<const0> ;
  assign arb_id[58] = \<const0> ;
  assign arb_id[57] = \<const0> ;
  assign arb_id[56] = \<const0> ;
  assign arb_id[55] = \<const0> ;
  assign arb_id[54] = \<const0> ;
  assign arb_id[53] = \<const0> ;
  assign arb_id[52] = \<const0> ;
  assign arb_id[51] = \<const0> ;
  assign arb_id[50] = \<const0> ;
  assign arb_id[49] = \<const0> ;
  assign arb_id[48] = \<const0> ;
  assign arb_id[47] = \<const0> ;
  assign arb_id[46] = \<const0> ;
  assign arb_id[45] = \<const0> ;
  assign arb_id[44] = \<const0> ;
  assign arb_id[43] = \<const0> ;
  assign arb_id[42] = \<const0> ;
  assign arb_id[41] = \<const0> ;
  assign arb_id[40] = \<const0> ;
  assign arb_id[39] = \<const0> ;
  assign arb_id[38] = \<const0> ;
  assign arb_id[37] = \<const0> ;
  assign arb_id[36] = \<const0> ;
  assign arb_id[35] = \<const0> ;
  assign arb_id[34] = \<const0> ;
  assign arb_id[33] = \<const0> ;
  assign arb_id[32] = \<const0> ;
  assign arb_id[31] = \<const0> ;
  assign arb_id[30] = \<const0> ;
  assign arb_id[29] = \<const0> ;
  assign arb_id[28] = \<const0> ;
  assign arb_id[27] = \<const0> ;
  assign arb_id[26] = \<const0> ;
  assign arb_id[25] = \<const0> ;
  assign arb_id[24] = \<const0> ;
  assign arb_id[23] = \<const0> ;
  assign arb_id[22] = \<const0> ;
  assign arb_id[21] = \<const0> ;
  assign arb_id[20] = \<const0> ;
  assign arb_id[19] = \<const0> ;
  assign arb_id[18] = \<const0> ;
  assign arb_id[17] = \<const0> ;
  assign arb_id[16] = \<const0> ;
  assign arb_id[15] = \<const0> ;
  assign arb_id[14] = \<const0> ;
  assign arb_id[13] = \<const0> ;
  assign arb_id[12] = \<const0> ;
  assign arb_id[11] = \<const0> ;
  assign arb_id[10] = \<const0> ;
  assign arb_id[9] = \<const0> ;
  assign arb_id[8] = \<const0> ;
  assign arb_id[7] = \<const0> ;
  assign arb_id[6] = \<const0> ;
  assign arb_id[5] = \<const0> ;
  assign arb_id[4] = \<const0> ;
  assign arb_id[3] = \<const0> ;
  assign arb_id[2] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[15] = \<const0> ;
  assign arb_last[14] = \<const0> ;
  assign arb_last[13] = \<const0> ;
  assign arb_last[12] = \<const0> ;
  assign arb_last[11] = \<const0> ;
  assign arb_last[10] = \<const0> ;
  assign arb_last[9] = \<const0> ;
  assign arb_last[8] = \<const0> ;
  assign arb_last[7] = \<const0> ;
  assign arb_last[6] = \<const0> ;
  assign arb_last[5] = \<const0> ;
  assign arb_last[4] = \<const0> ;
  assign arb_last[3] = \<const0> ;
  assign arb_last[2] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[15] = \<const0> ;
  assign arb_req[14] = \<const0> ;
  assign arb_req[13] = \<const0> ;
  assign arb_req[12] = \<const0> ;
  assign arb_req[11] = \<const0> ;
  assign arb_req[10] = \<const0> ;
  assign arb_req[9] = \<const0> ;
  assign arb_req[8] = \<const0> ;
  assign arb_req[7] = \<const0> ;
  assign arb_req[6] = \<const0> ;
  assign arb_req[5] = \<const0> ;
  assign arb_req[4] = \<const0> ;
  assign arb_req[3] = \<const0> ;
  assign arb_req[2] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[15] = \<const0> ;
  assign arb_user[14] = \<const0> ;
  assign arb_user[13] = \<const0> ;
  assign arb_user[12] = \<const0> ;
  assign arb_user[11] = \<const0> ;
  assign arb_user[10] = \<const0> ;
  assign arb_user[9] = \<const0> ;
  assign arb_user[8] = \<const0> ;
  assign arb_user[7] = \<const0> ;
  assign arb_user[6] = \<const0> ;
  assign arb_user[5] = \<const0> ;
  assign arb_user[4] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.D({s_axis_tuser[0],s_axis_tid[7:0],s_axis_tlast[0],s_axis_tdata[7:0]}),
        .aclk(aclk),
        .arb_busy_r_reg(\gen_decoder[2].axisc_decoder_0_n_1 ),
        .arb_busy_r_reg_0(\gen_decoder[1].axisc_decoder_0_n_1 ),
        .arb_busy_r_reg_1(\gen_decoder[3].axisc_decoder_0_n_9 ),
        .arb_gnt_i({arb_gnt_i[12],arb_gnt_i[8],arb_gnt_i[4]}),
        .\arb_gnt_r[3]_i_3__0 (\gen_decoder[3].axisc_decoder_0_n_7 ),
        .arb_sel_i(arb_sel_i[7:6]),
        .areset(areset),
        .\gen_AB_reg_slice.payload_a_reg[2] (\gen_decoder[0].axisc_decoder_0_n_8 ),
        .\gen_AB_reg_slice.payload_a_reg[3] (\gen_decoder[0].axisc_decoder_0_n_3 ),
        .\gen_AB_reg_slice.payload_a_reg[3]_0 (\gen_decoder[0].axisc_decoder_0_n_6 ),
        .\gen_AB_reg_slice.payload_b_reg[0] (\gen_decoder[0].axisc_decoder_0_n_36 ),
        .\gen_AB_reg_slice.payload_b_reg[10] (\gen_decoder[0].axisc_decoder_0_n_26 ),
        .\gen_AB_reg_slice.payload_b_reg[11] (\gen_decoder[0].axisc_decoder_0_n_25 ),
        .\gen_AB_reg_slice.payload_b_reg[12] (\gen_decoder[0].axisc_decoder_0_n_24 ),
        .\gen_AB_reg_slice.payload_b_reg[13] (\gen_decoder[0].axisc_decoder_0_n_23 ),
        .\gen_AB_reg_slice.payload_b_reg[14] (\gen_decoder[0].axisc_decoder_0_n_22 ),
        .\gen_AB_reg_slice.payload_b_reg[15] (\gen_decoder[0].axisc_decoder_0_n_21 ),
        .\gen_AB_reg_slice.payload_b_reg[16] (\gen_decoder[0].axisc_decoder_0_n_20 ),
        .\gen_AB_reg_slice.payload_b_reg[17] (\gen_decoder[0].axisc_decoder_0_n_19 ),
        .\gen_AB_reg_slice.payload_b_reg[18] (\gen_decoder[0].axisc_decoder_0_n_18 ),
        .\gen_AB_reg_slice.payload_b_reg[19] (\gen_decoder[0].axisc_decoder_0_n_17 ),
        .\gen_AB_reg_slice.payload_b_reg[1] (\gen_decoder[0].axisc_decoder_0_n_5 ),
        .\gen_AB_reg_slice.payload_b_reg[1]_0 (\gen_decoder[0].axisc_decoder_0_n_35 ),
        .\gen_AB_reg_slice.payload_b_reg[20] (\gen_decoder[0].axisc_decoder_0_n_16 ),
        .\gen_AB_reg_slice.payload_b_reg[21] (\gen_decoder[0].axisc_decoder_0_n_15 ),
        .\gen_AB_reg_slice.payload_b_reg[22] (\gen_decoder[0].axisc_decoder_0_n_14 ),
        .\gen_AB_reg_slice.payload_b_reg[23] (\gen_decoder[0].axisc_decoder_0_n_13 ),
        .\gen_AB_reg_slice.payload_b_reg[24] (\gen_decoder[0].axisc_decoder_0_n_12 ),
        .\gen_AB_reg_slice.payload_b_reg[25] (\gen_decoder[0].axisc_decoder_0_n_11 ),
        .\gen_AB_reg_slice.payload_b_reg[2] (\gen_decoder[0].axisc_decoder_0_n_4 ),
        .\gen_AB_reg_slice.payload_b_reg[2]_0 (\gen_decoder[0].axisc_decoder_0_n_34 ),
        .\gen_AB_reg_slice.payload_b_reg[3] (\gen_decoder[0].axisc_decoder_0_n_33 ),
        .\gen_AB_reg_slice.payload_b_reg[4] (\gen_decoder[0].axisc_decoder_0_n_32 ),
        .\gen_AB_reg_slice.payload_b_reg[5] (\gen_decoder[0].axisc_decoder_0_n_31 ),
        .\gen_AB_reg_slice.payload_b_reg[6] (\gen_decoder[0].axisc_decoder_0_n_30 ),
        .\gen_AB_reg_slice.payload_b_reg[7] (\gen_decoder[0].axisc_decoder_0_n_29 ),
        .\gen_AB_reg_slice.payload_b_reg[8] (\gen_decoder[0].axisc_decoder_0_n_28 ),
        .\gen_AB_reg_slice.payload_b_reg[9] (\gen_decoder[0].axisc_decoder_0_n_27 ),
        .\gen_AB_reg_slice.state[1]_i_2 (\gen_transfer_mux[1].axisc_transfer_mux_0_n_2 ),
        .\gen_AB_reg_slice.state[1]_i_2_0 (\gen_transfer_mux[3].axisc_transfer_mux_0_n_7 ),
        .\gen_AB_reg_slice.state_reg[0] (\gen_decoder[0].axisc_decoder_0_n_7 ),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[0]),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r_1 [0]),
        .\gen_tdest_routing.busy_r_reg[1]_0 (\gen_decoder[0].axisc_decoder_0_n_37 ),
        .\gen_tdest_routing.busy_r_reg[1]_1 (\gen_transfer_mux[1].axisc_transfer_mux_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[2]_0 (\gen_decoder[0].axisc_decoder_0_n_9 ),
        .\gen_tdest_routing.busy_r_reg[2]_1 (\gen_transfer_mux[2].axisc_transfer_mux_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[3]_0 (\gen_decoder[0].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[3]_1 (\gen_decoder[0].axisc_decoder_0_n_2 ),
        .\gen_tdest_routing.busy_r_reg[3]_2 (\gen_tdest_routing.busy_ns ),
        .m_axis_tready(m_axis_tready[3:1]),
        .s_axis_tdest(s_axis_tdest[7:0]),
        .s_axis_tvalid(s_axis_tvalid[0]),
        .s_decode_err(s_decode_err[0]));
  axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0 \gen_decoder[1].axisc_decoder_0 
       (.D({s_axis_tuser[1],s_axis_tdest[15:8],s_axis_tid[15:8],s_axis_tlast[1],s_axis_tdata[15:8]}),
        .aclk(aclk),
        .arb_gnt_i({arb_gnt_i[13],arb_gnt_i[1]}),
        .arb_sel_i({arb_sel_i[7:6],arb_sel_i[1:0]}),
        .areset(areset),
        .\gen_AB_reg_slice.payload_a_reg[0] (\gen_decoder[1].axisc_decoder_0_n_4 ),
        .\gen_AB_reg_slice.payload_a_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_5 ),
        .\gen_AB_reg_slice.payload_b_reg[0] (\gen_decoder[1].axisc_decoder_0_n_32 ),
        .\gen_AB_reg_slice.payload_b_reg[10] (\gen_decoder[1].axisc_decoder_0_n_22 ),
        .\gen_AB_reg_slice.payload_b_reg[11] (\gen_decoder[1].axisc_decoder_0_n_21 ),
        .\gen_AB_reg_slice.payload_b_reg[12] (\gen_decoder[1].axisc_decoder_0_n_20 ),
        .\gen_AB_reg_slice.payload_b_reg[13] (\gen_decoder[1].axisc_decoder_0_n_19 ),
        .\gen_AB_reg_slice.payload_b_reg[14] (\gen_decoder[1].axisc_decoder_0_n_18 ),
        .\gen_AB_reg_slice.payload_b_reg[15] (\gen_decoder[1].axisc_decoder_0_n_17 ),
        .\gen_AB_reg_slice.payload_b_reg[16] (\gen_decoder[1].axisc_decoder_0_n_16 ),
        .\gen_AB_reg_slice.payload_b_reg[17] (\gen_decoder[1].axisc_decoder_0_n_15 ),
        .\gen_AB_reg_slice.payload_b_reg[18] (\gen_decoder[1].axisc_decoder_0_n_14 ),
        .\gen_AB_reg_slice.payload_b_reg[19] (\gen_decoder[1].axisc_decoder_0_n_13 ),
        .\gen_AB_reg_slice.payload_b_reg[1] (\gen_decoder[1].axisc_decoder_0_n_31 ),
        .\gen_AB_reg_slice.payload_b_reg[20] (\gen_decoder[1].axisc_decoder_0_n_12 ),
        .\gen_AB_reg_slice.payload_b_reg[21] (\gen_decoder[1].axisc_decoder_0_n_11 ),
        .\gen_AB_reg_slice.payload_b_reg[22] (\gen_decoder[1].axisc_decoder_0_n_10 ),
        .\gen_AB_reg_slice.payload_b_reg[23] (\gen_decoder[1].axisc_decoder_0_n_9 ),
        .\gen_AB_reg_slice.payload_b_reg[24] (\gen_decoder[1].axisc_decoder_0_n_8 ),
        .\gen_AB_reg_slice.payload_b_reg[25] (\gen_decoder[1].axisc_decoder_0_n_7 ),
        .\gen_AB_reg_slice.payload_b_reg[2] (\gen_decoder[1].axisc_decoder_0_n_30 ),
        .\gen_AB_reg_slice.payload_b_reg[3] (\gen_decoder[1].axisc_decoder_0_n_29 ),
        .\gen_AB_reg_slice.payload_b_reg[4] (\gen_decoder[1].axisc_decoder_0_n_28 ),
        .\gen_AB_reg_slice.payload_b_reg[5] (\gen_decoder[1].axisc_decoder_0_n_27 ),
        .\gen_AB_reg_slice.payload_b_reg[6] (\gen_decoder[1].axisc_decoder_0_n_26 ),
        .\gen_AB_reg_slice.payload_b_reg[7] (\gen_decoder[1].axisc_decoder_0_n_25 ),
        .\gen_AB_reg_slice.payload_b_reg[8] (\gen_decoder[1].axisc_decoder_0_n_24 ),
        .\gen_AB_reg_slice.payload_b_reg[9] (\gen_decoder[1].axisc_decoder_0_n_23 ),
        .\gen_AB_reg_slice.state_reg[0] (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_3 ),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[1]),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [1]),
        .\gen_tdest_router.busy_r_0 (\gen_tdest_router.busy_r_2 [1]),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[3]_0 (\gen_decoder[1].axisc_decoder_0_n_2 ),
        .\gen_tdest_routing.busy_r_reg[3]_1 (\gen_tdest_routing.busy_ns_3 ),
        .m_axis_tready({m_axis_tready[3],m_axis_tready[0]}),
        .s_axis_tvalid(s_axis_tvalid[1]),
        .s_decode_err(s_decode_err[1]));
  axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0_0 \gen_decoder[2].axisc_decoder_0 
       (.D({s_axis_tuser[2],s_axis_tdest[23:16],s_axis_tid[23:16],s_axis_tlast[2],s_axis_tdata[23:16]}),
        .aclk(aclk),
        .arb_busy_r_reg(\gen_decoder[1].axisc_decoder_0_n_4 ),
        .arb_busy_r_reg_0(\gen_decoder[3].axisc_decoder_0_n_12 ),
        .arb_gnt_i({arb_gnt_i[14],arb_gnt_i[2]}),
        .arb_sel_i(arb_sel_i[7:6]),
        .areset(areset),
        .\gen_AB_reg_slice.payload_a_reg[0] (\gen_decoder[2].axisc_decoder_0_n_5 ),
        .\gen_AB_reg_slice.payload_a_reg[0]_0 (\gen_decoder[2].axisc_decoder_0_n_33 ),
        .\gen_AB_reg_slice.payload_b_reg[0] (\gen_decoder[2].axisc_decoder_0_n_4 ),
        .\gen_AB_reg_slice.payload_b_reg[0]_0 (\gen_decoder[2].axisc_decoder_0_n_32 ),
        .\gen_AB_reg_slice.payload_b_reg[10] (\gen_decoder[2].axisc_decoder_0_n_22 ),
        .\gen_AB_reg_slice.payload_b_reg[11] (\gen_decoder[2].axisc_decoder_0_n_21 ),
        .\gen_AB_reg_slice.payload_b_reg[12] (\gen_decoder[2].axisc_decoder_0_n_20 ),
        .\gen_AB_reg_slice.payload_b_reg[13] (\gen_decoder[2].axisc_decoder_0_n_19 ),
        .\gen_AB_reg_slice.payload_b_reg[14] (\gen_decoder[2].axisc_decoder_0_n_18 ),
        .\gen_AB_reg_slice.payload_b_reg[15] (\gen_decoder[2].axisc_decoder_0_n_17 ),
        .\gen_AB_reg_slice.payload_b_reg[16] (\gen_decoder[2].axisc_decoder_0_n_16 ),
        .\gen_AB_reg_slice.payload_b_reg[17] (\gen_decoder[2].axisc_decoder_0_n_15 ),
        .\gen_AB_reg_slice.payload_b_reg[18] (\gen_decoder[2].axisc_decoder_0_n_14 ),
        .\gen_AB_reg_slice.payload_b_reg[19] (\gen_decoder[2].axisc_decoder_0_n_13 ),
        .\gen_AB_reg_slice.payload_b_reg[1] (\gen_decoder[2].axisc_decoder_0_n_31 ),
        .\gen_AB_reg_slice.payload_b_reg[20] (\gen_decoder[2].axisc_decoder_0_n_12 ),
        .\gen_AB_reg_slice.payload_b_reg[21] (\gen_decoder[2].axisc_decoder_0_n_11 ),
        .\gen_AB_reg_slice.payload_b_reg[22] (\gen_decoder[2].axisc_decoder_0_n_10 ),
        .\gen_AB_reg_slice.payload_b_reg[23] (\gen_decoder[2].axisc_decoder_0_n_9 ),
        .\gen_AB_reg_slice.payload_b_reg[24] (\gen_decoder[2].axisc_decoder_0_n_8 ),
        .\gen_AB_reg_slice.payload_b_reg[25] (\gen_decoder[2].axisc_decoder_0_n_7 ),
        .\gen_AB_reg_slice.payload_b_reg[2] (\gen_decoder[2].axisc_decoder_0_n_30 ),
        .\gen_AB_reg_slice.payload_b_reg[3] (\gen_decoder[2].axisc_decoder_0_n_29 ),
        .\gen_AB_reg_slice.payload_b_reg[4] (\gen_decoder[2].axisc_decoder_0_n_28 ),
        .\gen_AB_reg_slice.payload_b_reg[5] (\gen_decoder[2].axisc_decoder_0_n_27 ),
        .\gen_AB_reg_slice.payload_b_reg[6] (\gen_decoder[2].axisc_decoder_0_n_26 ),
        .\gen_AB_reg_slice.payload_b_reg[7] (\gen_decoder[2].axisc_decoder_0_n_25 ),
        .\gen_AB_reg_slice.payload_b_reg[8] (\gen_decoder[2].axisc_decoder_0_n_24 ),
        .\gen_AB_reg_slice.payload_b_reg[9] (\gen_decoder[2].axisc_decoder_0_n_23 ),
        .\gen_AB_reg_slice.state_reg[0] (\gen_decoder[2].axisc_decoder_0_n_1 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_decoder[2].axisc_decoder_0_n_3 ),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[2]),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r [2]),
        .\gen_tdest_router.busy_r_0 (\gen_tdest_router.busy_r_2 [2]),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[3]_0 (\gen_decoder[2].axisc_decoder_0_n_2 ),
        .\gen_tdest_routing.busy_r_reg[3]_1 (\gen_tdest_routing.busy_ns_4 ),
        .m_axis_tready({m_axis_tready[3],m_axis_tready[0]}),
        .s_axis_tvalid(s_axis_tvalid[2]),
        .s_decode_err(s_decode_err[2]));
  axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized1 \gen_decoder[3].axisc_decoder_0 
       (.D({s_axis_tuser[3],s_axis_tdest[31:24],s_axis_tid[31:24],s_axis_tlast[3],s_axis_tdata[31:24]}),
        .aclk(aclk),
        .arb_gnt_i({arb_gnt_i[15],arb_gnt_i[11],arb_gnt_i[7],arb_gnt_i[3]}),
        .\arb_gnt_r[3]_i_3__1 (\gen_decoder[0].axisc_decoder_0_n_8 ),
        .arb_sel_i(arb_sel_i),
        .areset(areset),
        .\gen_AB_reg_slice.payload_b_reg[0] (\gen_decoder[3].axisc_decoder_0_n_13 ),
        .\gen_AB_reg_slice.payload_b_reg[0]_0 (\gen_decoder[3].axisc_decoder_0_n_40 ),
        .\gen_AB_reg_slice.payload_b_reg[10] (\gen_decoder[3].axisc_decoder_0_n_30 ),
        .\gen_AB_reg_slice.payload_b_reg[11] (\gen_decoder[3].axisc_decoder_0_n_29 ),
        .\gen_AB_reg_slice.payload_b_reg[12] (\gen_decoder[3].axisc_decoder_0_n_28 ),
        .\gen_AB_reg_slice.payload_b_reg[13] (\gen_decoder[3].axisc_decoder_0_n_27 ),
        .\gen_AB_reg_slice.payload_b_reg[14] (\gen_decoder[3].axisc_decoder_0_n_26 ),
        .\gen_AB_reg_slice.payload_b_reg[15] (\gen_decoder[3].axisc_decoder_0_n_25 ),
        .\gen_AB_reg_slice.payload_b_reg[16] (\gen_decoder[3].axisc_decoder_0_n_24 ),
        .\gen_AB_reg_slice.payload_b_reg[17] (\gen_decoder[3].axisc_decoder_0_n_23 ),
        .\gen_AB_reg_slice.payload_b_reg[18] (\gen_decoder[3].axisc_decoder_0_n_22 ),
        .\gen_AB_reg_slice.payload_b_reg[19] (\gen_decoder[3].axisc_decoder_0_n_21 ),
        .\gen_AB_reg_slice.payload_b_reg[1] (\gen_decoder[3].axisc_decoder_0_n_3 ),
        .\gen_AB_reg_slice.payload_b_reg[1]_0 (\gen_decoder[3].axisc_decoder_0_n_39 ),
        .\gen_AB_reg_slice.payload_b_reg[20] (\gen_decoder[3].axisc_decoder_0_n_20 ),
        .\gen_AB_reg_slice.payload_b_reg[21] (\gen_decoder[3].axisc_decoder_0_n_19 ),
        .\gen_AB_reg_slice.payload_b_reg[22] (\gen_decoder[3].axisc_decoder_0_n_18 ),
        .\gen_AB_reg_slice.payload_b_reg[23] (\gen_decoder[3].axisc_decoder_0_n_17 ),
        .\gen_AB_reg_slice.payload_b_reg[24] (\gen_decoder[3].axisc_decoder_0_n_16 ),
        .\gen_AB_reg_slice.payload_b_reg[25] (\gen_decoder[3].axisc_decoder_0_n_15 ),
        .\gen_AB_reg_slice.payload_b_reg[2] (\gen_decoder[3].axisc_decoder_0_n_5 ),
        .\gen_AB_reg_slice.payload_b_reg[2]_0 (\gen_decoder[3].axisc_decoder_0_n_38 ),
        .\gen_AB_reg_slice.payload_b_reg[3] (\gen_decoder[3].axisc_decoder_0_n_9 ),
        .\gen_AB_reg_slice.payload_b_reg[3]_0 (\gen_decoder[3].axisc_decoder_0_n_11 ),
        .\gen_AB_reg_slice.payload_b_reg[3]_1 (\gen_decoder[3].axisc_decoder_0_n_37 ),
        .\gen_AB_reg_slice.payload_b_reg[4] (\gen_decoder[3].axisc_decoder_0_n_36 ),
        .\gen_AB_reg_slice.payload_b_reg[5] (\gen_decoder[3].axisc_decoder_0_n_35 ),
        .\gen_AB_reg_slice.payload_b_reg[6] (\gen_decoder[3].axisc_decoder_0_n_34 ),
        .\gen_AB_reg_slice.payload_b_reg[7] (\gen_decoder[3].axisc_decoder_0_n_33 ),
        .\gen_AB_reg_slice.payload_b_reg[8] (\gen_decoder[3].axisc_decoder_0_n_32 ),
        .\gen_AB_reg_slice.payload_b_reg[9] (\gen_decoder[3].axisc_decoder_0_n_31 ),
        .\gen_AB_reg_slice.state[1]_i_2__2 (\gen_transfer_mux[3].axisc_transfer_mux_0_n_12 ),
        .\gen_AB_reg_slice.state[1]_i_2__2_0 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_7 ),
        .\gen_AB_reg_slice.state_reg[0] (\gen_decoder[3].axisc_decoder_0_n_4 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_decoder[3].axisc_decoder_0_n_6 ),
        .\gen_AB_reg_slice.state_reg[0]_1 (\gen_decoder[3].axisc_decoder_0_n_7 ),
        .\gen_AB_reg_slice.state_reg[0]_2 (\gen_decoder[3].axisc_decoder_0_n_8 ),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[3]),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r_0 [3]),
        .\gen_tdest_router.busy_r_0 (\gen_tdest_router.busy_r_1 [3]),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[3].axisc_decoder_0_n_12 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[1]_0 (\gen_decoder[3].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[1]_1 (\gen_transfer_mux[1].axisc_transfer_mux_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[2]_0 (\gen_decoder[3].axisc_decoder_0_n_2 ),
        .\gen_tdest_routing.busy_r_reg[2]_1 (\gen_decoder[3].axisc_decoder_0_n_41 ),
        .\gen_tdest_routing.busy_r_reg[2]_2 (\gen_transfer_mux[2].axisc_transfer_mux_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[3]_0 (\gen_decoder[3].axisc_decoder_0_n_10 ),
        .\gen_tdest_routing.busy_r_reg[3]_1 (\gen_tdest_routing.busy_ns_5 ),
        .m_axis_tready(m_axis_tready),
        .s_axis_tvalid(s_axis_tvalid[3]),
        .s_decode_err(s_decode_err[3]));
  axis_switch_swifsaxis_switch_v1_1_29_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter 
       (.aclk(aclk),
        .arb_busy_ns(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ),
        .arb_busy_ns_3(\gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ),
        .arb_busy_ns_4(\gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ),
        .arb_busy_ns_5(\gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ),
        .arb_busy_r(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ),
        .arb_busy_r_0(\gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ),
        .arb_busy_r_1(\gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ),
        .arb_busy_r_2(\gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ),
        .\arb_gnt_r[3]_i_2__1 (\gen_decoder[3].axisc_decoder_0_n_2 ),
        .\arb_gnt_r[3]_i_3__2 (\gen_decoder[1].axisc_decoder_0_n_4 ),
        .\arb_gnt_r[3]_i_3__2_0 (\gen_decoder[3].axisc_decoder_0_n_12 ),
        .\arb_gnt_r[3]_i_3__2_1 (\gen_decoder[2].axisc_decoder_0_n_5 ),
        .\arb_gnt_r[3]_i_4__0 (\gen_decoder[3].axisc_decoder_0_n_7 ),
        .\arb_gnt_r[3]_i_4__0_0 (\gen_decoder[0].axisc_decoder_0_n_7 ),
        .\arb_gnt_r[3]_i_4__0_1 (\gen_decoder[3].axisc_decoder_0_n_1 ),
        .\arb_gnt_r[3]_i_4__1 (\gen_decoder[0].axisc_decoder_0_n_8 ),
        .\arb_gnt_r[3]_i_4__1_0 (\gen_decoder[3].axisc_decoder_0_n_4 ),
        .\arb_gnt_r[3]_i_4__1_1 (\gen_decoder[0].axisc_decoder_0_n_9 ),
        .\arb_gnt_r_reg[0] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7 ),
        .\arb_gnt_r_reg[2] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_142 ),
        .\arb_gnt_r_reg[2]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_143 ),
        .\arb_gnt_r_reg[2]_1 (\gen_decoder[3].axisc_decoder_0_n_9 ),
        .\arb_gnt_r_reg[2]_2 (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\arb_gnt_r_reg[2]_3 (\gen_decoder[2].axisc_decoder_0_n_1 ),
        .\arb_gnt_r_reg[2]_4 (\gen_decoder[0].axisc_decoder_0_n_3 ),
        .\arb_gnt_r_reg[2]_5 (\gen_transfer_mux[3].axisc_transfer_mux_0_n_13 ),
        .\arb_gnt_r_reg[3] ({arb_gnt_i[15:11],arb_gnt_i[9:0]}),
        .arb_sel_i(arb_sel_i),
        .arb_sel_r0(\gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ),
        .arb_sel_r0_7(\gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ),
        .arb_sel_r0_9(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ),
        .\arb_sel_r_reg[0] (\gen_transfer_mux[3].axisc_transfer_mux_0_n_0 ),
        .\arb_sel_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_1 ),
        .areset(areset),
        .areset_reg_0(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_6 ),
        .areset_reg_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_23 ),
        .areset_reg_2(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_35 ),
        .areset_reg_3(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_37 ),
        .aresetn(aresetn),
        .\gen_AB_reg_slice.payload_b_reg[3] (m_axis_tvalid[3]),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 (\gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg (\gen_decoder[3].axisc_decoder_0_n_8 ),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 (\gen_decoder[3].axisc_decoder_0_n_6 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r (\gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r_2 ),
        .\gen_tdest_router.busy_r_10 (\gen_tdest_router.busy_r ),
        .\gen_tdest_router.busy_r_6 ({\gen_tdest_router.busy_r_0 [3:2],\gen_tdest_router.busy_r_0 [0]}),
        .\gen_tdest_router.busy_r_8 (\gen_tdest_router.busy_r_1 ),
        .m_axis_tdata(m_axis_tdata),
        .\m_axis_tdata[24]_0 (\gen_decoder[0].axisc_decoder_0_n_36 ),
        .\m_axis_tdata[24]_1 (\gen_decoder[1].axisc_decoder_0_n_32 ),
        .\m_axis_tdata[24]_2 (\gen_decoder[3].axisc_decoder_0_n_40 ),
        .\m_axis_tdata[25]_0 (\gen_decoder[3].axisc_decoder_0_n_39 ),
        .\m_axis_tdata[25]_1 (\gen_decoder[1].axisc_decoder_0_n_31 ),
        .\m_axis_tdata[25]_2 (\gen_decoder[0].axisc_decoder_0_n_35 ),
        .\m_axis_tdata[26]_0 (\gen_decoder[3].axisc_decoder_0_n_38 ),
        .\m_axis_tdata[26]_1 (\gen_decoder[1].axisc_decoder_0_n_30 ),
        .\m_axis_tdata[26]_2 (\gen_decoder[0].axisc_decoder_0_n_34 ),
        .\m_axis_tdata[27]_0 (\gen_decoder[0].axisc_decoder_0_n_33 ),
        .\m_axis_tdata[27]_1 (\gen_decoder[1].axisc_decoder_0_n_29 ),
        .\m_axis_tdata[27]_2 (\gen_decoder[3].axisc_decoder_0_n_37 ),
        .\m_axis_tdata[28]_0 (\gen_decoder[3].axisc_decoder_0_n_36 ),
        .\m_axis_tdata[28]_1 (\gen_decoder[1].axisc_decoder_0_n_28 ),
        .\m_axis_tdata[28]_2 (\gen_decoder[0].axisc_decoder_0_n_32 ),
        .\m_axis_tdata[29]_0 (\gen_decoder[0].axisc_decoder_0_n_31 ),
        .\m_axis_tdata[29]_1 (\gen_decoder[1].axisc_decoder_0_n_27 ),
        .\m_axis_tdata[29]_2 (\gen_decoder[3].axisc_decoder_0_n_35 ),
        .\m_axis_tdata[30]_0 (\gen_decoder[0].axisc_decoder_0_n_30 ),
        .\m_axis_tdata[30]_1 (\gen_decoder[1].axisc_decoder_0_n_26 ),
        .\m_axis_tdata[30]_2 (\gen_decoder[3].axisc_decoder_0_n_34 ),
        .\m_axis_tdata[31]_0 (\gen_decoder[3].axisc_decoder_0_n_33 ),
        .\m_axis_tdata[31]_1 (\gen_decoder[1].axisc_decoder_0_n_25 ),
        .\m_axis_tdata[31]_2 (\gen_decoder[0].axisc_decoder_0_n_29 ),
        .m_axis_tdata_24_sp_1(\gen_decoder[2].axisc_decoder_0_n_32 ),
        .m_axis_tdata_25_sp_1(\gen_decoder[2].axisc_decoder_0_n_31 ),
        .m_axis_tdata_26_sp_1(\gen_decoder[2].axisc_decoder_0_n_30 ),
        .m_axis_tdata_27_sp_1(\gen_decoder[2].axisc_decoder_0_n_29 ),
        .m_axis_tdata_28_sp_1(\gen_decoder[2].axisc_decoder_0_n_28 ),
        .m_axis_tdata_29_sp_1(\gen_decoder[2].axisc_decoder_0_n_27 ),
        .m_axis_tdata_30_sp_1(\gen_decoder[2].axisc_decoder_0_n_26 ),
        .m_axis_tdata_31_sp_1(\gen_decoder[2].axisc_decoder_0_n_25 ),
        .m_axis_tdest(m_axis_tdest),
        .\m_axis_tdest[24]_0 (\gen_decoder[3].axisc_decoder_0_n_23 ),
        .\m_axis_tdest[24]_1 (\gen_decoder[1].axisc_decoder_0_n_15 ),
        .\m_axis_tdest[24]_2 (\gen_decoder[0].axisc_decoder_0_n_19 ),
        .\m_axis_tdest[25]_0 (\gen_decoder[3].axisc_decoder_0_n_22 ),
        .\m_axis_tdest[25]_1 (\gen_decoder[1].axisc_decoder_0_n_14 ),
        .\m_axis_tdest[25]_2 (\gen_decoder[0].axisc_decoder_0_n_18 ),
        .\m_axis_tdest[26]_0 (\gen_decoder[0].axisc_decoder_0_n_17 ),
        .\m_axis_tdest[26]_1 (\gen_decoder[1].axisc_decoder_0_n_13 ),
        .\m_axis_tdest[26]_2 (\gen_decoder[3].axisc_decoder_0_n_21 ),
        .\m_axis_tdest[27]_0 (\gen_decoder[3].axisc_decoder_0_n_20 ),
        .\m_axis_tdest[27]_1 (\gen_decoder[1].axisc_decoder_0_n_12 ),
        .\m_axis_tdest[27]_2 (\gen_decoder[0].axisc_decoder_0_n_16 ),
        .\m_axis_tdest[28]_0 (\gen_decoder[0].axisc_decoder_0_n_15 ),
        .\m_axis_tdest[28]_1 (\gen_decoder[1].axisc_decoder_0_n_11 ),
        .\m_axis_tdest[28]_2 (\gen_decoder[3].axisc_decoder_0_n_19 ),
        .\m_axis_tdest[29]_0 (\gen_decoder[0].axisc_decoder_0_n_14 ),
        .\m_axis_tdest[29]_1 (\gen_decoder[1].axisc_decoder_0_n_10 ),
        .\m_axis_tdest[29]_2 (\gen_decoder[3].axisc_decoder_0_n_18 ),
        .\m_axis_tdest[30]_0 (\gen_decoder[3].axisc_decoder_0_n_17 ),
        .\m_axis_tdest[30]_1 (\gen_decoder[1].axisc_decoder_0_n_9 ),
        .\m_axis_tdest[30]_2 (\gen_decoder[0].axisc_decoder_0_n_13 ),
        .\m_axis_tdest[31]_0 (\gen_decoder[3].axisc_decoder_0_n_16 ),
        .\m_axis_tdest[31]_1 (\gen_decoder[1].axisc_decoder_0_n_8 ),
        .\m_axis_tdest[31]_2 (\gen_decoder[0].axisc_decoder_0_n_12 ),
        .m_axis_tdest_24_sp_1(\gen_decoder[2].axisc_decoder_0_n_15 ),
        .m_axis_tdest_25_sp_1(\gen_decoder[2].axisc_decoder_0_n_14 ),
        .m_axis_tdest_26_sp_1(\gen_decoder[2].axisc_decoder_0_n_13 ),
        .m_axis_tdest_27_sp_1(\gen_decoder[2].axisc_decoder_0_n_12 ),
        .m_axis_tdest_28_sp_1(\gen_decoder[2].axisc_decoder_0_n_11 ),
        .m_axis_tdest_29_sp_1(\gen_decoder[2].axisc_decoder_0_n_10 ),
        .m_axis_tdest_30_sp_1(\gen_decoder[2].axisc_decoder_0_n_9 ),
        .m_axis_tdest_31_sp_1(\gen_decoder[2].axisc_decoder_0_n_8 ),
        .m_axis_tid(m_axis_tid),
        .\m_axis_tid[24]_0 (\gen_decoder[0].axisc_decoder_0_n_27 ),
        .\m_axis_tid[24]_1 (\gen_decoder[1].axisc_decoder_0_n_23 ),
        .\m_axis_tid[24]_2 (\gen_decoder[3].axisc_decoder_0_n_31 ),
        .\m_axis_tid[25]_0 (\gen_decoder[3].axisc_decoder_0_n_30 ),
        .\m_axis_tid[25]_1 (\gen_decoder[1].axisc_decoder_0_n_22 ),
        .\m_axis_tid[25]_2 (\gen_decoder[0].axisc_decoder_0_n_26 ),
        .\m_axis_tid[26]_0 (\gen_decoder[0].axisc_decoder_0_n_25 ),
        .\m_axis_tid[26]_1 (\gen_decoder[1].axisc_decoder_0_n_21 ),
        .\m_axis_tid[26]_2 (\gen_decoder[3].axisc_decoder_0_n_29 ),
        .\m_axis_tid[27]_0 (\gen_decoder[0].axisc_decoder_0_n_24 ),
        .\m_axis_tid[27]_1 (\gen_decoder[1].axisc_decoder_0_n_20 ),
        .\m_axis_tid[27]_2 (\gen_decoder[3].axisc_decoder_0_n_28 ),
        .\m_axis_tid[28]_0 (\gen_decoder[0].axisc_decoder_0_n_23 ),
        .\m_axis_tid[28]_1 (\gen_decoder[1].axisc_decoder_0_n_19 ),
        .\m_axis_tid[28]_2 (\gen_decoder[3].axisc_decoder_0_n_27 ),
        .\m_axis_tid[29]_0 (\gen_decoder[0].axisc_decoder_0_n_22 ),
        .\m_axis_tid[29]_1 (\gen_decoder[1].axisc_decoder_0_n_18 ),
        .\m_axis_tid[29]_2 (\gen_decoder[3].axisc_decoder_0_n_26 ),
        .\m_axis_tid[30]_0 (\gen_decoder[0].axisc_decoder_0_n_21 ),
        .\m_axis_tid[30]_1 (\gen_decoder[1].axisc_decoder_0_n_17 ),
        .\m_axis_tid[30]_2 (\gen_decoder[3].axisc_decoder_0_n_25 ),
        .\m_axis_tid[31]_0 (\gen_decoder[0].axisc_decoder_0_n_20 ),
        .\m_axis_tid[31]_1 (\gen_decoder[1].axisc_decoder_0_n_16 ),
        .\m_axis_tid[31]_2 (\gen_decoder[3].axisc_decoder_0_n_24 ),
        .m_axis_tid_24_sp_1(\gen_decoder[2].axisc_decoder_0_n_23 ),
        .m_axis_tid_25_sp_1(\gen_decoder[2].axisc_decoder_0_n_22 ),
        .m_axis_tid_26_sp_1(\gen_decoder[2].axisc_decoder_0_n_21 ),
        .m_axis_tid_27_sp_1(\gen_decoder[2].axisc_decoder_0_n_20 ),
        .m_axis_tid_28_sp_1(\gen_decoder[2].axisc_decoder_0_n_19 ),
        .m_axis_tid_29_sp_1(\gen_decoder[2].axisc_decoder_0_n_18 ),
        .m_axis_tid_30_sp_1(\gen_decoder[2].axisc_decoder_0_n_17 ),
        .m_axis_tid_31_sp_1(\gen_decoder[2].axisc_decoder_0_n_16 ),
        .m_axis_tlast(m_axis_tlast),
        .\m_axis_tlast[3]_0 (\gen_decoder[3].axisc_decoder_0_n_32 ),
        .\m_axis_tlast[3]_1 (\gen_decoder[1].axisc_decoder_0_n_24 ),
        .\m_axis_tlast[3]_2 (\gen_decoder[0].axisc_decoder_0_n_28 ),
        .m_axis_tlast_3_sp_1(\gen_decoder[2].axisc_decoder_0_n_24 ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tready_1_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_145 ),
        .m_axis_tready_2_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_146 ),
        .m_axis_tready_3_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_144 ),
        .m_axis_tuser(m_axis_tuser),
        .\m_axis_tuser[3]_0 (\gen_decoder[0].axisc_decoder_0_n_11 ),
        .\m_axis_tuser[3]_1 (\gen_decoder[1].axisc_decoder_0_n_7 ),
        .\m_axis_tuser[3]_2 (\gen_decoder[3].axisc_decoder_0_n_15 ),
        .m_axis_tuser_3_sp_1(\gen_decoder[2].axisc_decoder_0_n_7 ),
        .m_axis_tvalid(m_axis_tvalid[2:0]),
        .\m_axis_tvalid[0]_0 (\gen_decoder[3].axisc_decoder_0_n_13 ),
        .\m_axis_tvalid[0]_1 (\gen_decoder[2].axisc_decoder_0_n_4 ),
        .\m_axis_tvalid[1]_0 (\gen_transfer_mux[1].axisc_transfer_mux_0_n_6 ),
        .\m_axis_tvalid[1]_1 (\gen_decoder[0].axisc_decoder_0_n_5 ),
        .\m_axis_tvalid[2]_0 (\gen_decoder[0].axisc_decoder_0_n_4 ),
        .\m_axis_tvalid[3] (\gen_decoder[3].axisc_decoder_0_n_11 ),
        .\m_axis_tvalid[3]_0 (\gen_decoder[0].axisc_decoder_0_n_6 ),
        .\m_axis_tvalid[3]_1 (\gen_decoder[1].axisc_decoder_0_n_3 ),
        .\m_axis_tvalid[3]_2 (\gen_decoder[2].axisc_decoder_0_n_3 ),
        .m_axis_tvalid_0_sp_1(\gen_decoder[1].axisc_decoder_0_n_5 ),
        .m_axis_tvalid_1_sp_1(\gen_decoder[3].axisc_decoder_0_n_3 ),
        .m_axis_tvalid_2_sp_1(\gen_decoder[3].axisc_decoder_0_n_5 ));
  axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.aclk(aclk),
        .arb_busy_ns(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ),
        .arb_busy_r(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ),
        .arb_busy_r_reg(\gen_decoder[2].axisc_decoder_0_n_33 ),
        .arb_sel_r0(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ),
        .areset(areset),
        .\busy_r_reg[3] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_7 ),
        .\busy_r_reg[3]_0 (arb_gnt_i[3:0]),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 (\gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_37 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg (\gen_transfer_mux[0].axisc_transfer_mux_0_n_0 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tready(m_axis_tready[0]),
        .m_axis_tvalid(m_axis_tvalid[0]));
  axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0 \gen_transfer_mux[1].axisc_transfer_mux_0 
       (.aclk(aclk),
        .arb_busy_ns(\gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ),
        .arb_busy_r(\gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ),
        .arb_busy_r_reg(\gen_decoder[3].axisc_decoder_0_n_7 ),
        .arb_busy_r_reg_0(\gen_decoder[0].axisc_decoder_0_n_7 ),
        .\arb_gnt_r_reg[1] (\gen_decoder[0].axisc_decoder_0_n_37 ),
        .arb_sel_r0(\gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ),
        .areset(areset),
        .\busy_r_reg[0] (\gen_transfer_mux[1].axisc_transfer_mux_0_n_2 ),
        .\busy_r_reg[2] (\gen_transfer_mux[1].axisc_transfer_mux_0_n_6 ),
        .\busy_r_reg[2]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_143 ),
        .\busy_r_reg[3] ({\gen_tdest_router.busy_r_0 [3:2],\gen_tdest_router.busy_r_0 [0]}),
        .\busy_r_reg[3]_0 (arb_gnt_i[7:4]),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_145 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_23 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg (\gen_transfer_mux[1].axisc_transfer_mux_0_n_1 ),
        .m_axis_tvalid(m_axis_tvalid[1]));
  axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0_1 \gen_transfer_mux[2].axisc_transfer_mux_0 
       (.aclk(aclk),
        .arb_busy_ns(\gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ),
        .arb_busy_r(\gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ),
        .arb_busy_r_reg(\gen_decoder[0].axisc_decoder_0_n_8 ),
        .arb_busy_r_reg_0(\gen_decoder[3].axisc_decoder_0_n_4 ),
        .\arb_gnt_r_reg[1] (\gen_decoder[3].axisc_decoder_0_n_41 ),
        .arb_sel_r0(\gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0 ),
        .areset(areset),
        .\busy_r_reg[2] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_142 ),
        .\busy_r_reg[3] ({arb_gnt_i[11],arb_gnt_i[9:8]}),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_146 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_35 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg (\gen_transfer_mux[2].axisc_transfer_mux_0_n_1 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r_1 ),
        .m_axis_tvalid(m_axis_tvalid[2]));
  axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized1 \gen_transfer_mux[3].axisc_transfer_mux_0 
       (.aclk(aclk),
        .arb_busy_ns(\gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns ),
        .arb_busy_r(\gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r ),
        .arb_busy_r_reg(\gen_decoder[0].axisc_decoder_0_n_1 ),
        .areset(areset),
        .\busy_r_reg[0] (\gen_transfer_mux[3].axisc_transfer_mux_0_n_7 ),
        .\busy_r_reg[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7 ),
        .\busy_r_reg[3] (\gen_transfer_mux[3].axisc_transfer_mux_0_n_12 ),
        .\busy_r_reg[3]_0 (arb_gnt_i[15:12]),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg (\gen_transfer_mux[3].axisc_transfer_mux_0_n_0 ),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_144 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_6 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r (\gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r_2 ),
        .\gen_tdest_routing.busy_r_reg[3] (\gen_tdest_routing.busy_ns_5 ),
        .\gen_tdest_routing.busy_r_reg[3]_0 (\gen_tdest_routing.busy_ns_4 ),
        .\gen_tdest_routing.busy_r_reg[3]_1 (\gen_tdest_routing.busy_ns_3 ),
        .\gen_tdest_routing.busy_r_reg[3]_2 (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[3]_3 (\gen_decoder[3].axisc_decoder_0_n_10 ),
        .\gen_tdest_routing.busy_r_reg[3]_4 (\gen_decoder[2].axisc_decoder_0_n_2 ),
        .\gen_tdest_routing.busy_r_reg[3]_5 (\gen_decoder[1].axisc_decoder_0_n_2 ),
        .\gen_tdest_routing.busy_r_reg[3]_6 (\gen_decoder[0].axisc_decoder_0_n_2 ),
        .m_axis_tready(m_axis_tready[3]),
        .\m_axis_tready[3] (\gen_transfer_mux[3].axisc_transfer_mux_0_n_13 ),
        .m_axis_tvalid(m_axis_tvalid[3]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axis_switch_arbiter" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axis_switch_arbiter
   (areset,
    arb_busy_r,
    arb_busy_r_0,
    arb_busy_r_1,
    arb_busy_r_2,
    \gen_AB_reg_slice.payload_b_reg[3] ,
    areset_reg_0,
    \arb_gnt_r_reg[0] ,
    \arb_gnt_r_reg[3] ,
    areset_reg_1,
    m_axis_tvalid,
    arb_sel_i,
    areset_reg_2,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ,
    areset_reg_3,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    \arb_gnt_r_reg[2] ,
    \arb_gnt_r_reg[2]_0 ,
    m_axis_tready_3_sp_1,
    m_axis_tready_1_sp_1,
    m_axis_tready_2_sp_1,
    aclk,
    arb_busy_ns,
    arb_busy_ns_3,
    arb_busy_ns_4,
    arb_busy_ns_5,
    \arb_gnt_r_reg[2]_1 ,
    \arb_gnt_r_reg[2]_2 ,
    \arb_gnt_r_reg[2]_3 ,
    \arb_gnt_r_reg[2]_4 ,
    m_axis_tready,
    \arb_sel_r_reg[0] ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ,
    \arb_sel_r_reg[0]_0 ,
    \m_axis_tvalid[3] ,
    \m_axis_tvalid[3]_0 ,
    \m_axis_tvalid[3]_1 ,
    \m_axis_tvalid[3]_2 ,
    \gen_tdest_router.busy_r ,
    arb_sel_r0,
    \arb_gnt_r[3]_i_4__0 ,
    \arb_gnt_r[3]_i_4__0_0 ,
    \arb_gnt_r[3]_i_4__0_1 ,
    m_axis_tvalid_1_sp_1,
    \m_axis_tvalid[1]_0 ,
    \m_axis_tvalid[1]_1 ,
    \gen_tdest_router.busy_r_6 ,
    arb_sel_r0_7,
    \arb_gnt_r[3]_i_4__1 ,
    \arb_gnt_r[3]_i_4__1_0 ,
    \arb_gnt_r[3]_i_2__1 ,
    m_axis_tvalid_2_sp_1,
    \arb_gnt_r[3]_i_4__1_1 ,
    \m_axis_tvalid[2]_0 ,
    \gen_tdest_router.busy_r_8 ,
    arb_sel_r0_9,
    m_axis_tvalid_0_sp_1,
    \m_axis_tvalid[0]_0 ,
    \m_axis_tvalid[0]_1 ,
    \gen_tdest_router.busy_r_10 ,
    \arb_gnt_r[3]_i_3__2 ,
    \arb_gnt_r[3]_i_3__2_0 ,
    \arb_gnt_r[3]_i_3__2_1 ,
    m_axis_tdata_24_sp_1,
    \m_axis_tdata[24]_0 ,
    \m_axis_tdata[24]_1 ,
    \m_axis_tdata[24]_2 ,
    m_axis_tdata_25_sp_1,
    \m_axis_tdata[25]_0 ,
    \m_axis_tdata[25]_1 ,
    \m_axis_tdata[25]_2 ,
    m_axis_tdata_26_sp_1,
    \m_axis_tdata[26]_0 ,
    \m_axis_tdata[26]_1 ,
    \m_axis_tdata[26]_2 ,
    m_axis_tdata_27_sp_1,
    \m_axis_tdata[27]_0 ,
    \m_axis_tdata[27]_1 ,
    \m_axis_tdata[27]_2 ,
    m_axis_tdata_28_sp_1,
    \m_axis_tdata[28]_0 ,
    \m_axis_tdata[28]_1 ,
    \m_axis_tdata[28]_2 ,
    m_axis_tdata_29_sp_1,
    \m_axis_tdata[29]_0 ,
    \m_axis_tdata[29]_1 ,
    \m_axis_tdata[29]_2 ,
    m_axis_tdata_30_sp_1,
    \m_axis_tdata[30]_0 ,
    \m_axis_tdata[30]_1 ,
    \m_axis_tdata[30]_2 ,
    m_axis_tdata_31_sp_1,
    \m_axis_tdata[31]_0 ,
    \m_axis_tdata[31]_1 ,
    \m_axis_tdata[31]_2 ,
    m_axis_tlast_3_sp_1,
    \m_axis_tlast[3]_0 ,
    \m_axis_tlast[3]_1 ,
    \m_axis_tlast[3]_2 ,
    m_axis_tid_24_sp_1,
    \m_axis_tid[24]_0 ,
    \m_axis_tid[24]_1 ,
    \m_axis_tid[24]_2 ,
    m_axis_tid_25_sp_1,
    \m_axis_tid[25]_0 ,
    \m_axis_tid[25]_1 ,
    \m_axis_tid[25]_2 ,
    m_axis_tid_26_sp_1,
    \m_axis_tid[26]_0 ,
    \m_axis_tid[26]_1 ,
    \m_axis_tid[26]_2 ,
    m_axis_tid_27_sp_1,
    \m_axis_tid[27]_0 ,
    \m_axis_tid[27]_1 ,
    \m_axis_tid[27]_2 ,
    m_axis_tid_28_sp_1,
    \m_axis_tid[28]_0 ,
    \m_axis_tid[28]_1 ,
    \m_axis_tid[28]_2 ,
    m_axis_tid_29_sp_1,
    \m_axis_tid[29]_0 ,
    \m_axis_tid[29]_1 ,
    \m_axis_tid[29]_2 ,
    m_axis_tid_30_sp_1,
    \m_axis_tid[30]_0 ,
    \m_axis_tid[30]_1 ,
    \m_axis_tid[30]_2 ,
    m_axis_tid_31_sp_1,
    \m_axis_tid[31]_0 ,
    \m_axis_tid[31]_1 ,
    \m_axis_tid[31]_2 ,
    m_axis_tdest_24_sp_1,
    \m_axis_tdest[24]_0 ,
    \m_axis_tdest[24]_1 ,
    \m_axis_tdest[24]_2 ,
    m_axis_tdest_25_sp_1,
    \m_axis_tdest[25]_0 ,
    \m_axis_tdest[25]_1 ,
    \m_axis_tdest[25]_2 ,
    m_axis_tdest_26_sp_1,
    \m_axis_tdest[26]_0 ,
    \m_axis_tdest[26]_1 ,
    \m_axis_tdest[26]_2 ,
    m_axis_tdest_27_sp_1,
    \m_axis_tdest[27]_0 ,
    \m_axis_tdest[27]_1 ,
    \m_axis_tdest[27]_2 ,
    m_axis_tdest_28_sp_1,
    \m_axis_tdest[28]_0 ,
    \m_axis_tdest[28]_1 ,
    \m_axis_tdest[28]_2 ,
    m_axis_tdest_29_sp_1,
    \m_axis_tdest[29]_0 ,
    \m_axis_tdest[29]_1 ,
    \m_axis_tdest[29]_2 ,
    m_axis_tdest_30_sp_1,
    \m_axis_tdest[30]_0 ,
    \m_axis_tdest[30]_1 ,
    \m_axis_tdest[30]_2 ,
    m_axis_tdest_31_sp_1,
    \m_axis_tdest[31]_0 ,
    \m_axis_tdest[31]_1 ,
    \m_axis_tdest[31]_2 ,
    m_axis_tuser_3_sp_1,
    \m_axis_tuser[3]_0 ,
    \m_axis_tuser[3]_1 ,
    \m_axis_tuser[3]_2 ,
    aresetn,
    \arb_gnt_r_reg[2]_5 ,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 );
  output areset;
  output arb_busy_r;
  output arb_busy_r_0;
  output arb_busy_r_1;
  output arb_busy_r_2;
  output \gen_AB_reg_slice.payload_b_reg[3] ;
  output areset_reg_0;
  output \arb_gnt_r_reg[0] ;
  output [14:0]\arb_gnt_r_reg[3] ;
  output areset_reg_1;
  output [2:0]m_axis_tvalid;
  output [7:0]arb_sel_i;
  output areset_reg_2;
  output \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  output areset_reg_3;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tlast;
  output [31:0]m_axis_tid;
  output [31:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  output \arb_gnt_r_reg[2] ;
  output \arb_gnt_r_reg[2]_0 ;
  output m_axis_tready_3_sp_1;
  output m_axis_tready_1_sp_1;
  output m_axis_tready_2_sp_1;
  input aclk;
  input arb_busy_ns;
  input arb_busy_ns_3;
  input arb_busy_ns_4;
  input arb_busy_ns_5;
  input \arb_gnt_r_reg[2]_1 ;
  input \arb_gnt_r_reg[2]_2 ;
  input \arb_gnt_r_reg[2]_3 ;
  input \arb_gnt_r_reg[2]_4 ;
  input [3:0]m_axis_tready;
  input \arb_sel_r_reg[0] ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  input \arb_sel_r_reg[0]_0 ;
  input \m_axis_tvalid[3] ;
  input \m_axis_tvalid[3]_0 ;
  input \m_axis_tvalid[3]_1 ;
  input \m_axis_tvalid[3]_2 ;
  input [3:0]\gen_tdest_router.busy_r ;
  input arb_sel_r0;
  input \arb_gnt_r[3]_i_4__0 ;
  input \arb_gnt_r[3]_i_4__0_0 ;
  input \arb_gnt_r[3]_i_4__0_1 ;
  input m_axis_tvalid_1_sp_1;
  input \m_axis_tvalid[1]_0 ;
  input \m_axis_tvalid[1]_1 ;
  input [2:0]\gen_tdest_router.busy_r_6 ;
  input arb_sel_r0_7;
  input \arb_gnt_r[3]_i_4__1 ;
  input \arb_gnt_r[3]_i_4__1_0 ;
  input \arb_gnt_r[3]_i_2__1 ;
  input m_axis_tvalid_2_sp_1;
  input \arb_gnt_r[3]_i_4__1_1 ;
  input \m_axis_tvalid[2]_0 ;
  input [3:0]\gen_tdest_router.busy_r_8 ;
  input arb_sel_r0_9;
  input m_axis_tvalid_0_sp_1;
  input \m_axis_tvalid[0]_0 ;
  input \m_axis_tvalid[0]_1 ;
  input [3:0]\gen_tdest_router.busy_r_10 ;
  input \arb_gnt_r[3]_i_3__2 ;
  input \arb_gnt_r[3]_i_3__2_0 ;
  input \arb_gnt_r[3]_i_3__2_1 ;
  input m_axis_tdata_24_sp_1;
  input \m_axis_tdata[24]_0 ;
  input \m_axis_tdata[24]_1 ;
  input \m_axis_tdata[24]_2 ;
  input m_axis_tdata_25_sp_1;
  input \m_axis_tdata[25]_0 ;
  input \m_axis_tdata[25]_1 ;
  input \m_axis_tdata[25]_2 ;
  input m_axis_tdata_26_sp_1;
  input \m_axis_tdata[26]_0 ;
  input \m_axis_tdata[26]_1 ;
  input \m_axis_tdata[26]_2 ;
  input m_axis_tdata_27_sp_1;
  input \m_axis_tdata[27]_0 ;
  input \m_axis_tdata[27]_1 ;
  input \m_axis_tdata[27]_2 ;
  input m_axis_tdata_28_sp_1;
  input \m_axis_tdata[28]_0 ;
  input \m_axis_tdata[28]_1 ;
  input \m_axis_tdata[28]_2 ;
  input m_axis_tdata_29_sp_1;
  input \m_axis_tdata[29]_0 ;
  input \m_axis_tdata[29]_1 ;
  input \m_axis_tdata[29]_2 ;
  input m_axis_tdata_30_sp_1;
  input \m_axis_tdata[30]_0 ;
  input \m_axis_tdata[30]_1 ;
  input \m_axis_tdata[30]_2 ;
  input m_axis_tdata_31_sp_1;
  input \m_axis_tdata[31]_0 ;
  input \m_axis_tdata[31]_1 ;
  input \m_axis_tdata[31]_2 ;
  input m_axis_tlast_3_sp_1;
  input \m_axis_tlast[3]_0 ;
  input \m_axis_tlast[3]_1 ;
  input \m_axis_tlast[3]_2 ;
  input m_axis_tid_24_sp_1;
  input \m_axis_tid[24]_0 ;
  input \m_axis_tid[24]_1 ;
  input \m_axis_tid[24]_2 ;
  input m_axis_tid_25_sp_1;
  input \m_axis_tid[25]_0 ;
  input \m_axis_tid[25]_1 ;
  input \m_axis_tid[25]_2 ;
  input m_axis_tid_26_sp_1;
  input \m_axis_tid[26]_0 ;
  input \m_axis_tid[26]_1 ;
  input \m_axis_tid[26]_2 ;
  input m_axis_tid_27_sp_1;
  input \m_axis_tid[27]_0 ;
  input \m_axis_tid[27]_1 ;
  input \m_axis_tid[27]_2 ;
  input m_axis_tid_28_sp_1;
  input \m_axis_tid[28]_0 ;
  input \m_axis_tid[28]_1 ;
  input \m_axis_tid[28]_2 ;
  input m_axis_tid_29_sp_1;
  input \m_axis_tid[29]_0 ;
  input \m_axis_tid[29]_1 ;
  input \m_axis_tid[29]_2 ;
  input m_axis_tid_30_sp_1;
  input \m_axis_tid[30]_0 ;
  input \m_axis_tid[30]_1 ;
  input \m_axis_tid[30]_2 ;
  input m_axis_tid_31_sp_1;
  input \m_axis_tid[31]_0 ;
  input \m_axis_tid[31]_1 ;
  input \m_axis_tid[31]_2 ;
  input m_axis_tdest_24_sp_1;
  input \m_axis_tdest[24]_0 ;
  input \m_axis_tdest[24]_1 ;
  input \m_axis_tdest[24]_2 ;
  input m_axis_tdest_25_sp_1;
  input \m_axis_tdest[25]_0 ;
  input \m_axis_tdest[25]_1 ;
  input \m_axis_tdest[25]_2 ;
  input m_axis_tdest_26_sp_1;
  input \m_axis_tdest[26]_0 ;
  input \m_axis_tdest[26]_1 ;
  input \m_axis_tdest[26]_2 ;
  input m_axis_tdest_27_sp_1;
  input \m_axis_tdest[27]_0 ;
  input \m_axis_tdest[27]_1 ;
  input \m_axis_tdest[27]_2 ;
  input m_axis_tdest_28_sp_1;
  input \m_axis_tdest[28]_0 ;
  input \m_axis_tdest[28]_1 ;
  input \m_axis_tdest[28]_2 ;
  input m_axis_tdest_29_sp_1;
  input \m_axis_tdest[29]_0 ;
  input \m_axis_tdest[29]_1 ;
  input \m_axis_tdest[29]_2 ;
  input m_axis_tdest_30_sp_1;
  input \m_axis_tdest[30]_0 ;
  input \m_axis_tdest[30]_1 ;
  input \m_axis_tdest[30]_2 ;
  input m_axis_tdest_31_sp_1;
  input \m_axis_tdest[31]_0 ;
  input \m_axis_tdest[31]_1 ;
  input \m_axis_tdest[31]_2 ;
  input m_axis_tuser_3_sp_1;
  input \m_axis_tuser[3]_0 ;
  input \m_axis_tuser[3]_1 ;
  input \m_axis_tuser[3]_2 ;
  input aresetn;
  input \arb_gnt_r_reg[2]_5 ;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_ns_3;
  wire arb_busy_ns_4;
  wire arb_busy_ns_5;
  wire arb_busy_r;
  wire arb_busy_r_0;
  wire arb_busy_r_1;
  wire arb_busy_r_2;
  wire \arb_gnt_r[3]_i_2__1 ;
  wire \arb_gnt_r[3]_i_3__2 ;
  wire \arb_gnt_r[3]_i_3__2_0 ;
  wire \arb_gnt_r[3]_i_3__2_1 ;
  wire \arb_gnt_r[3]_i_4__0 ;
  wire \arb_gnt_r[3]_i_4__0_0 ;
  wire \arb_gnt_r[3]_i_4__0_1 ;
  wire \arb_gnt_r[3]_i_4__1 ;
  wire \arb_gnt_r[3]_i_4__1_0 ;
  wire \arb_gnt_r[3]_i_4__1_1 ;
  wire \arb_gnt_r_reg[0] ;
  wire \arb_gnt_r_reg[2] ;
  wire \arb_gnt_r_reg[2]_0 ;
  wire \arb_gnt_r_reg[2]_1 ;
  wire \arb_gnt_r_reg[2]_2 ;
  wire \arb_gnt_r_reg[2]_3 ;
  wire \arb_gnt_r_reg[2]_4 ;
  wire \arb_gnt_r_reg[2]_5 ;
  wire [14:0]\arb_gnt_r_reg[3] ;
  wire [7:0]arb_sel_i;
  wire arb_sel_r0;
  wire arb_sel_r0_7;
  wire arb_sel_r0_9;
  wire \arb_sel_r_reg[0] ;
  wire \arb_sel_r_reg[0]_0 ;
  wire areset;
  wire areset_i_1_n_0;
  wire areset_reg_0;
  wire areset_reg_1;
  wire areset_reg_2;
  wire areset_reg_3;
  wire aresetn;
  wire \gen_AB_reg_slice.payload_b_reg[3] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [3:0]\gen_tdest_router.busy_r_10 ;
  wire [2:0]\gen_tdest_router.busy_r_6 ;
  wire [3:0]\gen_tdest_router.busy_r_8 ;
  wire [31:0]m_axis_tdata;
  wire \m_axis_tdata[24]_0 ;
  wire \m_axis_tdata[24]_1 ;
  wire \m_axis_tdata[24]_2 ;
  wire \m_axis_tdata[25]_0 ;
  wire \m_axis_tdata[25]_1 ;
  wire \m_axis_tdata[25]_2 ;
  wire \m_axis_tdata[26]_0 ;
  wire \m_axis_tdata[26]_1 ;
  wire \m_axis_tdata[26]_2 ;
  wire \m_axis_tdata[27]_0 ;
  wire \m_axis_tdata[27]_1 ;
  wire \m_axis_tdata[27]_2 ;
  wire \m_axis_tdata[28]_0 ;
  wire \m_axis_tdata[28]_1 ;
  wire \m_axis_tdata[28]_2 ;
  wire \m_axis_tdata[29]_0 ;
  wire \m_axis_tdata[29]_1 ;
  wire \m_axis_tdata[29]_2 ;
  wire \m_axis_tdata[30]_0 ;
  wire \m_axis_tdata[30]_1 ;
  wire \m_axis_tdata[30]_2 ;
  wire \m_axis_tdata[31]_0 ;
  wire \m_axis_tdata[31]_1 ;
  wire \m_axis_tdata[31]_2 ;
  wire m_axis_tdata_24_sn_1;
  wire m_axis_tdata_25_sn_1;
  wire m_axis_tdata_26_sn_1;
  wire m_axis_tdata_27_sn_1;
  wire m_axis_tdata_28_sn_1;
  wire m_axis_tdata_29_sn_1;
  wire m_axis_tdata_30_sn_1;
  wire m_axis_tdata_31_sn_1;
  wire [31:0]m_axis_tdest;
  wire \m_axis_tdest[24]_0 ;
  wire \m_axis_tdest[24]_1 ;
  wire \m_axis_tdest[24]_2 ;
  wire \m_axis_tdest[25]_0 ;
  wire \m_axis_tdest[25]_1 ;
  wire \m_axis_tdest[25]_2 ;
  wire \m_axis_tdest[26]_0 ;
  wire \m_axis_tdest[26]_1 ;
  wire \m_axis_tdest[26]_2 ;
  wire \m_axis_tdest[27]_0 ;
  wire \m_axis_tdest[27]_1 ;
  wire \m_axis_tdest[27]_2 ;
  wire \m_axis_tdest[28]_0 ;
  wire \m_axis_tdest[28]_1 ;
  wire \m_axis_tdest[28]_2 ;
  wire \m_axis_tdest[29]_0 ;
  wire \m_axis_tdest[29]_1 ;
  wire \m_axis_tdest[29]_2 ;
  wire \m_axis_tdest[30]_0 ;
  wire \m_axis_tdest[30]_1 ;
  wire \m_axis_tdest[30]_2 ;
  wire \m_axis_tdest[31]_0 ;
  wire \m_axis_tdest[31]_1 ;
  wire \m_axis_tdest[31]_2 ;
  wire m_axis_tdest_24_sn_1;
  wire m_axis_tdest_25_sn_1;
  wire m_axis_tdest_26_sn_1;
  wire m_axis_tdest_27_sn_1;
  wire m_axis_tdest_28_sn_1;
  wire m_axis_tdest_29_sn_1;
  wire m_axis_tdest_30_sn_1;
  wire m_axis_tdest_31_sn_1;
  wire [31:0]m_axis_tid;
  wire \m_axis_tid[24]_0 ;
  wire \m_axis_tid[24]_1 ;
  wire \m_axis_tid[24]_2 ;
  wire \m_axis_tid[25]_0 ;
  wire \m_axis_tid[25]_1 ;
  wire \m_axis_tid[25]_2 ;
  wire \m_axis_tid[26]_0 ;
  wire \m_axis_tid[26]_1 ;
  wire \m_axis_tid[26]_2 ;
  wire \m_axis_tid[27]_0 ;
  wire \m_axis_tid[27]_1 ;
  wire \m_axis_tid[27]_2 ;
  wire \m_axis_tid[28]_0 ;
  wire \m_axis_tid[28]_1 ;
  wire \m_axis_tid[28]_2 ;
  wire \m_axis_tid[29]_0 ;
  wire \m_axis_tid[29]_1 ;
  wire \m_axis_tid[29]_2 ;
  wire \m_axis_tid[30]_0 ;
  wire \m_axis_tid[30]_1 ;
  wire \m_axis_tid[30]_2 ;
  wire \m_axis_tid[31]_0 ;
  wire \m_axis_tid[31]_1 ;
  wire \m_axis_tid[31]_2 ;
  wire m_axis_tid_24_sn_1;
  wire m_axis_tid_25_sn_1;
  wire m_axis_tid_26_sn_1;
  wire m_axis_tid_27_sn_1;
  wire m_axis_tid_28_sn_1;
  wire m_axis_tid_29_sn_1;
  wire m_axis_tid_30_sn_1;
  wire m_axis_tid_31_sn_1;
  wire [3:0]m_axis_tlast;
  wire \m_axis_tlast[3]_0 ;
  wire \m_axis_tlast[3]_1 ;
  wire \m_axis_tlast[3]_2 ;
  wire m_axis_tlast_3_sn_1;
  wire [3:0]m_axis_tready;
  wire m_axis_tready_1_sn_1;
  wire m_axis_tready_2_sn_1;
  wire m_axis_tready_3_sn_1;
  wire [3:0]m_axis_tuser;
  wire \m_axis_tuser[3]_0 ;
  wire \m_axis_tuser[3]_1 ;
  wire \m_axis_tuser[3]_2 ;
  wire m_axis_tuser_3_sn_1;
  wire [2:0]m_axis_tvalid;
  wire \m_axis_tvalid[0]_0 ;
  wire \m_axis_tvalid[0]_1 ;
  wire \m_axis_tvalid[1]_0 ;
  wire \m_axis_tvalid[1]_1 ;
  wire \m_axis_tvalid[2]_0 ;
  wire \m_axis_tvalid[3] ;
  wire \m_axis_tvalid[3]_0 ;
  wire \m_axis_tvalid[3]_1 ;
  wire \m_axis_tvalid[3]_2 ;
  wire m_axis_tvalid_0_sn_1;
  wire m_axis_tvalid_1_sn_1;
  wire m_axis_tvalid_2_sn_1;

  assign m_axis_tdata_24_sn_1 = m_axis_tdata_24_sp_1;
  assign m_axis_tdata_25_sn_1 = m_axis_tdata_25_sp_1;
  assign m_axis_tdata_26_sn_1 = m_axis_tdata_26_sp_1;
  assign m_axis_tdata_27_sn_1 = m_axis_tdata_27_sp_1;
  assign m_axis_tdata_28_sn_1 = m_axis_tdata_28_sp_1;
  assign m_axis_tdata_29_sn_1 = m_axis_tdata_29_sp_1;
  assign m_axis_tdata_30_sn_1 = m_axis_tdata_30_sp_1;
  assign m_axis_tdata_31_sn_1 = m_axis_tdata_31_sp_1;
  assign m_axis_tdest_24_sn_1 = m_axis_tdest_24_sp_1;
  assign m_axis_tdest_25_sn_1 = m_axis_tdest_25_sp_1;
  assign m_axis_tdest_26_sn_1 = m_axis_tdest_26_sp_1;
  assign m_axis_tdest_27_sn_1 = m_axis_tdest_27_sp_1;
  assign m_axis_tdest_28_sn_1 = m_axis_tdest_28_sp_1;
  assign m_axis_tdest_29_sn_1 = m_axis_tdest_29_sp_1;
  assign m_axis_tdest_30_sn_1 = m_axis_tdest_30_sp_1;
  assign m_axis_tdest_31_sn_1 = m_axis_tdest_31_sp_1;
  assign m_axis_tid_24_sn_1 = m_axis_tid_24_sp_1;
  assign m_axis_tid_25_sn_1 = m_axis_tid_25_sp_1;
  assign m_axis_tid_26_sn_1 = m_axis_tid_26_sp_1;
  assign m_axis_tid_27_sn_1 = m_axis_tid_27_sp_1;
  assign m_axis_tid_28_sn_1 = m_axis_tid_28_sp_1;
  assign m_axis_tid_29_sn_1 = m_axis_tid_29_sp_1;
  assign m_axis_tid_30_sn_1 = m_axis_tid_30_sp_1;
  assign m_axis_tid_31_sn_1 = m_axis_tid_31_sp_1;
  assign m_axis_tlast_3_sn_1 = m_axis_tlast_3_sp_1;
  assign m_axis_tready_1_sp_1 = m_axis_tready_1_sn_1;
  assign m_axis_tready_2_sp_1 = m_axis_tready_2_sn_1;
  assign m_axis_tready_3_sp_1 = m_axis_tready_3_sn_1;
  assign m_axis_tuser_3_sn_1 = m_axis_tuser_3_sp_1;
  assign m_axis_tvalid_0_sn_1 = m_axis_tvalid_0_sp_1;
  assign m_axis_tvalid_1_sn_1 = m_axis_tvalid_1_sp_1;
  assign m_axis_tvalid_2_sn_1 = m_axis_tvalid_2_sp_1;
  LUT1 #(
    .INIT(2'h1)) 
    areset_i_1
       (.I0(aresetn),
        .O(areset_i_1_n_0));
  FDRE areset_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_i_1_n_0),
        .Q(areset),
        .R(1'b0));
  axis_switch_swifsaxis_switch_v1_1_29_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0 
       (.SR(areset),
        .aclk(aclk),
        .arb_busy_ns(arb_busy_ns),
        .arb_busy_r(arb_busy_r),
        .\arb_gnt_r[3]_i_3__2_0 (\arb_gnt_r[3]_i_3__2 ),
        .\arb_gnt_r[3]_i_3__2_1 (\arb_gnt_r[3]_i_3__2_0 ),
        .\arb_gnt_r[3]_i_3__2_2 (\arb_gnt_r[3]_i_3__2_1 ),
        .\arb_gnt_r_reg[3]_0 (\arb_gnt_r_reg[3] [3:0]),
        .arb_sel_r0_9(arb_sel_r0_9),
        .\arb_sel_r_reg[0]_0 (arb_sel_i[0]),
        .\arb_sel_r_reg[1]_0 (arb_sel_i[1]),
        .areset_reg(areset_reg_3),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ),
        .\gen_tdest_router.busy_r_10 (\gen_tdest_router.busy_r_10 ),
        .m_axis_tdata(m_axis_tdata[7:0]),
        .\m_axis_tdata[0]_0 (\m_axis_tdata[24]_0 ),
        .\m_axis_tdata[0]_1 (\m_axis_tdata[24]_1 ),
        .\m_axis_tdata[0]_2 (\m_axis_tdata[24]_2 ),
        .\m_axis_tdata[1]_0 (\m_axis_tdata[25]_0 ),
        .\m_axis_tdata[1]_1 (\m_axis_tdata[25]_1 ),
        .\m_axis_tdata[1]_2 (\m_axis_tdata[25]_2 ),
        .\m_axis_tdata[2]_0 (\m_axis_tdata[26]_0 ),
        .\m_axis_tdata[2]_1 (\m_axis_tdata[26]_1 ),
        .\m_axis_tdata[2]_2 (\m_axis_tdata[26]_2 ),
        .\m_axis_tdata[3]_0 (\m_axis_tdata[27]_0 ),
        .\m_axis_tdata[3]_1 (\m_axis_tdata[27]_1 ),
        .\m_axis_tdata[3]_2 (\m_axis_tdata[27]_2 ),
        .\m_axis_tdata[4]_0 (\m_axis_tdata[28]_0 ),
        .\m_axis_tdata[4]_1 (\m_axis_tdata[28]_1 ),
        .\m_axis_tdata[4]_2 (\m_axis_tdata[28]_2 ),
        .\m_axis_tdata[5]_0 (\m_axis_tdata[29]_0 ),
        .\m_axis_tdata[5]_1 (\m_axis_tdata[29]_1 ),
        .\m_axis_tdata[5]_2 (\m_axis_tdata[29]_2 ),
        .\m_axis_tdata[6]_0 (\m_axis_tdata[30]_0 ),
        .\m_axis_tdata[6]_1 (\m_axis_tdata[30]_1 ),
        .\m_axis_tdata[6]_2 (\m_axis_tdata[30]_2 ),
        .\m_axis_tdata[7]_0 (\m_axis_tdata[31]_0 ),
        .\m_axis_tdata[7]_1 (\m_axis_tdata[31]_1 ),
        .\m_axis_tdata[7]_2 (\m_axis_tdata[31]_2 ),
        .m_axis_tdata_0_sp_1(m_axis_tdata_24_sn_1),
        .m_axis_tdata_1_sp_1(m_axis_tdata_25_sn_1),
        .m_axis_tdata_2_sp_1(m_axis_tdata_26_sn_1),
        .m_axis_tdata_3_sp_1(m_axis_tdata_27_sn_1),
        .m_axis_tdata_4_sp_1(m_axis_tdata_28_sn_1),
        .m_axis_tdata_5_sp_1(m_axis_tdata_29_sn_1),
        .m_axis_tdata_6_sp_1(m_axis_tdata_30_sn_1),
        .m_axis_tdata_7_sp_1(m_axis_tdata_31_sn_1),
        .m_axis_tdest(m_axis_tdest[7:0]),
        .\m_axis_tdest[0]_0 (\m_axis_tdest[24]_0 ),
        .\m_axis_tdest[0]_1 (\m_axis_tdest[24]_1 ),
        .\m_axis_tdest[0]_2 (\m_axis_tdest[24]_2 ),
        .\m_axis_tdest[1]_0 (\m_axis_tdest[25]_0 ),
        .\m_axis_tdest[1]_1 (\m_axis_tdest[25]_1 ),
        .\m_axis_tdest[1]_2 (\m_axis_tdest[25]_2 ),
        .\m_axis_tdest[2]_0 (\m_axis_tdest[26]_0 ),
        .\m_axis_tdest[2]_1 (\m_axis_tdest[26]_1 ),
        .\m_axis_tdest[2]_2 (\m_axis_tdest[26]_2 ),
        .\m_axis_tdest[3]_0 (\m_axis_tdest[27]_0 ),
        .\m_axis_tdest[3]_1 (\m_axis_tdest[27]_1 ),
        .\m_axis_tdest[3]_2 (\m_axis_tdest[27]_2 ),
        .\m_axis_tdest[4]_0 (\m_axis_tdest[28]_0 ),
        .\m_axis_tdest[4]_1 (\m_axis_tdest[28]_1 ),
        .\m_axis_tdest[4]_2 (\m_axis_tdest[28]_2 ),
        .\m_axis_tdest[5]_0 (\m_axis_tdest[29]_0 ),
        .\m_axis_tdest[5]_1 (\m_axis_tdest[29]_1 ),
        .\m_axis_tdest[5]_2 (\m_axis_tdest[29]_2 ),
        .\m_axis_tdest[6]_0 (\m_axis_tdest[30]_0 ),
        .\m_axis_tdest[6]_1 (\m_axis_tdest[30]_1 ),
        .\m_axis_tdest[6]_2 (\m_axis_tdest[30]_2 ),
        .\m_axis_tdest[7]_0 (\m_axis_tdest[31]_0 ),
        .\m_axis_tdest[7]_1 (\m_axis_tdest[31]_1 ),
        .\m_axis_tdest[7]_2 (\m_axis_tdest[31]_2 ),
        .m_axis_tdest_0_sp_1(m_axis_tdest_24_sn_1),
        .m_axis_tdest_1_sp_1(m_axis_tdest_25_sn_1),
        .m_axis_tdest_2_sp_1(m_axis_tdest_26_sn_1),
        .m_axis_tdest_3_sp_1(m_axis_tdest_27_sn_1),
        .m_axis_tdest_4_sp_1(m_axis_tdest_28_sn_1),
        .m_axis_tdest_5_sp_1(m_axis_tdest_29_sn_1),
        .m_axis_tdest_6_sp_1(m_axis_tdest_30_sn_1),
        .m_axis_tdest_7_sp_1(m_axis_tdest_31_sn_1),
        .m_axis_tid(m_axis_tid[7:0]),
        .\m_axis_tid[0]_0 (\m_axis_tid[24]_0 ),
        .\m_axis_tid[0]_1 (\m_axis_tid[24]_1 ),
        .\m_axis_tid[0]_2 (\m_axis_tid[24]_2 ),
        .\m_axis_tid[1]_0 (\m_axis_tid[25]_0 ),
        .\m_axis_tid[1]_1 (\m_axis_tid[25]_1 ),
        .\m_axis_tid[1]_2 (\m_axis_tid[25]_2 ),
        .\m_axis_tid[2]_0 (\m_axis_tid[26]_0 ),
        .\m_axis_tid[2]_1 (\m_axis_tid[26]_1 ),
        .\m_axis_tid[2]_2 (\m_axis_tid[26]_2 ),
        .\m_axis_tid[3]_0 (\m_axis_tid[27]_0 ),
        .\m_axis_tid[3]_1 (\m_axis_tid[27]_1 ),
        .\m_axis_tid[3]_2 (\m_axis_tid[27]_2 ),
        .\m_axis_tid[4]_0 (\m_axis_tid[28]_0 ),
        .\m_axis_tid[4]_1 (\m_axis_tid[28]_1 ),
        .\m_axis_tid[4]_2 (\m_axis_tid[28]_2 ),
        .\m_axis_tid[5]_0 (\m_axis_tid[29]_0 ),
        .\m_axis_tid[5]_1 (\m_axis_tid[29]_1 ),
        .\m_axis_tid[5]_2 (\m_axis_tid[29]_2 ),
        .\m_axis_tid[6]_0 (\m_axis_tid[30]_0 ),
        .\m_axis_tid[6]_1 (\m_axis_tid[30]_1 ),
        .\m_axis_tid[6]_2 (\m_axis_tid[30]_2 ),
        .\m_axis_tid[7]_0 (\m_axis_tid[31]_0 ),
        .\m_axis_tid[7]_1 (\m_axis_tid[31]_1 ),
        .\m_axis_tid[7]_2 (\m_axis_tid[31]_2 ),
        .m_axis_tid_0_sp_1(m_axis_tid_24_sn_1),
        .m_axis_tid_1_sp_1(m_axis_tid_25_sn_1),
        .m_axis_tid_2_sp_1(m_axis_tid_26_sn_1),
        .m_axis_tid_3_sp_1(m_axis_tid_27_sn_1),
        .m_axis_tid_4_sp_1(m_axis_tid_28_sn_1),
        .m_axis_tid_5_sp_1(m_axis_tid_29_sn_1),
        .m_axis_tid_6_sp_1(m_axis_tid_30_sn_1),
        .m_axis_tid_7_sp_1(m_axis_tid_31_sn_1),
        .m_axis_tlast(m_axis_tlast[0]),
        .\m_axis_tlast[0]_0 (\m_axis_tlast[3]_0 ),
        .\m_axis_tlast[0]_1 (\m_axis_tlast[3]_1 ),
        .\m_axis_tlast[0]_2 (\m_axis_tlast[3]_2 ),
        .m_axis_tlast_0_sp_1(m_axis_tlast_3_sn_1),
        .m_axis_tready(m_axis_tready[0]),
        .m_axis_tuser(m_axis_tuser[0]),
        .\m_axis_tuser[0]_0 (\m_axis_tuser[3]_0 ),
        .\m_axis_tuser[0]_1 (\m_axis_tuser[3]_1 ),
        .\m_axis_tuser[0]_2 (\m_axis_tuser[3]_2 ),
        .m_axis_tuser_0_sp_1(m_axis_tuser_3_sn_1),
        .m_axis_tvalid(m_axis_tvalid[0]),
        .\m_axis_tvalid[0]_0 (\m_axis_tvalid[0]_0 ),
        .\m_axis_tvalid[0]_1 (\m_axis_tvalid[0]_1 ),
        .m_axis_tvalid_0_sp_1(m_axis_tvalid_0_sn_1));
  axis_switch_swifsaxis_switch_v1_1_29_arb_rr_5 \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0 
       (.SR(areset),
        .aclk(aclk),
        .arb_busy_ns_3(arb_busy_ns_3),
        .arb_busy_r_0(arb_busy_r_0),
        .\arb_gnt_r[3]_i_4__0_0 (\arb_gnt_r[3]_i_4__0 ),
        .\arb_gnt_r[3]_i_4__0_1 (\arb_gnt_r[3]_i_4__0_0 ),
        .\arb_gnt_r[3]_i_4__0_2 (\arb_gnt_r[3]_i_4__0_1 ),
        .\arb_gnt_r_reg[2]_0 (\arb_gnt_r_reg[3] [6:4]),
        .\arb_gnt_r_reg[2]_1 (\arb_gnt_r_reg[2]_0 ),
        .\arb_gnt_r_reg[3]_0 (\arb_gnt_r_reg[3] [7]),
        .arb_sel_r0(arb_sel_r0),
        .\arb_sel_r_reg[0]_0 (arb_sel_i[2]),
        .\arb_sel_r_reg[1]_0 (arb_sel_i[3]),
        .areset_reg(areset_reg_1),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .\gen_tdest_router.busy_r_6 (\gen_tdest_router.busy_r_6 ),
        .m_axis_tdata(m_axis_tdata[15:8]),
        .\m_axis_tdata[10] (m_axis_tdata_26_sn_1),
        .\m_axis_tdata[10]_0 (\m_axis_tdata[26]_2 ),
        .\m_axis_tdata[10]_1 (\m_axis_tdata[26]_1 ),
        .\m_axis_tdata[10]_2 (\m_axis_tdata[26]_0 ),
        .\m_axis_tdata[11] (m_axis_tdata_27_sn_1),
        .\m_axis_tdata[11]_0 (\m_axis_tdata[27]_2 ),
        .\m_axis_tdata[11]_1 (\m_axis_tdata[27]_1 ),
        .\m_axis_tdata[11]_2 (\m_axis_tdata[27]_0 ),
        .\m_axis_tdata[12] (m_axis_tdata_28_sn_1),
        .\m_axis_tdata[12]_0 (\m_axis_tdata[28]_2 ),
        .\m_axis_tdata[12]_1 (\m_axis_tdata[28]_1 ),
        .\m_axis_tdata[12]_2 (\m_axis_tdata[28]_0 ),
        .\m_axis_tdata[13] (m_axis_tdata_29_sn_1),
        .\m_axis_tdata[13]_0 (\m_axis_tdata[29]_2 ),
        .\m_axis_tdata[13]_1 (\m_axis_tdata[29]_1 ),
        .\m_axis_tdata[13]_2 (\m_axis_tdata[29]_0 ),
        .\m_axis_tdata[14] (m_axis_tdata_30_sn_1),
        .\m_axis_tdata[14]_0 (\m_axis_tdata[30]_2 ),
        .\m_axis_tdata[14]_1 (\m_axis_tdata[30]_1 ),
        .\m_axis_tdata[14]_2 (\m_axis_tdata[30]_0 ),
        .\m_axis_tdata[15] (m_axis_tdata_31_sn_1),
        .\m_axis_tdata[15]_0 (\m_axis_tdata[31]_2 ),
        .\m_axis_tdata[15]_1 (\m_axis_tdata[31]_1 ),
        .\m_axis_tdata[15]_2 (\m_axis_tdata[31]_0 ),
        .\m_axis_tdata[8] (m_axis_tdata_24_sn_1),
        .\m_axis_tdata[8]_0 (\m_axis_tdata[24]_0 ),
        .\m_axis_tdata[8]_1 (\m_axis_tdata[24]_1 ),
        .\m_axis_tdata[8]_2 (\m_axis_tdata[24]_2 ),
        .\m_axis_tdata[9] (m_axis_tdata_25_sn_1),
        .\m_axis_tdata[9]_0 (\m_axis_tdata[25]_0 ),
        .\m_axis_tdata[9]_1 (\m_axis_tdata[25]_1 ),
        .\m_axis_tdata[9]_2 (\m_axis_tdata[25]_2 ),
        .m_axis_tdest(m_axis_tdest[15:8]),
        .\m_axis_tdest[10] (m_axis_tdest_26_sn_1),
        .\m_axis_tdest[10]_0 (\m_axis_tdest[26]_2 ),
        .\m_axis_tdest[10]_1 (\m_axis_tdest[26]_1 ),
        .\m_axis_tdest[10]_2 (\m_axis_tdest[26]_0 ),
        .\m_axis_tdest[11] (m_axis_tdest_27_sn_1),
        .\m_axis_tdest[11]_0 (\m_axis_tdest[27]_2 ),
        .\m_axis_tdest[11]_1 (\m_axis_tdest[27]_1 ),
        .\m_axis_tdest[11]_2 (\m_axis_tdest[27]_0 ),
        .\m_axis_tdest[12] (m_axis_tdest_28_sn_1),
        .\m_axis_tdest[12]_0 (\m_axis_tdest[28]_2 ),
        .\m_axis_tdest[12]_1 (\m_axis_tdest[28]_1 ),
        .\m_axis_tdest[12]_2 (\m_axis_tdest[28]_0 ),
        .\m_axis_tdest[13] (m_axis_tdest_29_sn_1),
        .\m_axis_tdest[13]_0 (\m_axis_tdest[29]_2 ),
        .\m_axis_tdest[13]_1 (\m_axis_tdest[29]_1 ),
        .\m_axis_tdest[13]_2 (\m_axis_tdest[29]_0 ),
        .\m_axis_tdest[14] (m_axis_tdest_30_sn_1),
        .\m_axis_tdest[14]_0 (\m_axis_tdest[30]_2 ),
        .\m_axis_tdest[14]_1 (\m_axis_tdest[30]_1 ),
        .\m_axis_tdest[14]_2 (\m_axis_tdest[30]_0 ),
        .\m_axis_tdest[15] (m_axis_tdest_31_sn_1),
        .\m_axis_tdest[15]_0 (\m_axis_tdest[31]_2 ),
        .\m_axis_tdest[15]_1 (\m_axis_tdest[31]_1 ),
        .\m_axis_tdest[15]_2 (\m_axis_tdest[31]_0 ),
        .\m_axis_tdest[8] (m_axis_tdest_24_sn_1),
        .\m_axis_tdest[8]_0 (\m_axis_tdest[24]_0 ),
        .\m_axis_tdest[8]_1 (\m_axis_tdest[24]_1 ),
        .\m_axis_tdest[8]_2 (\m_axis_tdest[24]_2 ),
        .\m_axis_tdest[9] (m_axis_tdest_25_sn_1),
        .\m_axis_tdest[9]_0 (\m_axis_tdest[25]_2 ),
        .\m_axis_tdest[9]_1 (\m_axis_tdest[25]_1 ),
        .\m_axis_tdest[9]_2 (\m_axis_tdest[25]_0 ),
        .m_axis_tid(m_axis_tid[15:8]),
        .\m_axis_tid[10] (m_axis_tid_26_sn_1),
        .\m_axis_tid[10]_0 (\m_axis_tid[26]_0 ),
        .\m_axis_tid[10]_1 (\m_axis_tid[26]_1 ),
        .\m_axis_tid[10]_2 (\m_axis_tid[26]_2 ),
        .\m_axis_tid[11] (m_axis_tid_27_sn_1),
        .\m_axis_tid[11]_0 (\m_axis_tid[27]_2 ),
        .\m_axis_tid[11]_1 (\m_axis_tid[27]_1 ),
        .\m_axis_tid[11]_2 (\m_axis_tid[27]_0 ),
        .\m_axis_tid[12] (m_axis_tid_28_sn_1),
        .\m_axis_tid[12]_0 (\m_axis_tid[28]_0 ),
        .\m_axis_tid[12]_1 (\m_axis_tid[28]_1 ),
        .\m_axis_tid[12]_2 (\m_axis_tid[28]_2 ),
        .\m_axis_tid[13] (m_axis_tid_29_sn_1),
        .\m_axis_tid[13]_0 (\m_axis_tid[29]_0 ),
        .\m_axis_tid[13]_1 (\m_axis_tid[29]_1 ),
        .\m_axis_tid[13]_2 (\m_axis_tid[29]_2 ),
        .\m_axis_tid[14] (m_axis_tid_30_sn_1),
        .\m_axis_tid[14]_0 (\m_axis_tid[30]_0 ),
        .\m_axis_tid[14]_1 (\m_axis_tid[30]_1 ),
        .\m_axis_tid[14]_2 (\m_axis_tid[30]_2 ),
        .\m_axis_tid[15] (m_axis_tid_31_sn_1),
        .\m_axis_tid[15]_0 (\m_axis_tid[31]_0 ),
        .\m_axis_tid[15]_1 (\m_axis_tid[31]_1 ),
        .\m_axis_tid[15]_2 (\m_axis_tid[31]_2 ),
        .\m_axis_tid[8] (m_axis_tid_24_sn_1),
        .\m_axis_tid[8]_0 (\m_axis_tid[24]_0 ),
        .\m_axis_tid[8]_1 (\m_axis_tid[24]_1 ),
        .\m_axis_tid[8]_2 (\m_axis_tid[24]_2 ),
        .\m_axis_tid[9] (m_axis_tid_25_sn_1),
        .\m_axis_tid[9]_0 (\m_axis_tid[25]_2 ),
        .\m_axis_tid[9]_1 (\m_axis_tid[25]_1 ),
        .\m_axis_tid[9]_2 (\m_axis_tid[25]_0 ),
        .m_axis_tlast(m_axis_tlast[1]),
        .\m_axis_tlast[1] (m_axis_tlast_3_sn_1),
        .\m_axis_tlast[1]_0 (\m_axis_tlast[3]_2 ),
        .\m_axis_tlast[1]_1 (\m_axis_tlast[3]_1 ),
        .\m_axis_tlast[1]_2 (\m_axis_tlast[3]_0 ),
        .m_axis_tready(m_axis_tready[1]),
        .\m_axis_tready[1] (m_axis_tready_1_sn_1),
        .m_axis_tuser(m_axis_tuser[1]),
        .\m_axis_tuser[1] (m_axis_tuser_3_sn_1),
        .\m_axis_tuser[1]_0 (\m_axis_tuser[3]_2 ),
        .\m_axis_tuser[1]_1 (\m_axis_tuser[3]_1 ),
        .\m_axis_tuser[1]_2 (\m_axis_tuser[3]_0 ),
        .m_axis_tvalid(m_axis_tvalid[1]),
        .\m_axis_tvalid[1] (m_axis_tvalid_1_sn_1),
        .\m_axis_tvalid[1]_0 (\m_axis_tvalid[1]_0 ),
        .\m_axis_tvalid[1]_1 (\m_axis_tvalid[1]_1 ));
  axis_switch_swifsaxis_switch_v1_1_29_arb_rr_6 \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0 
       (.SR(areset),
        .aclk(aclk),
        .arb_busy_ns_4(arb_busy_ns_4),
        .arb_busy_r_1(arb_busy_r_1),
        .\arb_gnt_r[3]_i_2__1_0 (\arb_gnt_r[3]_i_2__1 ),
        .\arb_gnt_r[3]_i_4__1_0 (\arb_gnt_r[3]_i_4__1 ),
        .\arb_gnt_r[3]_i_4__1_1 (\arb_gnt_r[3]_i_4__1_0 ),
        .\arb_gnt_r[3]_i_4__1_2 (\arb_gnt_r[3]_i_4__1_1 ),
        .\arb_gnt_r_reg[0]_0 (\arb_gnt_r_reg[3] [8]),
        .\arb_gnt_r_reg[1]_0 (\arb_gnt_r_reg[3] [9]),
        .\arb_gnt_r_reg[2]_0 (\arb_gnt_r_reg[2] ),
        .\arb_gnt_r_reg[3]_0 (\arb_gnt_r_reg[3] [10]),
        .arb_sel_r0_7(arb_sel_r0_7),
        .\arb_sel_r_reg[0]_0 (arb_sel_i[4]),
        .\arb_sel_r_reg[1]_0 (arb_sel_i[5]),
        .areset_reg(areset_reg_2),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .\gen_tdest_router.busy_r_8 (\gen_tdest_router.busy_r_8 ),
        .m_axis_tdata(m_axis_tdata[23:16]),
        .\m_axis_tdata[16] (m_axis_tdata_24_sn_1),
        .\m_axis_tdata[16]_0 (\m_axis_tdata[24]_0 ),
        .\m_axis_tdata[16]_1 (\m_axis_tdata[24]_1 ),
        .\m_axis_tdata[16]_2 (\m_axis_tdata[24]_2 ),
        .\m_axis_tdata[17] (m_axis_tdata_25_sn_1),
        .\m_axis_tdata[17]_0 (\m_axis_tdata[25]_2 ),
        .\m_axis_tdata[17]_1 (\m_axis_tdata[25]_1 ),
        .\m_axis_tdata[17]_2 (\m_axis_tdata[25]_0 ),
        .\m_axis_tdata[18] (m_axis_tdata_26_sn_1),
        .\m_axis_tdata[18]_0 (\m_axis_tdata[26]_0 ),
        .\m_axis_tdata[18]_1 (\m_axis_tdata[26]_1 ),
        .\m_axis_tdata[18]_2 (\m_axis_tdata[26]_2 ),
        .\m_axis_tdata[19] (m_axis_tdata_27_sn_1),
        .\m_axis_tdata[19]_0 (\m_axis_tdata[27]_0 ),
        .\m_axis_tdata[19]_1 (\m_axis_tdata[27]_1 ),
        .\m_axis_tdata[19]_2 (\m_axis_tdata[27]_2 ),
        .\m_axis_tdata[20] (m_axis_tdata_28_sn_1),
        .\m_axis_tdata[20]_0 (\m_axis_tdata[28]_0 ),
        .\m_axis_tdata[20]_1 (\m_axis_tdata[28]_1 ),
        .\m_axis_tdata[20]_2 (\m_axis_tdata[28]_2 ),
        .\m_axis_tdata[21] (m_axis_tdata_29_sn_1),
        .\m_axis_tdata[21]_0 (\m_axis_tdata[29]_0 ),
        .\m_axis_tdata[21]_1 (\m_axis_tdata[29]_1 ),
        .\m_axis_tdata[21]_2 (\m_axis_tdata[29]_2 ),
        .\m_axis_tdata[22] (m_axis_tdata_30_sn_1),
        .\m_axis_tdata[22]_0 (\m_axis_tdata[30]_2 ),
        .\m_axis_tdata[22]_1 (\m_axis_tdata[30]_1 ),
        .\m_axis_tdata[22]_2 (\m_axis_tdata[30]_0 ),
        .\m_axis_tdata[23] (m_axis_tdata_31_sn_1),
        .\m_axis_tdata[23]_0 (\m_axis_tdata[31]_0 ),
        .\m_axis_tdata[23]_1 (\m_axis_tdata[31]_1 ),
        .\m_axis_tdata[23]_2 (\m_axis_tdata[31]_2 ),
        .m_axis_tdest(m_axis_tdest[23:16]),
        .\m_axis_tdest[16] (m_axis_tdest_24_sn_1),
        .\m_axis_tdest[16]_0 (\m_axis_tdest[24]_2 ),
        .\m_axis_tdest[16]_1 (\m_axis_tdest[24]_1 ),
        .\m_axis_tdest[16]_2 (\m_axis_tdest[24]_0 ),
        .\m_axis_tdest[17] (m_axis_tdest_25_sn_1),
        .\m_axis_tdest[17]_0 (\m_axis_tdest[25]_0 ),
        .\m_axis_tdest[17]_1 (\m_axis_tdest[25]_1 ),
        .\m_axis_tdest[17]_2 (\m_axis_tdest[25]_2 ),
        .\m_axis_tdest[18] (m_axis_tdest_26_sn_1),
        .\m_axis_tdest[18]_0 (\m_axis_tdest[26]_0 ),
        .\m_axis_tdest[18]_1 (\m_axis_tdest[26]_1 ),
        .\m_axis_tdest[18]_2 (\m_axis_tdest[26]_2 ),
        .\m_axis_tdest[19] (m_axis_tdest_27_sn_1),
        .\m_axis_tdest[19]_0 (\m_axis_tdest[27]_0 ),
        .\m_axis_tdest[19]_1 (\m_axis_tdest[27]_1 ),
        .\m_axis_tdest[19]_2 (\m_axis_tdest[27]_2 ),
        .\m_axis_tdest[20] (m_axis_tdest_28_sn_1),
        .\m_axis_tdest[20]_0 (\m_axis_tdest[28]_0 ),
        .\m_axis_tdest[20]_1 (\m_axis_tdest[28]_1 ),
        .\m_axis_tdest[20]_2 (\m_axis_tdest[28]_2 ),
        .\m_axis_tdest[21] (m_axis_tdest_29_sn_1),
        .\m_axis_tdest[21]_0 (\m_axis_tdest[29]_2 ),
        .\m_axis_tdest[21]_1 (\m_axis_tdest[29]_1 ),
        .\m_axis_tdest[21]_2 (\m_axis_tdest[29]_0 ),
        .\m_axis_tdest[22] (m_axis_tdest_30_sn_1),
        .\m_axis_tdest[22]_0 (\m_axis_tdest[30]_0 ),
        .\m_axis_tdest[22]_1 (\m_axis_tdest[30]_1 ),
        .\m_axis_tdest[22]_2 (\m_axis_tdest[30]_2 ),
        .\m_axis_tdest[23] (m_axis_tdest_31_sn_1),
        .\m_axis_tdest[23]_0 (\m_axis_tdest[31]_2 ),
        .\m_axis_tdest[23]_1 (\m_axis_tdest[31]_1 ),
        .\m_axis_tdest[23]_2 (\m_axis_tdest[31]_0 ),
        .m_axis_tid(m_axis_tid[23:16]),
        .\m_axis_tid[16] (m_axis_tid_24_sn_1),
        .\m_axis_tid[16]_0 (\m_axis_tid[24]_0 ),
        .\m_axis_tid[16]_1 (\m_axis_tid[24]_1 ),
        .\m_axis_tid[16]_2 (\m_axis_tid[24]_2 ),
        .\m_axis_tid[17] (m_axis_tid_25_sn_1),
        .\m_axis_tid[17]_0 (\m_axis_tid[25]_2 ),
        .\m_axis_tid[17]_1 (\m_axis_tid[25]_1 ),
        .\m_axis_tid[17]_2 (\m_axis_tid[25]_0 ),
        .\m_axis_tid[18] (m_axis_tid_26_sn_1),
        .\m_axis_tid[18]_0 (\m_axis_tid[26]_0 ),
        .\m_axis_tid[18]_1 (\m_axis_tid[26]_1 ),
        .\m_axis_tid[18]_2 (\m_axis_tid[26]_2 ),
        .\m_axis_tid[19] (m_axis_tid_27_sn_1),
        .\m_axis_tid[19]_0 (\m_axis_tid[27]_0 ),
        .\m_axis_tid[19]_1 (\m_axis_tid[27]_1 ),
        .\m_axis_tid[19]_2 (\m_axis_tid[27]_2 ),
        .\m_axis_tid[20] (m_axis_tid_28_sn_1),
        .\m_axis_tid[20]_0 (\m_axis_tid[28]_2 ),
        .\m_axis_tid[20]_1 (\m_axis_tid[28]_1 ),
        .\m_axis_tid[20]_2 (\m_axis_tid[28]_0 ),
        .\m_axis_tid[21] (m_axis_tid_29_sn_1),
        .\m_axis_tid[21]_0 (\m_axis_tid[29]_2 ),
        .\m_axis_tid[21]_1 (\m_axis_tid[29]_1 ),
        .\m_axis_tid[21]_2 (\m_axis_tid[29]_0 ),
        .\m_axis_tid[22] (m_axis_tid_30_sn_1),
        .\m_axis_tid[22]_0 (\m_axis_tid[30]_0 ),
        .\m_axis_tid[22]_1 (\m_axis_tid[30]_1 ),
        .\m_axis_tid[22]_2 (\m_axis_tid[30]_2 ),
        .\m_axis_tid[23] (m_axis_tid_31_sn_1),
        .\m_axis_tid[23]_0 (\m_axis_tid[31]_0 ),
        .\m_axis_tid[23]_1 (\m_axis_tid[31]_1 ),
        .\m_axis_tid[23]_2 (\m_axis_tid[31]_2 ),
        .m_axis_tlast(m_axis_tlast[2]),
        .\m_axis_tlast[2] (m_axis_tlast_3_sn_1),
        .\m_axis_tlast[2]_0 (\m_axis_tlast[3]_2 ),
        .\m_axis_tlast[2]_1 (\m_axis_tlast[3]_1 ),
        .\m_axis_tlast[2]_2 (\m_axis_tlast[3]_0 ),
        .m_axis_tready(m_axis_tready[2]),
        .\m_axis_tready[2] (m_axis_tready_2_sn_1),
        .m_axis_tuser(m_axis_tuser[2]),
        .\m_axis_tuser[2] (m_axis_tuser_3_sn_1),
        .\m_axis_tuser[2]_0 (\m_axis_tuser[3]_0 ),
        .\m_axis_tuser[2]_1 (\m_axis_tuser[3]_1 ),
        .\m_axis_tuser[2]_2 (\m_axis_tuser[3]_2 ),
        .m_axis_tvalid(m_axis_tvalid[2]),
        .\m_axis_tvalid[2] (m_axis_tvalid_2_sn_1),
        .\m_axis_tvalid[2]_0 (\m_axis_tvalid[2]_0 ));
  axis_switch_swifsaxis_switch_v1_1_29_arb_rr_7 \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0 
       (.SR(areset),
        .aclk(aclk),
        .arb_busy_ns_5(arb_busy_ns_5),
        .arb_busy_r_reg_0(arb_busy_r_2),
        .\arb_gnt_r_reg[0]_0 (\arb_gnt_r_reg[0] ),
        .\arb_gnt_r_reg[0]_1 (\arb_gnt_r_reg[3] [11]),
        .\arb_gnt_r_reg[2]_0 (\arb_gnt_r_reg[2]_1 ),
        .\arb_gnt_r_reg[2]_1 (\arb_gnt_r_reg[2]_2 ),
        .\arb_gnt_r_reg[2]_2 (\arb_gnt_r_reg[2]_3 ),
        .\arb_gnt_r_reg[2]_3 (\arb_gnt_r_reg[2]_4 ),
        .\arb_gnt_r_reg[2]_4 (\arb_gnt_r_reg[2]_5 ),
        .\arb_gnt_r_reg[3]_0 (\arb_gnt_r_reg[3] [14:12]),
        .\arb_sel_r_reg[0]_0 (arb_sel_i[6]),
        .\arb_sel_r_reg[0]_1 (\arb_sel_r_reg[0] ),
        .\arb_sel_r_reg[0]_2 (\arb_sel_r_reg[0]_0 ),
        .\arb_sel_r_reg[1]_0 (arb_sel_i[7]),
        .areset_reg(areset_reg_0),
        .\gen_AB_reg_slice.payload_b_reg[3] (\gen_AB_reg_slice.payload_b_reg[3] ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tdata(m_axis_tdata[31:24]),
        .\m_axis_tdata[24] (m_axis_tdata_24_sn_1),
        .\m_axis_tdata[24]_0 (\m_axis_tdata[24]_2 ),
        .\m_axis_tdata[24]_1 (\m_axis_tdata[24]_1 ),
        .\m_axis_tdata[24]_2 (\m_axis_tdata[24]_0 ),
        .\m_axis_tdata[25] (m_axis_tdata_25_sn_1),
        .\m_axis_tdata[25]_0 (\m_axis_tdata[25]_2 ),
        .\m_axis_tdata[25]_1 (\m_axis_tdata[25]_1 ),
        .\m_axis_tdata[25]_2 (\m_axis_tdata[25]_0 ),
        .\m_axis_tdata[26] (m_axis_tdata_26_sn_1),
        .\m_axis_tdata[26]_0 (\m_axis_tdata[26]_2 ),
        .\m_axis_tdata[26]_1 (\m_axis_tdata[26]_1 ),
        .\m_axis_tdata[26]_2 (\m_axis_tdata[26]_0 ),
        .\m_axis_tdata[27] (m_axis_tdata_27_sn_1),
        .\m_axis_tdata[27]_0 (\m_axis_tdata[27]_2 ),
        .\m_axis_tdata[27]_1 (\m_axis_tdata[27]_1 ),
        .\m_axis_tdata[27]_2 (\m_axis_tdata[27]_0 ),
        .\m_axis_tdata[28] (m_axis_tdata_28_sn_1),
        .\m_axis_tdata[28]_0 (\m_axis_tdata[28]_2 ),
        .\m_axis_tdata[28]_1 (\m_axis_tdata[28]_1 ),
        .\m_axis_tdata[28]_2 (\m_axis_tdata[28]_0 ),
        .\m_axis_tdata[29] (m_axis_tdata_29_sn_1),
        .\m_axis_tdata[29]_0 (\m_axis_tdata[29]_2 ),
        .\m_axis_tdata[29]_1 (\m_axis_tdata[29]_1 ),
        .\m_axis_tdata[29]_2 (\m_axis_tdata[29]_0 ),
        .\m_axis_tdata[30] (m_axis_tdata_30_sn_1),
        .\m_axis_tdata[30]_0 (\m_axis_tdata[30]_2 ),
        .\m_axis_tdata[30]_1 (\m_axis_tdata[30]_1 ),
        .\m_axis_tdata[30]_2 (\m_axis_tdata[30]_0 ),
        .\m_axis_tdata[31] (m_axis_tdata_31_sn_1),
        .\m_axis_tdata[31]_0 (\m_axis_tdata[31]_2 ),
        .\m_axis_tdata[31]_1 (\m_axis_tdata[31]_1 ),
        .\m_axis_tdata[31]_2 (\m_axis_tdata[31]_0 ),
        .m_axis_tdest(m_axis_tdest[31:24]),
        .\m_axis_tdest[24] (m_axis_tdest_24_sn_1),
        .\m_axis_tdest[24]_0 (\m_axis_tdest[24]_2 ),
        .\m_axis_tdest[24]_1 (\m_axis_tdest[24]_1 ),
        .\m_axis_tdest[24]_2 (\m_axis_tdest[24]_0 ),
        .\m_axis_tdest[25] (m_axis_tdest_25_sn_1),
        .\m_axis_tdest[25]_0 (\m_axis_tdest[25]_2 ),
        .\m_axis_tdest[25]_1 (\m_axis_tdest[25]_1 ),
        .\m_axis_tdest[25]_2 (\m_axis_tdest[25]_0 ),
        .\m_axis_tdest[26] (m_axis_tdest_26_sn_1),
        .\m_axis_tdest[26]_0 (\m_axis_tdest[26]_2 ),
        .\m_axis_tdest[26]_1 (\m_axis_tdest[26]_1 ),
        .\m_axis_tdest[26]_2 (\m_axis_tdest[26]_0 ),
        .\m_axis_tdest[27] (m_axis_tdest_27_sn_1),
        .\m_axis_tdest[27]_0 (\m_axis_tdest[27]_2 ),
        .\m_axis_tdest[27]_1 (\m_axis_tdest[27]_1 ),
        .\m_axis_tdest[27]_2 (\m_axis_tdest[27]_0 ),
        .\m_axis_tdest[28] (m_axis_tdest_28_sn_1),
        .\m_axis_tdest[28]_0 (\m_axis_tdest[28]_2 ),
        .\m_axis_tdest[28]_1 (\m_axis_tdest[28]_1 ),
        .\m_axis_tdest[28]_2 (\m_axis_tdest[28]_0 ),
        .\m_axis_tdest[29] (m_axis_tdest_29_sn_1),
        .\m_axis_tdest[29]_0 (\m_axis_tdest[29]_2 ),
        .\m_axis_tdest[29]_1 (\m_axis_tdest[29]_1 ),
        .\m_axis_tdest[29]_2 (\m_axis_tdest[29]_0 ),
        .\m_axis_tdest[30] (m_axis_tdest_30_sn_1),
        .\m_axis_tdest[30]_0 (\m_axis_tdest[30]_2 ),
        .\m_axis_tdest[30]_1 (\m_axis_tdest[30]_1 ),
        .\m_axis_tdest[30]_2 (\m_axis_tdest[30]_0 ),
        .\m_axis_tdest[31] (m_axis_tdest_31_sn_1),
        .\m_axis_tdest[31]_0 (\m_axis_tdest[31]_2 ),
        .\m_axis_tdest[31]_1 (\m_axis_tdest[31]_1 ),
        .\m_axis_tdest[31]_2 (\m_axis_tdest[31]_0 ),
        .m_axis_tid(m_axis_tid[31:24]),
        .\m_axis_tid[24] (m_axis_tid_24_sn_1),
        .\m_axis_tid[24]_0 (\m_axis_tid[24]_0 ),
        .\m_axis_tid[24]_1 (\m_axis_tid[24]_1 ),
        .\m_axis_tid[24]_2 (\m_axis_tid[24]_2 ),
        .\m_axis_tid[25] (m_axis_tid_25_sn_1),
        .\m_axis_tid[25]_0 (\m_axis_tid[25]_0 ),
        .\m_axis_tid[25]_1 (\m_axis_tid[25]_1 ),
        .\m_axis_tid[25]_2 (\m_axis_tid[25]_2 ),
        .\m_axis_tid[26] (m_axis_tid_26_sn_1),
        .\m_axis_tid[26]_0 (\m_axis_tid[26]_0 ),
        .\m_axis_tid[26]_1 (\m_axis_tid[26]_1 ),
        .\m_axis_tid[26]_2 (\m_axis_tid[26]_2 ),
        .\m_axis_tid[27] (m_axis_tid_27_sn_1),
        .\m_axis_tid[27]_0 (\m_axis_tid[27]_2 ),
        .\m_axis_tid[27]_1 (\m_axis_tid[27]_1 ),
        .\m_axis_tid[27]_2 (\m_axis_tid[27]_0 ),
        .\m_axis_tid[28] (m_axis_tid_28_sn_1),
        .\m_axis_tid[28]_0 (\m_axis_tid[28]_2 ),
        .\m_axis_tid[28]_1 (\m_axis_tid[28]_1 ),
        .\m_axis_tid[28]_2 (\m_axis_tid[28]_0 ),
        .\m_axis_tid[29] (m_axis_tid_29_sn_1),
        .\m_axis_tid[29]_0 (\m_axis_tid[29]_2 ),
        .\m_axis_tid[29]_1 (\m_axis_tid[29]_1 ),
        .\m_axis_tid[29]_2 (\m_axis_tid[29]_0 ),
        .\m_axis_tid[30] (m_axis_tid_30_sn_1),
        .\m_axis_tid[30]_0 (\m_axis_tid[30]_2 ),
        .\m_axis_tid[30]_1 (\m_axis_tid[30]_1 ),
        .\m_axis_tid[30]_2 (\m_axis_tid[30]_0 ),
        .\m_axis_tid[31] (m_axis_tid_31_sn_1),
        .\m_axis_tid[31]_0 (\m_axis_tid[31]_2 ),
        .\m_axis_tid[31]_1 (\m_axis_tid[31]_1 ),
        .\m_axis_tid[31]_2 (\m_axis_tid[31]_0 ),
        .m_axis_tlast(m_axis_tlast[3]),
        .\m_axis_tlast[3] (m_axis_tlast_3_sn_1),
        .\m_axis_tlast[3]_0 (\m_axis_tlast[3]_2 ),
        .\m_axis_tlast[3]_1 (\m_axis_tlast[3]_1 ),
        .\m_axis_tlast[3]_2 (\m_axis_tlast[3]_0 ),
        .m_axis_tready(m_axis_tready[3]),
        .\m_axis_tready[3] (m_axis_tready_3_sn_1),
        .m_axis_tuser(m_axis_tuser[3]),
        .\m_axis_tuser[3] (m_axis_tuser_3_sn_1),
        .\m_axis_tuser[3]_0 (\m_axis_tuser[3]_0 ),
        .\m_axis_tuser[3]_1 (\m_axis_tuser[3]_1 ),
        .\m_axis_tuser[3]_2 (\m_axis_tuser[3]_2 ),
        .\m_axis_tvalid[3] (\m_axis_tvalid[3] ),
        .\m_axis_tvalid[3]_0 (\m_axis_tvalid[3]_0 ),
        .\m_axis_tvalid[3]_1 (\m_axis_tvalid[3]_1 ),
        .\m_axis_tvalid[3]_2 (\m_axis_tvalid[3]_2 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_arb_responder" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder
   (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ,
    arb_busy_ns,
    \gen_tdest_routing.busy_r_reg[3] ,
    \gen_tdest_routing.busy_r_reg[3]_0 ,
    \gen_tdest_routing.busy_r_reg[3]_1 ,
    \gen_tdest_routing.busy_r_reg[3]_2 ,
    \busy_r_reg[0]_0 ,
    \gen_tdest_router.busy_r ,
    \busy_r_reg[3]_0 ,
    \m_axis_tready[3] ,
    aclk,
    areset,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1 ,
    arb_busy_r,
    arb_busy_r_reg,
    \gen_tdest_routing.busy_r_reg[3]_3 ,
    \busy_r_reg[3]_1 ,
    \gen_tdest_routing.busy_r_reg[3]_4 ,
    \gen_tdest_routing.busy_r_reg[3]_5 ,
    \gen_tdest_routing.busy_r_reg[3]_6 ,
    m_axis_tvalid,
    m_axis_tready,
    \busy_r_reg[0]_1 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 );
  output \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  output \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  output arb_busy_ns;
  output [0:0]\gen_tdest_routing.busy_r_reg[3] ;
  output [0:0]\gen_tdest_routing.busy_r_reg[3]_0 ;
  output [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  output [0:0]\gen_tdest_routing.busy_r_reg[3]_2 ;
  output \busy_r_reg[0]_0 ;
  output [3:0]\gen_tdest_router.busy_r ;
  output \busy_r_reg[3]_0 ;
  output \m_axis_tready[3] ;
  input aclk;
  input areset;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1 ;
  input arb_busy_r;
  input arb_busy_r_reg;
  input \gen_tdest_routing.busy_r_reg[3]_3 ;
  input [3:0]\busy_r_reg[3]_1 ;
  input \gen_tdest_routing.busy_r_reg[3]_4 ;
  input \gen_tdest_routing.busy_r_reg[3]_5 ;
  input \gen_tdest_routing.busy_r_reg[3]_6 ;
  input [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  input \busy_r_reg[0]_1 ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire areset;
  wire \busy_r[1]_i_1_n_0 ;
  wire \busy_r[2]_i_1_n_0 ;
  wire \busy_r[3]_i_1_n_0 ;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[0]_1 ;
  wire \busy_r_reg[3]_0 ;
  wire [3:0]\busy_r_reg[3]_1 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__2_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0 ;
  wire [10:0]\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__2_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2_n_0 ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_r[3]_i_2_n_0 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3] ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_0 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_2 ;
  wire \gen_tdest_routing.busy_r_reg[3]_3 ;
  wire \gen_tdest_routing.busy_r_reg[3]_4 ;
  wire \gen_tdest_routing.busy_r_reg[3]_5 ;
  wire \gen_tdest_routing.busy_r_reg[3]_6 ;
  wire [0:0]m_axis_tready;
  wire \m_axis_tready[3] ;
  wire [0:0]m_axis_tvalid;
  wire [10:0]p_0_in;
  wire timeout_done_ns;

  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    arb_busy_r_i_1
       (.I0(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I1(arb_busy_r),
        .I2(arb_busy_r_reg),
        .O(arb_busy_ns));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \arb_gnt_r[3]_i_12 
       (.I0(m_axis_tready),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .O(\m_axis_tready[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[1]_i_1 
       (.I0(\gen_tdest_router.busy_r [1]),
        .I1(\busy_r_reg[3]_1 [1]),
        .O(\busy_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[2]_i_1 
       (.I0(\gen_tdest_router.busy_r [2]),
        .I1(\busy_r_reg[3]_1 [2]),
        .O(\busy_r[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \busy_r[3]_i_1 
       (.I0(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I1(areset),
        .I2(timeout_done_ns),
        .O(\busy_r[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[3]_i_2__0 
       (.I0(\gen_tdest_router.busy_r [3]),
        .I1(\busy_r_reg[3]_1 [3]),
        .O(\busy_r_reg[3]_0 ));
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[0]_1 ),
        .Q(\gen_tdest_router.busy_r [0]),
        .R(\busy_r[3]_i_1_n_0 ));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[1]_i_1_n_0 ),
        .Q(\gen_tdest_router.busy_r [1]),
        .R(\busy_r[3]_i_1_n_0 ));
  FDRE \busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[2]_i_1_n_0 ),
        .Q(\gen_tdest_router.busy_r [2]),
        .R(\busy_r[3]_i_1_n_0 ));
  FDRE \busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[3]_0 ),
        .Q(\gen_tdest_router.busy_r [3]),
        .R(\busy_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_AB_reg_slice.state[1]_i_4 
       (.I0(\gen_tdest_router.busy_r [0]),
        .I1(\busy_r_reg[3]_1 [0]),
        .O(\busy_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1 ),
        .I2(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I3(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00006A00)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I3(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I4(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .I4(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222E0000)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__2 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ),
        .I4(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__2_n_0 ));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__2_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_2__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[5]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .O(p_0_in[9]));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1 
       (.I0(m_axis_tvalid),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__2_n_0 ),
        .O(timeout_done_ns));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2 
       (.I0(\gen_tdest_router.busy_r [2]),
        .I1(\gen_tdest_router.busy_r [1]),
        .I2(\gen_tdest_router.busy_r [3]),
        .I3(\gen_tdest_router.busy_r [0]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2_n_0 ),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2_n_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(timeout_done_ns),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_tdest_routing.busy_r[3]_i_1 
       (.I0(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[3]_3 ),
        .I2(\busy_r_reg[3]_1 [3]),
        .O(\gen_tdest_routing.busy_r_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_tdest_routing.busy_r[3]_i_1__0 
       (.I0(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[3]_4 ),
        .I2(\busy_r_reg[3]_1 [2]),
        .O(\gen_tdest_routing.busy_r_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_tdest_routing.busy_r[3]_i_1__1 
       (.I0(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[3]_5 ),
        .I2(\busy_r_reg[3]_1 [1]),
        .O(\gen_tdest_routing.busy_r_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_tdest_routing.busy_r[3]_i_1__2 
       (.I0(\gen_tdest_routing.busy_r[3]_i_2_n_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[3]_6 ),
        .I2(\busy_r_reg[3]_1 [0]),
        .O(\gen_tdest_routing.busy_r_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \gen_tdest_routing.busy_r[3]_i_2 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .O(\gen_tdest_routing.busy_r[3]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_arb_responder" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_2
   (arb_sel_r0,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ,
    \gen_tdest_router.busy_r ,
    arb_busy_ns,
    aclk,
    areset,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ,
    arb_busy_r,
    \arb_gnt_r_reg[1] ,
    m_axis_tvalid,
    \busy_r_reg[3]_0 ,
    arb_busy_r_reg,
    arb_busy_r_reg_0,
    \busy_r_reg[2]_0 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 );
  output arb_sel_r0;
  output \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ;
  output [3:0]\gen_tdest_router.busy_r ;
  output arb_busy_ns;
  input aclk;
  input areset;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  input arb_busy_r;
  input \arb_gnt_r_reg[1] ;
  input [0:0]m_axis_tvalid;
  input [2:0]\busy_r_reg[3]_0 ;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;
  input \busy_r_reg[2]_0 ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire \arb_gnt_r_reg[1] ;
  wire arb_sel_r0;
  wire areset;
  wire \busy_r[0]_i_1__1_n_0 ;
  wire \busy_r[1]_i_1__1_n_0 ;
  wire \busy_r[3]_i_1__1_n_0 ;
  wire \busy_r[3]_i_2__2_n_0 ;
  wire \busy_r_reg[2]_0 ;
  wire [2:0]\busy_r_reg[3]_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0 ;
  wire [10:0]\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__1_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tvalid;
  wire [10:0]p_0_in;
  wire timeout_done_ns;

  LUT4 #(
    .INIT(16'hFFF4)) 
    arb_busy_r_i_1__1
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I1(arb_busy_r),
        .I2(arb_busy_r_reg),
        .I3(arb_busy_r_reg_0),
        .O(arb_busy_ns));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h0000EAFF)) 
    \arb_gnt_r[3]_i_3__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I3(arb_busy_r),
        .I4(\arb_gnt_r_reg[1] ),
        .O(arb_sel_r0));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[0]_i_1__1 
       (.I0(\gen_tdest_router.busy_r [0]),
        .I1(\busy_r_reg[3]_0 [0]),
        .O(\busy_r[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[1]_i_1__1 
       (.I0(\gen_tdest_router.busy_r [1]),
        .I1(\busy_r_reg[3]_0 [1]),
        .O(\busy_r[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \busy_r[3]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I1(areset),
        .I2(timeout_done_ns),
        .O(\busy_r[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[3]_i_2__2 
       (.I0(\gen_tdest_router.busy_r [3]),
        .I1(\busy_r_reg[3]_0 [2]),
        .O(\busy_r[3]_i_2__2_n_0 ));
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[0]_i_1__1_n_0 ),
        .Q(\gen_tdest_router.busy_r [0]),
        .R(\busy_r[3]_i_1__1_n_0 ));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[1]_i_1__1_n_0 ),
        .Q(\gen_tdest_router.busy_r [1]),
        .R(\busy_r[3]_i_1__1_n_0 ));
  FDRE \busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[2]_0 ),
        .Q(\gen_tdest_router.busy_r [2]),
        .R(\busy_r[3]_i_1__1_n_0 ));
  FDRE \busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[3]_i_2__2_n_0 ),
        .Q(\gen_tdest_router.busy_r [3]),
        .R(\busy_r[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000212)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I4(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A060A)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F0100)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__1_n_0 ));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_2__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[5]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .O(p_0_in[9]));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1_n_0 ),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__1_n_0 ),
        .I5(m_axis_tvalid),
        .O(timeout_done_ns));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1 
       (.I0(\gen_tdest_router.busy_r [3]),
        .I1(\gen_tdest_router.busy_r [0]),
        .I2(\gen_tdest_router.busy_r [2]),
        .I3(\gen_tdest_router.busy_r [1]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1_n_0 ),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1_n_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(timeout_done_ns),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \gen_tdest_routing.busy_r[2]_i_2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_arb_responder" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_3
   (arb_sel_r0,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ,
    \busy_r_reg[0]_0 ,
    \busy_r_reg[3]_0 ,
    \busy_r_reg[2]_0 ,
    arb_busy_ns,
    aclk,
    areset,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ,
    arb_busy_r,
    \arb_gnt_r_reg[1] ,
    m_axis_tvalid,
    \busy_r_reg[3]_1 ,
    arb_busy_r_reg,
    arb_busy_r_reg_0,
    \busy_r_reg[2]_1 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 );
  output arb_sel_r0;
  output \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ;
  output \busy_r_reg[0]_0 ;
  output [2:0]\busy_r_reg[3]_0 ;
  output \busy_r_reg[2]_0 ;
  output arb_busy_ns;
  input aclk;
  input areset;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  input arb_busy_r;
  input \arb_gnt_r_reg[1] ;
  input [0:0]m_axis_tvalid;
  input [3:0]\busy_r_reg[3]_1 ;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;
  input \busy_r_reg[2]_1 ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire \arb_gnt_r_reg[1] ;
  wire arb_sel_r0;
  wire areset;
  wire \busy_r[1]_i_1__2_n_0 ;
  wire \busy_r[3]_i_1__0_n_0 ;
  wire \busy_r[3]_i_2__1_n_0 ;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[2]_0 ;
  wire \busy_r_reg[2]_1 ;
  wire [2:0]\busy_r_reg[3]_0 ;
  wire [3:0]\busy_r_reg[3]_1 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__0_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0 ;
  wire [10:0]\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__0_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ;
  wire [1:1]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tvalid;
  wire [10:0]p_0_in;
  wire timeout_done_ns;

  LUT4 #(
    .INIT(16'hFFF4)) 
    arb_busy_r_i_1__2
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I1(arb_busy_r),
        .I2(arb_busy_r_reg),
        .I3(arb_busy_r_reg_0),
        .O(arb_busy_ns));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h0000EAFF)) 
    \arb_gnt_r[3]_i_3__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I3(arb_busy_r),
        .I4(\arb_gnt_r_reg[1] ),
        .O(arb_sel_r0));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[0]_i_1__0 
       (.I0(\busy_r_reg[3]_0 [0]),
        .I1(\busy_r_reg[3]_1 [0]),
        .O(\busy_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[1]_i_1__2 
       (.I0(\gen_tdest_router.busy_r ),
        .I1(\busy_r_reg[3]_1 [1]),
        .O(\busy_r[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \busy_r[3]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I1(areset),
        .I2(timeout_done_ns),
        .O(\busy_r[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[3]_i_2__1 
       (.I0(\busy_r_reg[3]_0 [2]),
        .I1(\busy_r_reg[3]_1 [3]),
        .O(\busy_r[3]_i_2__1_n_0 ));
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[0]_0 ),
        .Q(\busy_r_reg[3]_0 [0]),
        .R(\busy_r[3]_i_1__0_n_0 ));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[1]_i_1__2_n_0 ),
        .Q(\gen_tdest_router.busy_r ),
        .R(\busy_r[3]_i_1__0_n_0 ));
  FDRE \busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[2]_1 ),
        .Q(\busy_r_reg[3]_0 [1]),
        .R(\busy_r[3]_i_1__0_n_0 ));
  FDRE \busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[3]_i_2__1_n_0 ),
        .Q(\busy_r_reg[3]_0 [2]),
        .R(\busy_r[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000212)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I4(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A060A)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1] ),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F0100)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__0 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2] ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__0_n_0 ));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__0_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_2__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[5]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .O(p_0_in[9]));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0_n_0 ),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__0_n_0 ),
        .I5(m_axis_tvalid),
        .O(timeout_done_ns));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0 
       (.I0(\busy_r_reg[3]_0 [2]),
        .I1(\busy_r_reg[3]_0 [0]),
        .I2(\busy_r_reg[3]_0 [1]),
        .I3(\gen_tdest_router.busy_r ),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0_n_0 ),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0_n_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(timeout_done_ns),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \gen_tdest_routing.busy_r[1]_i_2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tvalid[1]_INST_0_i_2 
       (.I0(\busy_r_reg[3]_0 [1]),
        .I1(\busy_r_reg[3]_1 [2]),
        .I2(\busy_r_reg[3]_1 [1]),
        .I3(\gen_tdest_router.busy_r ),
        .O(\busy_r_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_arb_responder" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_4
   (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ,
    arb_sel_r0,
    arb_busy_ns,
    \gen_tdest_router.busy_r ,
    \busy_r_reg[3]_0 ,
    aclk,
    areset,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ,
    m_axis_tready,
    m_axis_tvalid,
    arb_busy_r,
    arb_busy_r_reg,
    \busy_r_reg[3]_1 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 );
  output \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ;
  output arb_sel_r0;
  output arb_busy_ns;
  output [3:0]\gen_tdest_router.busy_r ;
  output \busy_r_reg[3]_0 ;
  input aclk;
  input areset;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  input [0:0]m_axis_tready;
  input [0:0]m_axis_tvalid;
  input arb_busy_r;
  input arb_busy_r_reg;
  input [3:0]\busy_r_reg[3]_1 ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_sel_r0;
  wire areset;
  wire \busy_r[0]_i_1__2_n_0 ;
  wire \busy_r[1]_i_1__0_n_0 ;
  wire \busy_r[2]_i_1__0_n_0 ;
  wire \busy_r[3]_i_1__2_n_0 ;
  wire \busy_r_reg[3]_0 ;
  wire [3:0]\busy_r_reg[3]_1 ;
  wire [2:0]\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1_n_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0 ;
  wire [10:0]\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4_n_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [10:0]p_0_in;
  wire timeout_done_ns;

  LUT3 #(
    .INIT(8'h4F)) 
    arb_busy_r_i_1__0
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I1(arb_busy_r),
        .I2(arb_busy_r_reg),
        .O(arb_busy_ns));
  LUT6 #(
    .INIT(64'h00000000EAAAFFFF)) 
    \arb_gnt_r[3]_i_4__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I1(m_axis_tready),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I3(m_axis_tvalid),
        .I4(arb_busy_r),
        .I5(arb_busy_r_reg),
        .O(arb_sel_r0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[0]_i_1__2 
       (.I0(\gen_tdest_router.busy_r [0]),
        .I1(\busy_r_reg[3]_1 [0]),
        .O(\busy_r[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[1]_i_1__0 
       (.I0(\gen_tdest_router.busy_r [1]),
        .I1(\busy_r_reg[3]_1 [1]),
        .O(\busy_r[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[2]_i_1__0 
       (.I0(\gen_tdest_router.busy_r [2]),
        .I1(\busy_r_reg[3]_1 [2]),
        .O(\busy_r[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \busy_r[3]_i_1__2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I1(areset),
        .I2(timeout_done_ns),
        .O(\busy_r[3]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[3]_i_2 
       (.I0(\gen_tdest_router.busy_r [3]),
        .I1(\busy_r_reg[3]_1 [3]),
        .O(\busy_r_reg[3]_0 ));
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[0]_i_1__2_n_0 ),
        .Q(\gen_tdest_router.busy_r [0]),
        .R(\busy_r[3]_i_1__2_n_0 ));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[1]_i_1__0_n_0 ),
        .Q(\gen_tdest_router.busy_r [1]),
        .R(\busy_r[3]_i_1__2_n_0 ));
  FDRE \busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[2]_i_1__0_n_0 ),
        .Q(\gen_tdest_router.busy_r [2]),
        .R(\busy_r[3]_i_1__2_n_0 ));
  FDRE \busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[3]_0 ),
        .Q(\gen_tdest_router.busy_r [3]),
        .R(\busy_r[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [0]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I3(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [1]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [0]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I4(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [2]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [0]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [1]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [0]),
        .R(1'b0));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [1]),
        .R(1'b0));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [0]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [1]),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000222E)) 
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt [2]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0 ),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ),
        .I5(areset),
        .O(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1_n_0 ));
  FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1_n_0 ),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[5]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0 ),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .O(p_0_in[9]));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .R(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1__2 
       (.I0(m_axis_tvalid),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2_n_0 ),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [7]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [10]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [2]),
        .I5(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3_n_0 ),
        .O(timeout_done_ns));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2 
       (.I0(\gen_tdest_router.busy_r [0]),
        .I1(\gen_tdest_router.busy_r [3]),
        .I2(\gen_tdest_router.busy_r [2]),
        .I3(\gen_tdest_router.busy_r [1]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [6]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [5]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [3]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [8]),
        .I4(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4_n_0 ),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [0]),
        .I1(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [1]),
        .I2(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [9]),
        .I3(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg [4]),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4_n_0 ));
  FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(timeout_done_ns),
        .Q(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .R(areset));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \gen_tdest_routing.busy_r[0]_i_2 
       (.I0(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .I1(m_axis_tready),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0 ),
        .I3(m_axis_tvalid),
        .O(\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[3]_0 ,
    \gen_tdest_routing.busy_r_reg[3]_1 ,
    \gen_AB_reg_slice.payload_a_reg[3] ,
    \gen_AB_reg_slice.payload_b_reg[2] ,
    \gen_AB_reg_slice.payload_b_reg[1] ,
    \gen_AB_reg_slice.payload_a_reg[3]_0 ,
    \gen_AB_reg_slice.state_reg[0] ,
    \gen_AB_reg_slice.payload_a_reg[2] ,
    \gen_tdest_routing.busy_r_reg[2]_0 ,
    \gen_AB_reg_slice.state_reg[1] ,
    \gen_AB_reg_slice.payload_b_reg[25] ,
    \gen_AB_reg_slice.payload_b_reg[24] ,
    \gen_AB_reg_slice.payload_b_reg[23] ,
    \gen_AB_reg_slice.payload_b_reg[22] ,
    \gen_AB_reg_slice.payload_b_reg[21] ,
    \gen_AB_reg_slice.payload_b_reg[20] ,
    \gen_AB_reg_slice.payload_b_reg[19] ,
    \gen_AB_reg_slice.payload_b_reg[18] ,
    \gen_AB_reg_slice.payload_b_reg[17] ,
    \gen_AB_reg_slice.payload_b_reg[16] ,
    \gen_AB_reg_slice.payload_b_reg[15] ,
    \gen_AB_reg_slice.payload_b_reg[14] ,
    \gen_AB_reg_slice.payload_b_reg[13] ,
    \gen_AB_reg_slice.payload_b_reg[12] ,
    \gen_AB_reg_slice.payload_b_reg[11] ,
    \gen_AB_reg_slice.payload_b_reg[10] ,
    \gen_AB_reg_slice.payload_b_reg[9] ,
    \gen_AB_reg_slice.payload_b_reg[8] ,
    \gen_AB_reg_slice.payload_b_reg[7] ,
    \gen_AB_reg_slice.payload_b_reg[6] ,
    \gen_AB_reg_slice.payload_b_reg[5] ,
    \gen_AB_reg_slice.payload_b_reg[4] ,
    \gen_AB_reg_slice.payload_b_reg[3] ,
    \gen_AB_reg_slice.payload_b_reg[2]_0 ,
    \gen_AB_reg_slice.payload_b_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[0] ,
    \gen_tdest_routing.busy_r_reg[1]_0 ,
    areset,
    aclk,
    arb_busy_r_reg,
    arb_gnt_i,
    arb_busy_r_reg_0,
    arb_busy_r_reg_1,
    arb_sel_i,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    \gen_AB_reg_slice.state[1]_i_2 ,
    \gen_AB_reg_slice.state[1]_i_2_0 ,
    \gen_tdest_routing.busy_r_reg[3]_2 ,
    \gen_tdest_routing.busy_r_reg[1]_1 ,
    \gen_tdest_routing.busy_r_reg[2]_1 ,
    s_axis_tdest,
    s_axis_tvalid,
    \arb_gnt_r[3]_i_3__0 ,
    D);
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[3]_0 ;
  output \gen_tdest_routing.busy_r_reg[3]_1 ;
  output \gen_AB_reg_slice.payload_a_reg[3] ;
  output \gen_AB_reg_slice.payload_b_reg[2] ;
  output \gen_AB_reg_slice.payload_b_reg[1] ;
  output \gen_AB_reg_slice.payload_a_reg[3]_0 ;
  output \gen_AB_reg_slice.state_reg[0] ;
  output \gen_AB_reg_slice.payload_a_reg[2] ;
  output \gen_tdest_routing.busy_r_reg[2]_0 ;
  output \gen_AB_reg_slice.state_reg[1] ;
  output \gen_AB_reg_slice.payload_b_reg[25] ;
  output \gen_AB_reg_slice.payload_b_reg[24] ;
  output \gen_AB_reg_slice.payload_b_reg[23] ;
  output \gen_AB_reg_slice.payload_b_reg[22] ;
  output \gen_AB_reg_slice.payload_b_reg[21] ;
  output \gen_AB_reg_slice.payload_b_reg[20] ;
  output \gen_AB_reg_slice.payload_b_reg[19] ;
  output \gen_AB_reg_slice.payload_b_reg[18] ;
  output \gen_AB_reg_slice.payload_b_reg[17] ;
  output \gen_AB_reg_slice.payload_b_reg[16] ;
  output \gen_AB_reg_slice.payload_b_reg[15] ;
  output \gen_AB_reg_slice.payload_b_reg[14] ;
  output \gen_AB_reg_slice.payload_b_reg[13] ;
  output \gen_AB_reg_slice.payload_b_reg[12] ;
  output \gen_AB_reg_slice.payload_b_reg[11] ;
  output \gen_AB_reg_slice.payload_b_reg[10] ;
  output \gen_AB_reg_slice.payload_b_reg[9] ;
  output \gen_AB_reg_slice.payload_b_reg[8] ;
  output \gen_AB_reg_slice.payload_b_reg[7] ;
  output \gen_AB_reg_slice.payload_b_reg[6] ;
  output \gen_AB_reg_slice.payload_b_reg[5] ;
  output \gen_AB_reg_slice.payload_b_reg[4] ;
  output \gen_AB_reg_slice.payload_b_reg[3] ;
  output \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[0] ;
  output \gen_tdest_routing.busy_r_reg[1]_0 ;
  input areset;
  input aclk;
  input arb_busy_r_reg;
  input [2:0]arb_gnt_i;
  input arb_busy_r_reg_0;
  input arb_busy_r_reg_1;
  input [1:0]arb_sel_i;
  input [2:0]m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input \gen_AB_reg_slice.state[1]_i_2 ;
  input \gen_AB_reg_slice.state[1]_i_2_0 ;
  input [0:0]\gen_tdest_routing.busy_r_reg[3]_2 ;
  input \gen_tdest_routing.busy_r_reg[1]_1 ;
  input \gen_tdest_routing.busy_r_reg[2]_1 ;
  input [7:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input \arb_gnt_r[3]_i_3__0 ;
  input [17:0]D;

  wire [17:0]D;
  wire aclk;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire arb_busy_r_reg_1;
  wire [2:0]arb_gnt_i;
  wire \arb_gnt_r[3]_i_3__0 ;
  wire [1:0]arb_sel_i;
  wire areset;
  wire \gen_AB_reg_slice.payload_a_reg[2] ;
  wire \gen_AB_reg_slice.payload_a_reg[3] ;
  wire \gen_AB_reg_slice.payload_a_reg[3]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[0] ;
  wire \gen_AB_reg_slice.payload_b_reg[10] ;
  wire \gen_AB_reg_slice.payload_b_reg[11] ;
  wire \gen_AB_reg_slice.payload_b_reg[12] ;
  wire \gen_AB_reg_slice.payload_b_reg[13] ;
  wire \gen_AB_reg_slice.payload_b_reg[14] ;
  wire \gen_AB_reg_slice.payload_b_reg[15] ;
  wire \gen_AB_reg_slice.payload_b_reg[16] ;
  wire \gen_AB_reg_slice.payload_b_reg[17] ;
  wire \gen_AB_reg_slice.payload_b_reg[18] ;
  wire \gen_AB_reg_slice.payload_b_reg[19] ;
  wire \gen_AB_reg_slice.payload_b_reg[1] ;
  wire \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[20] ;
  wire \gen_AB_reg_slice.payload_b_reg[21] ;
  wire \gen_AB_reg_slice.payload_b_reg[22] ;
  wire \gen_AB_reg_slice.payload_b_reg[23] ;
  wire \gen_AB_reg_slice.payload_b_reg[24] ;
  wire \gen_AB_reg_slice.payload_b_reg[25] ;
  wire \gen_AB_reg_slice.payload_b_reg[2] ;
  wire \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3] ;
  wire \gen_AB_reg_slice.payload_b_reg[4] ;
  wire \gen_AB_reg_slice.payload_b_reg[5] ;
  wire \gen_AB_reg_slice.payload_b_reg[6] ;
  wire \gen_AB_reg_slice.payload_b_reg[7] ;
  wire \gen_AB_reg_slice.payload_b_reg[8] ;
  wire \gen_AB_reg_slice.payload_b_reg[9] ;
  wire \gen_AB_reg_slice.state[1]_i_2 ;
  wire \gen_AB_reg_slice.state[1]_i_2_0 ;
  wire \gen_AB_reg_slice.state_reg[0] ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [2:1]\gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[1]_0 ;
  wire \gen_tdest_routing.busy_r_reg[1]_1 ;
  wire \gen_tdest_routing.busy_r_reg[2]_0 ;
  wire \gen_tdest_routing.busy_r_reg[2]_1 ;
  wire \gen_tdest_routing.busy_r_reg[3]_0 ;
  wire \gen_tdest_routing.busy_r_reg[3]_1 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_2 ;
  wire \gen_tdest_routing.busy_r_reg_n_0_[1] ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_6 ;
  wire [2:0]m_axis_tready;
  wire [7:0]s_axis_tdest;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[1]_i_1__0 
       (.I0(\gen_tdest_routing.busy_r_reg_n_0_[1] ),
        .I1(arb_gnt_i[0]),
        .I2(\gen_tdest_routing.busy_r_reg[1]_1 ),
        .O(\gen_tdest_routing.busy_ns [1]));
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[2]_i_1__0 
       (.I0(\gen_tdest_routing.busy_r_reg[2]_0 ),
        .I1(arb_gnt_i[1]),
        .I2(\gen_tdest_routing.busy_r_reg[2]_1 ),
        .O(\gen_tdest_routing.busy_ns [2]));
  FDRE \gen_tdest_routing.busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns [1]),
        .Q(\gen_tdest_routing.busy_r_reg_n_0_[1] ),
        .R(areset));
  FDRE \gen_tdest_routing.busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns [2]),
        .Q(\gen_tdest_routing.busy_r_reg[2]_0 ),
        .R(areset));
  FDRE \gen_tdest_routing.busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_r_reg[3]_2 ),
        .Q(\gen_tdest_routing.busy_r_reg[3]_1 ),
        .R(areset));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
  axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_12 \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0 
       (.D({D[17],s_axis_tdest,D[16:0]}),
        .aclk(aclk),
        .areset(areset),
        .\gen_AB_reg_slice.payload_b_reg[0]_0 (\gen_AB_reg_slice.payload_b_reg[0] ),
        .\gen_AB_reg_slice.payload_b_reg[10]_0 (\gen_AB_reg_slice.payload_b_reg[10] ),
        .\gen_AB_reg_slice.payload_b_reg[11]_0 (\gen_AB_reg_slice.payload_b_reg[11] ),
        .\gen_AB_reg_slice.payload_b_reg[12]_0 (\gen_AB_reg_slice.payload_b_reg[12] ),
        .\gen_AB_reg_slice.payload_b_reg[13]_0 (\gen_AB_reg_slice.payload_b_reg[13] ),
        .\gen_AB_reg_slice.payload_b_reg[14]_0 (\gen_AB_reg_slice.payload_b_reg[14] ),
        .\gen_AB_reg_slice.payload_b_reg[15]_0 (\gen_AB_reg_slice.payload_b_reg[15] ),
        .\gen_AB_reg_slice.payload_b_reg[16]_0 (\gen_AB_reg_slice.payload_b_reg[16] ),
        .\gen_AB_reg_slice.payload_b_reg[17]_0 (\gen_AB_reg_slice.payload_b_reg[17] ),
        .\gen_AB_reg_slice.payload_b_reg[18]_0 (\gen_AB_reg_slice.payload_b_reg[18] ),
        .\gen_AB_reg_slice.payload_b_reg[19]_0 (\gen_AB_reg_slice.payload_b_reg[19] ),
        .\gen_AB_reg_slice.payload_b_reg[1]_0 (\gen_AB_reg_slice.payload_b_reg[1]_0 ),
        .\gen_AB_reg_slice.payload_b_reg[20]_0 (\gen_AB_reg_slice.payload_b_reg[20] ),
        .\gen_AB_reg_slice.payload_b_reg[21]_0 (\gen_AB_reg_slice.payload_b_reg[21] ),
        .\gen_AB_reg_slice.payload_b_reg[22]_0 (\gen_AB_reg_slice.payload_b_reg[22] ),
        .\gen_AB_reg_slice.payload_b_reg[23]_0 (\gen_AB_reg_slice.payload_b_reg[23] ),
        .\gen_AB_reg_slice.payload_b_reg[24]_0 (\gen_AB_reg_slice.payload_b_reg[24] ),
        .\gen_AB_reg_slice.payload_b_reg[25]_0 (\gen_AB_reg_slice.payload_b_reg[25] ),
        .\gen_AB_reg_slice.payload_b_reg[2]_0 (\gen_AB_reg_slice.payload_b_reg[2]_0 ),
        .\gen_AB_reg_slice.payload_b_reg[3]_0 (\gen_AB_reg_slice.payload_b_reg[3] ),
        .\gen_AB_reg_slice.payload_b_reg[4]_0 (\gen_AB_reg_slice.payload_b_reg[4] ),
        .\gen_AB_reg_slice.payload_b_reg[5]_0 (\gen_AB_reg_slice.payload_b_reg[5] ),
        .\gen_AB_reg_slice.payload_b_reg[6]_0 (\gen_AB_reg_slice.payload_b_reg[6] ),
        .\gen_AB_reg_slice.payload_b_reg[7]_0 (\gen_AB_reg_slice.payload_b_reg[7] ),
        .\gen_AB_reg_slice.payload_b_reg[8]_0 (\gen_AB_reg_slice.payload_b_reg[8] ),
        .\gen_AB_reg_slice.payload_b_reg[9]_0 (\gen_AB_reg_slice.payload_b_reg[9] ),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .\gen_AB_reg_slice.state_reg[1]_1 (\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_6 ),
        .s_axis_tvalid(s_axis_tvalid));
  axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_13 \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1 
       (.aclk(aclk),
        .arb_busy_r_reg(arb_busy_r_reg),
        .arb_busy_r_reg_0(\gen_tdest_routing.busy_r_reg[3]_1 ),
        .arb_busy_r_reg_1(arb_busy_r_reg_0),
        .arb_busy_r_reg_2(arb_busy_r_reg_1),
        .arb_busy_r_reg_3(\gen_tdest_routing.busy_r_reg_n_0_[1] ),
        .arb_busy_r_reg_4(\gen_tdest_routing.busy_r_reg[2]_0 ),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r[3]_i_3__0 (\arb_gnt_r[3]_i_3__0 ),
        .arb_sel_i(arb_sel_i),
        .areset(areset),
        .\gen_AB_reg_slice.payload_a_reg[2]_0 (\gen_AB_reg_slice.payload_a_reg[2] ),
        .\gen_AB_reg_slice.payload_a_reg[3]_0 (\gen_AB_reg_slice.payload_a_reg[3] ),
        .\gen_AB_reg_slice.payload_a_reg[3]_1 (\gen_AB_reg_slice.payload_a_reg[3]_0 ),
        .\gen_AB_reg_slice.payload_b_reg[1]_0 (\gen_AB_reg_slice.payload_b_reg[1] ),
        .\gen_AB_reg_slice.payload_b_reg[2]_0 (\gen_AB_reg_slice.payload_b_reg[2] ),
        .\gen_AB_reg_slice.state[1]_i_2_0 (\gen_AB_reg_slice.state[1]_i_2 ),
        .\gen_AB_reg_slice.state[1]_i_2_1 (\gen_AB_reg_slice.state[1]_i_2_0 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_r_reg[1] (\gen_tdest_routing.busy_r_reg[1]_0 ),
        .\gen_tdest_routing.busy_r_reg[3] (\gen_tdest_routing.busy_r_reg[3]_0 ),
        .\gen_tdest_routing.decode_err_r0 (\gen_tdest_routing.decode_err_r0 ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tready_2_sp_1(\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_6 ),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0
   (s_decode_err,
    \gen_AB_reg_slice.state_reg[0] ,
    \gen_tdest_routing.busy_r_reg[3]_0 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_AB_reg_slice.payload_a_reg[0] ,
    \gen_AB_reg_slice.payload_a_reg[0]_0 ,
    \gen_AB_reg_slice.state_reg[1] ,
    \gen_AB_reg_slice.payload_b_reg[25] ,
    \gen_AB_reg_slice.payload_b_reg[24] ,
    \gen_AB_reg_slice.payload_b_reg[23] ,
    \gen_AB_reg_slice.payload_b_reg[22] ,
    \gen_AB_reg_slice.payload_b_reg[21] ,
    \gen_AB_reg_slice.payload_b_reg[20] ,
    \gen_AB_reg_slice.payload_b_reg[19] ,
    \gen_AB_reg_slice.payload_b_reg[18] ,
    \gen_AB_reg_slice.payload_b_reg[17] ,
    \gen_AB_reg_slice.payload_b_reg[16] ,
    \gen_AB_reg_slice.payload_b_reg[15] ,
    \gen_AB_reg_slice.payload_b_reg[14] ,
    \gen_AB_reg_slice.payload_b_reg[13] ,
    \gen_AB_reg_slice.payload_b_reg[12] ,
    \gen_AB_reg_slice.payload_b_reg[11] ,
    \gen_AB_reg_slice.payload_b_reg[10] ,
    \gen_AB_reg_slice.payload_b_reg[9] ,
    \gen_AB_reg_slice.payload_b_reg[8] ,
    \gen_AB_reg_slice.payload_b_reg[7] ,
    \gen_AB_reg_slice.payload_b_reg[6] ,
    \gen_AB_reg_slice.payload_b_reg[5] ,
    \gen_AB_reg_slice.payload_b_reg[4] ,
    \gen_AB_reg_slice.payload_b_reg[3] ,
    \gen_AB_reg_slice.payload_b_reg[2] ,
    \gen_AB_reg_slice.payload_b_reg[1] ,
    \gen_AB_reg_slice.payload_b_reg[0] ,
    areset,
    aclk,
    arb_gnt_i,
    arb_sel_i,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    \gen_tdest_router.busy_r_0 ,
    \gen_tdest_routing.busy_r_reg[3]_1 ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    D,
    s_axis_tvalid);
  output [0:0]s_decode_err;
  output \gen_AB_reg_slice.state_reg[0] ;
  output \gen_tdest_routing.busy_r_reg[3]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_AB_reg_slice.payload_a_reg[0] ;
  output \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  output \gen_AB_reg_slice.state_reg[1] ;
  output \gen_AB_reg_slice.payload_b_reg[25] ;
  output \gen_AB_reg_slice.payload_b_reg[24] ;
  output \gen_AB_reg_slice.payload_b_reg[23] ;
  output \gen_AB_reg_slice.payload_b_reg[22] ;
  output \gen_AB_reg_slice.payload_b_reg[21] ;
  output \gen_AB_reg_slice.payload_b_reg[20] ;
  output \gen_AB_reg_slice.payload_b_reg[19] ;
  output \gen_AB_reg_slice.payload_b_reg[18] ;
  output \gen_AB_reg_slice.payload_b_reg[17] ;
  output \gen_AB_reg_slice.payload_b_reg[16] ;
  output \gen_AB_reg_slice.payload_b_reg[15] ;
  output \gen_AB_reg_slice.payload_b_reg[14] ;
  output \gen_AB_reg_slice.payload_b_reg[13] ;
  output \gen_AB_reg_slice.payload_b_reg[12] ;
  output \gen_AB_reg_slice.payload_b_reg[11] ;
  output \gen_AB_reg_slice.payload_b_reg[10] ;
  output \gen_AB_reg_slice.payload_b_reg[9] ;
  output \gen_AB_reg_slice.payload_b_reg[8] ;
  output \gen_AB_reg_slice.payload_b_reg[7] ;
  output \gen_AB_reg_slice.payload_b_reg[6] ;
  output \gen_AB_reg_slice.payload_b_reg[5] ;
  output \gen_AB_reg_slice.payload_b_reg[4] ;
  output \gen_AB_reg_slice.payload_b_reg[3] ;
  output \gen_AB_reg_slice.payload_b_reg[2] ;
  output \gen_AB_reg_slice.payload_b_reg[1] ;
  output \gen_AB_reg_slice.payload_b_reg[0] ;
  input areset;
  input aclk;
  input [1:0]arb_gnt_i;
  input [3:0]arb_sel_i;
  input [1:0]m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]\gen_tdest_router.busy_r_0 ;
  input [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input [25:0]D;
  input [0:0]s_axis_tvalid;

  wire [25:0]D;
  wire aclk;
  wire [1:0]arb_gnt_i;
  wire [3:0]arb_sel_i;
  wire areset;
  wire \gen_AB_reg_slice.payload_a_reg[0] ;
  wire \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[0] ;
  wire \gen_AB_reg_slice.payload_b_reg[10] ;
  wire \gen_AB_reg_slice.payload_b_reg[11] ;
  wire \gen_AB_reg_slice.payload_b_reg[12] ;
  wire \gen_AB_reg_slice.payload_b_reg[13] ;
  wire \gen_AB_reg_slice.payload_b_reg[14] ;
  wire \gen_AB_reg_slice.payload_b_reg[15] ;
  wire \gen_AB_reg_slice.payload_b_reg[16] ;
  wire \gen_AB_reg_slice.payload_b_reg[17] ;
  wire \gen_AB_reg_slice.payload_b_reg[18] ;
  wire \gen_AB_reg_slice.payload_b_reg[19] ;
  wire \gen_AB_reg_slice.payload_b_reg[1] ;
  wire \gen_AB_reg_slice.payload_b_reg[20] ;
  wire \gen_AB_reg_slice.payload_b_reg[21] ;
  wire \gen_AB_reg_slice.payload_b_reg[22] ;
  wire \gen_AB_reg_slice.payload_b_reg[23] ;
  wire \gen_AB_reg_slice.payload_b_reg[24] ;
  wire \gen_AB_reg_slice.payload_b_reg[25] ;
  wire \gen_AB_reg_slice.payload_b_reg[2] ;
  wire \gen_AB_reg_slice.payload_b_reg[3] ;
  wire \gen_AB_reg_slice.payload_b_reg[4] ;
  wire \gen_AB_reg_slice.payload_b_reg[5] ;
  wire \gen_AB_reg_slice.payload_b_reg[6] ;
  wire \gen_AB_reg_slice.payload_b_reg[7] ;
  wire \gen_AB_reg_slice.payload_b_reg[8] ;
  wire \gen_AB_reg_slice.payload_b_reg[9] ;
  wire \gen_AB_reg_slice.state_reg[0] ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [0:0]\gen_tdest_router.busy_r_0 ;
  wire [0:0]\gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[3]_0 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  wire \gen_tdest_routing.busy_r_reg_n_0_[0] ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3 ;
  wire [1:0]m_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__1 
       (.I0(\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .I1(arb_gnt_i[0]),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .O(\gen_tdest_routing.busy_ns ));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .R(areset));
  FDRE \gen_tdest_routing.busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_r_reg[3]_1 ),
        .Q(\gen_tdest_routing.busy_r_reg[3]_0 ),
        .R(areset));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
  axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_10 \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0 
       (.D(D),
        .aclk(aclk),
        .areset(areset),
        .\gen_AB_reg_slice.payload_b_reg[0]_0 (\gen_AB_reg_slice.payload_b_reg[0] ),
        .\gen_AB_reg_slice.payload_b_reg[10]_0 (\gen_AB_reg_slice.payload_b_reg[10] ),
        .\gen_AB_reg_slice.payload_b_reg[11]_0 (\gen_AB_reg_slice.payload_b_reg[11] ),
        .\gen_AB_reg_slice.payload_b_reg[12]_0 (\gen_AB_reg_slice.payload_b_reg[12] ),
        .\gen_AB_reg_slice.payload_b_reg[13]_0 (\gen_AB_reg_slice.payload_b_reg[13] ),
        .\gen_AB_reg_slice.payload_b_reg[14]_0 (\gen_AB_reg_slice.payload_b_reg[14] ),
        .\gen_AB_reg_slice.payload_b_reg[15]_0 (\gen_AB_reg_slice.payload_b_reg[15] ),
        .\gen_AB_reg_slice.payload_b_reg[16]_0 (\gen_AB_reg_slice.payload_b_reg[16] ),
        .\gen_AB_reg_slice.payload_b_reg[17]_0 (\gen_AB_reg_slice.payload_b_reg[17] ),
        .\gen_AB_reg_slice.payload_b_reg[18]_0 (\gen_AB_reg_slice.payload_b_reg[18] ),
        .\gen_AB_reg_slice.payload_b_reg[19]_0 (\gen_AB_reg_slice.payload_b_reg[19] ),
        .\gen_AB_reg_slice.payload_b_reg[1]_0 (\gen_AB_reg_slice.payload_b_reg[1] ),
        .\gen_AB_reg_slice.payload_b_reg[20]_0 (\gen_AB_reg_slice.payload_b_reg[20] ),
        .\gen_AB_reg_slice.payload_b_reg[21]_0 (\gen_AB_reg_slice.payload_b_reg[21] ),
        .\gen_AB_reg_slice.payload_b_reg[22]_0 (\gen_AB_reg_slice.payload_b_reg[22] ),
        .\gen_AB_reg_slice.payload_b_reg[23]_0 (\gen_AB_reg_slice.payload_b_reg[23] ),
        .\gen_AB_reg_slice.payload_b_reg[24]_0 (\gen_AB_reg_slice.payload_b_reg[24] ),
        .\gen_AB_reg_slice.payload_b_reg[25]_0 (\gen_AB_reg_slice.payload_b_reg[25] ),
        .\gen_AB_reg_slice.payload_b_reg[2]_0 (\gen_AB_reg_slice.payload_b_reg[2] ),
        .\gen_AB_reg_slice.payload_b_reg[3]_0 (\gen_AB_reg_slice.payload_b_reg[3] ),
        .\gen_AB_reg_slice.payload_b_reg[4]_0 (\gen_AB_reg_slice.payload_b_reg[4] ),
        .\gen_AB_reg_slice.payload_b_reg[5]_0 (\gen_AB_reg_slice.payload_b_reg[5] ),
        .\gen_AB_reg_slice.payload_b_reg[6]_0 (\gen_AB_reg_slice.payload_b_reg[6] ),
        .\gen_AB_reg_slice.payload_b_reg[7]_0 (\gen_AB_reg_slice.payload_b_reg[7] ),
        .\gen_AB_reg_slice.payload_b_reg[8]_0 (\gen_AB_reg_slice.payload_b_reg[8] ),
        .\gen_AB_reg_slice.payload_b_reg[9]_0 (\gen_AB_reg_slice.payload_b_reg[9] ),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .\gen_AB_reg_slice.state_reg[1]_1 (\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3 ),
        .s_axis_tvalid(s_axis_tvalid));
  axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_11 \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1 
       (.D(D[24:17]),
        .aclk(aclk),
        .arb_busy_r_i_2(\gen_tdest_routing.busy_r_reg[3]_0 ),
        .arb_busy_r_i_2__2(\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .arb_gnt_i(arb_gnt_i),
        .arb_sel_i(arb_sel_i),
        .areset(areset),
        .\gen_AB_reg_slice.payload_a_reg[0]_0 (\gen_AB_reg_slice.payload_a_reg[0] ),
        .\gen_AB_reg_slice.payload_a_reg[0]_1 (\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_AB_reg_slice.state_reg[0]_1 (\gen_AB_reg_slice.state_reg[0]_0 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_router.busy_r_0 (\gen_tdest_router.busy_r_0 ),
        .\gen_tdest_routing.decode_err_r0 (\gen_tdest_routing.decode_err_r0 ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tready_0_sp_1(\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3 ),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0_0
   (s_decode_err,
    \gen_AB_reg_slice.state_reg[0] ,
    \gen_tdest_routing.busy_r_reg[3]_0 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_AB_reg_slice.payload_b_reg[0] ,
    \gen_AB_reg_slice.payload_a_reg[0] ,
    \gen_AB_reg_slice.state_reg[1] ,
    \gen_AB_reg_slice.payload_b_reg[25] ,
    \gen_AB_reg_slice.payload_b_reg[24] ,
    \gen_AB_reg_slice.payload_b_reg[23] ,
    \gen_AB_reg_slice.payload_b_reg[22] ,
    \gen_AB_reg_slice.payload_b_reg[21] ,
    \gen_AB_reg_slice.payload_b_reg[20] ,
    \gen_AB_reg_slice.payload_b_reg[19] ,
    \gen_AB_reg_slice.payload_b_reg[18] ,
    \gen_AB_reg_slice.payload_b_reg[17] ,
    \gen_AB_reg_slice.payload_b_reg[16] ,
    \gen_AB_reg_slice.payload_b_reg[15] ,
    \gen_AB_reg_slice.payload_b_reg[14] ,
    \gen_AB_reg_slice.payload_b_reg[13] ,
    \gen_AB_reg_slice.payload_b_reg[12] ,
    \gen_AB_reg_slice.payload_b_reg[11] ,
    \gen_AB_reg_slice.payload_b_reg[10] ,
    \gen_AB_reg_slice.payload_b_reg[9] ,
    \gen_AB_reg_slice.payload_b_reg[8] ,
    \gen_AB_reg_slice.payload_b_reg[7] ,
    \gen_AB_reg_slice.payload_b_reg[6] ,
    \gen_AB_reg_slice.payload_b_reg[5] ,
    \gen_AB_reg_slice.payload_b_reg[4] ,
    \gen_AB_reg_slice.payload_b_reg[3] ,
    \gen_AB_reg_slice.payload_b_reg[2] ,
    \gen_AB_reg_slice.payload_b_reg[1] ,
    \gen_AB_reg_slice.payload_b_reg[0]_0 ,
    \gen_AB_reg_slice.payload_a_reg[0]_0 ,
    areset,
    aclk,
    \gen_tdest_routing.busy_r_reg[3]_1 ,
    arb_gnt_i,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    arb_sel_i,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    \gen_tdest_router.busy_r_0 ,
    D,
    s_axis_tvalid,
    arb_busy_r_reg,
    arb_busy_r_reg_0);
  output [0:0]s_decode_err;
  output \gen_AB_reg_slice.state_reg[0] ;
  output \gen_tdest_routing.busy_r_reg[3]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[0] ;
  output \gen_AB_reg_slice.payload_a_reg[0] ;
  output \gen_AB_reg_slice.state_reg[1] ;
  output \gen_AB_reg_slice.payload_b_reg[25] ;
  output \gen_AB_reg_slice.payload_b_reg[24] ;
  output \gen_AB_reg_slice.payload_b_reg[23] ;
  output \gen_AB_reg_slice.payload_b_reg[22] ;
  output \gen_AB_reg_slice.payload_b_reg[21] ;
  output \gen_AB_reg_slice.payload_b_reg[20] ;
  output \gen_AB_reg_slice.payload_b_reg[19] ;
  output \gen_AB_reg_slice.payload_b_reg[18] ;
  output \gen_AB_reg_slice.payload_b_reg[17] ;
  output \gen_AB_reg_slice.payload_b_reg[16] ;
  output \gen_AB_reg_slice.payload_b_reg[15] ;
  output \gen_AB_reg_slice.payload_b_reg[14] ;
  output \gen_AB_reg_slice.payload_b_reg[13] ;
  output \gen_AB_reg_slice.payload_b_reg[12] ;
  output \gen_AB_reg_slice.payload_b_reg[11] ;
  output \gen_AB_reg_slice.payload_b_reg[10] ;
  output \gen_AB_reg_slice.payload_b_reg[9] ;
  output \gen_AB_reg_slice.payload_b_reg[8] ;
  output \gen_AB_reg_slice.payload_b_reg[7] ;
  output \gen_AB_reg_slice.payload_b_reg[6] ;
  output \gen_AB_reg_slice.payload_b_reg[5] ;
  output \gen_AB_reg_slice.payload_b_reg[4] ;
  output \gen_AB_reg_slice.payload_b_reg[3] ;
  output \gen_AB_reg_slice.payload_b_reg[2] ;
  output \gen_AB_reg_slice.payload_b_reg[1] ;
  output \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  output \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  input areset;
  input aclk;
  input [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  input [1:0]arb_gnt_i;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input [1:0]arb_sel_i;
  input [1:0]m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]\gen_tdest_router.busy_r_0 ;
  input [25:0]D;
  input [0:0]s_axis_tvalid;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;

  wire [25:0]D;
  wire aclk;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire [1:0]arb_gnt_i;
  wire [1:0]arb_sel_i;
  wire areset;
  wire \gen_AB_reg_slice.payload_a_reg[0] ;
  wire \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[0] ;
  wire \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[10] ;
  wire \gen_AB_reg_slice.payload_b_reg[11] ;
  wire \gen_AB_reg_slice.payload_b_reg[12] ;
  wire \gen_AB_reg_slice.payload_b_reg[13] ;
  wire \gen_AB_reg_slice.payload_b_reg[14] ;
  wire \gen_AB_reg_slice.payload_b_reg[15] ;
  wire \gen_AB_reg_slice.payload_b_reg[16] ;
  wire \gen_AB_reg_slice.payload_b_reg[17] ;
  wire \gen_AB_reg_slice.payload_b_reg[18] ;
  wire \gen_AB_reg_slice.payload_b_reg[19] ;
  wire \gen_AB_reg_slice.payload_b_reg[1] ;
  wire \gen_AB_reg_slice.payload_b_reg[20] ;
  wire \gen_AB_reg_slice.payload_b_reg[21] ;
  wire \gen_AB_reg_slice.payload_b_reg[22] ;
  wire \gen_AB_reg_slice.payload_b_reg[23] ;
  wire \gen_AB_reg_slice.payload_b_reg[24] ;
  wire \gen_AB_reg_slice.payload_b_reg[25] ;
  wire \gen_AB_reg_slice.payload_b_reg[2] ;
  wire \gen_AB_reg_slice.payload_b_reg[3] ;
  wire \gen_AB_reg_slice.payload_b_reg[4] ;
  wire \gen_AB_reg_slice.payload_b_reg[5] ;
  wire \gen_AB_reg_slice.payload_b_reg[6] ;
  wire \gen_AB_reg_slice.payload_b_reg[7] ;
  wire \gen_AB_reg_slice.payload_b_reg[8] ;
  wire \gen_AB_reg_slice.payload_b_reg[9] ;
  wire \gen_AB_reg_slice.state_reg[0] ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [0:0]\gen_tdest_router.busy_r_0 ;
  wire [0:0]\gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[3]_0 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  wire \gen_tdest_routing.busy_r_reg_n_0_[0] ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3 ;
  wire [1:0]m_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .I1(arb_gnt_i[0]),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .O(\gen_tdest_routing.busy_ns ));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .R(areset));
  FDRE \gen_tdest_routing.busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_r_reg[3]_1 ),
        .Q(\gen_tdest_routing.busy_r_reg[3]_0 ),
        .R(areset));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
  axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_8 \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0 
       (.D(D),
        .aclk(aclk),
        .areset(areset),
        .\gen_AB_reg_slice.payload_b_reg[0]_0 (\gen_AB_reg_slice.payload_b_reg[0]_0 ),
        .\gen_AB_reg_slice.payload_b_reg[10]_0 (\gen_AB_reg_slice.payload_b_reg[10] ),
        .\gen_AB_reg_slice.payload_b_reg[11]_0 (\gen_AB_reg_slice.payload_b_reg[11] ),
        .\gen_AB_reg_slice.payload_b_reg[12]_0 (\gen_AB_reg_slice.payload_b_reg[12] ),
        .\gen_AB_reg_slice.payload_b_reg[13]_0 (\gen_AB_reg_slice.payload_b_reg[13] ),
        .\gen_AB_reg_slice.payload_b_reg[14]_0 (\gen_AB_reg_slice.payload_b_reg[14] ),
        .\gen_AB_reg_slice.payload_b_reg[15]_0 (\gen_AB_reg_slice.payload_b_reg[15] ),
        .\gen_AB_reg_slice.payload_b_reg[16]_0 (\gen_AB_reg_slice.payload_b_reg[16] ),
        .\gen_AB_reg_slice.payload_b_reg[17]_0 (\gen_AB_reg_slice.payload_b_reg[17] ),
        .\gen_AB_reg_slice.payload_b_reg[18]_0 (\gen_AB_reg_slice.payload_b_reg[18] ),
        .\gen_AB_reg_slice.payload_b_reg[19]_0 (\gen_AB_reg_slice.payload_b_reg[19] ),
        .\gen_AB_reg_slice.payload_b_reg[1]_0 (\gen_AB_reg_slice.payload_b_reg[1] ),
        .\gen_AB_reg_slice.payload_b_reg[20]_0 (\gen_AB_reg_slice.payload_b_reg[20] ),
        .\gen_AB_reg_slice.payload_b_reg[21]_0 (\gen_AB_reg_slice.payload_b_reg[21] ),
        .\gen_AB_reg_slice.payload_b_reg[22]_0 (\gen_AB_reg_slice.payload_b_reg[22] ),
        .\gen_AB_reg_slice.payload_b_reg[23]_0 (\gen_AB_reg_slice.payload_b_reg[23] ),
        .\gen_AB_reg_slice.payload_b_reg[24]_0 (\gen_AB_reg_slice.payload_b_reg[24] ),
        .\gen_AB_reg_slice.payload_b_reg[25]_0 (\gen_AB_reg_slice.payload_b_reg[25] ),
        .\gen_AB_reg_slice.payload_b_reg[2]_0 (\gen_AB_reg_slice.payload_b_reg[2] ),
        .\gen_AB_reg_slice.payload_b_reg[3]_0 (\gen_AB_reg_slice.payload_b_reg[3] ),
        .\gen_AB_reg_slice.payload_b_reg[4]_0 (\gen_AB_reg_slice.payload_b_reg[4] ),
        .\gen_AB_reg_slice.payload_b_reg[5]_0 (\gen_AB_reg_slice.payload_b_reg[5] ),
        .\gen_AB_reg_slice.payload_b_reg[6]_0 (\gen_AB_reg_slice.payload_b_reg[6] ),
        .\gen_AB_reg_slice.payload_b_reg[7]_0 (\gen_AB_reg_slice.payload_b_reg[7] ),
        .\gen_AB_reg_slice.payload_b_reg[8]_0 (\gen_AB_reg_slice.payload_b_reg[8] ),
        .\gen_AB_reg_slice.payload_b_reg[9]_0 (\gen_AB_reg_slice.payload_b_reg[9] ),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .\gen_AB_reg_slice.state_reg[1]_1 (\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3 ),
        .s_axis_tvalid(s_axis_tvalid));
  axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_9 \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1 
       (.D(D[24:17]),
        .aclk(aclk),
        .arb_busy_r_i_2(\gen_tdest_routing.busy_r_reg[3]_0 ),
        .arb_busy_r_reg(arb_busy_r_reg),
        .arb_busy_r_reg_0(arb_busy_r_reg_0),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r[3]_i_9__2 (\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .arb_sel_i(arb_sel_i),
        .areset(areset),
        .\gen_AB_reg_slice.payload_a_reg[0]_0 (\gen_AB_reg_slice.payload_a_reg[0] ),
        .\gen_AB_reg_slice.payload_a_reg[0]_1 (\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .\gen_AB_reg_slice.payload_b_reg[0]_0 (\gen_AB_reg_slice.payload_b_reg[0] ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_AB_reg_slice.state_reg[0]_1 (\gen_AB_reg_slice.state_reg[0]_0 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_router.busy_r_0 (\gen_tdest_router.busy_r_0 ),
        .\gen_tdest_routing.decode_err_r0 (\gen_tdest_routing.decode_err_r0 ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tready_0_sp_1(\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3 ),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized1
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[1]_0 ,
    \gen_tdest_routing.busy_r_reg[2]_0 ,
    \gen_AB_reg_slice.payload_b_reg[1] ,
    \gen_AB_reg_slice.state_reg[0] ,
    \gen_AB_reg_slice.payload_b_reg[2] ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_AB_reg_slice.state_reg[0]_1 ,
    \gen_AB_reg_slice.state_reg[0]_2 ,
    \gen_AB_reg_slice.payload_b_reg[3] ,
    \gen_tdest_routing.busy_r_reg[3]_0 ,
    \gen_AB_reg_slice.payload_b_reg[3]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_AB_reg_slice.payload_b_reg[0] ,
    \gen_AB_reg_slice.state_reg[1] ,
    \gen_AB_reg_slice.payload_b_reg[25] ,
    \gen_AB_reg_slice.payload_b_reg[24] ,
    \gen_AB_reg_slice.payload_b_reg[23] ,
    \gen_AB_reg_slice.payload_b_reg[22] ,
    \gen_AB_reg_slice.payload_b_reg[21] ,
    \gen_AB_reg_slice.payload_b_reg[20] ,
    \gen_AB_reg_slice.payload_b_reg[19] ,
    \gen_AB_reg_slice.payload_b_reg[18] ,
    \gen_AB_reg_slice.payload_b_reg[17] ,
    \gen_AB_reg_slice.payload_b_reg[16] ,
    \gen_AB_reg_slice.payload_b_reg[15] ,
    \gen_AB_reg_slice.payload_b_reg[14] ,
    \gen_AB_reg_slice.payload_b_reg[13] ,
    \gen_AB_reg_slice.payload_b_reg[12] ,
    \gen_AB_reg_slice.payload_b_reg[11] ,
    \gen_AB_reg_slice.payload_b_reg[10] ,
    \gen_AB_reg_slice.payload_b_reg[9] ,
    \gen_AB_reg_slice.payload_b_reg[8] ,
    \gen_AB_reg_slice.payload_b_reg[7] ,
    \gen_AB_reg_slice.payload_b_reg[6] ,
    \gen_AB_reg_slice.payload_b_reg[5] ,
    \gen_AB_reg_slice.payload_b_reg[4] ,
    \gen_AB_reg_slice.payload_b_reg[3]_1 ,
    \gen_AB_reg_slice.payload_b_reg[2]_0 ,
    \gen_AB_reg_slice.payload_b_reg[1]_0 ,
    \gen_AB_reg_slice.payload_b_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[2]_1 ,
    areset,
    aclk,
    \gen_tdest_routing.busy_r_reg[3]_1 ,
    arb_gnt_i,
    \gen_tdest_routing.busy_r_reg[1]_1 ,
    \gen_tdest_routing.busy_r_reg[2]_2 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \gen_tdest_router.busy_r ,
    m_axis_tready,
    \gen_AB_reg_slice.state[1]_i_2__2 ,
    \gen_AB_reg_slice.state[1]_i_2__2_0 ,
    arb_sel_i,
    \gen_tdest_router.busy_r_0 ,
    D,
    s_axis_tvalid,
    \arb_gnt_r[3]_i_3__1 );
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[1]_0 ;
  output \gen_tdest_routing.busy_r_reg[2]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[1] ;
  output \gen_AB_reg_slice.state_reg[0] ;
  output \gen_AB_reg_slice.payload_b_reg[2] ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_1 ;
  output \gen_AB_reg_slice.state_reg[0]_2 ;
  output \gen_AB_reg_slice.payload_b_reg[3] ;
  output \gen_tdest_routing.busy_r_reg[3]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[0] ;
  output \gen_AB_reg_slice.state_reg[1] ;
  output \gen_AB_reg_slice.payload_b_reg[25] ;
  output \gen_AB_reg_slice.payload_b_reg[24] ;
  output \gen_AB_reg_slice.payload_b_reg[23] ;
  output \gen_AB_reg_slice.payload_b_reg[22] ;
  output \gen_AB_reg_slice.payload_b_reg[21] ;
  output \gen_AB_reg_slice.payload_b_reg[20] ;
  output \gen_AB_reg_slice.payload_b_reg[19] ;
  output \gen_AB_reg_slice.payload_b_reg[18] ;
  output \gen_AB_reg_slice.payload_b_reg[17] ;
  output \gen_AB_reg_slice.payload_b_reg[16] ;
  output \gen_AB_reg_slice.payload_b_reg[15] ;
  output \gen_AB_reg_slice.payload_b_reg[14] ;
  output \gen_AB_reg_slice.payload_b_reg[13] ;
  output \gen_AB_reg_slice.payload_b_reg[12] ;
  output \gen_AB_reg_slice.payload_b_reg[11] ;
  output \gen_AB_reg_slice.payload_b_reg[10] ;
  output \gen_AB_reg_slice.payload_b_reg[9] ;
  output \gen_AB_reg_slice.payload_b_reg[8] ;
  output \gen_AB_reg_slice.payload_b_reg[7] ;
  output \gen_AB_reg_slice.payload_b_reg[6] ;
  output \gen_AB_reg_slice.payload_b_reg[5] ;
  output \gen_AB_reg_slice.payload_b_reg[4] ;
  output \gen_AB_reg_slice.payload_b_reg[3]_1 ;
  output \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  output \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  output \gen_tdest_routing.busy_r_reg[2]_1 ;
  input areset;
  input aclk;
  input [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  input [3:0]arb_gnt_i;
  input \gen_tdest_routing.busy_r_reg[1]_1 ;
  input \gen_tdest_routing.busy_r_reg[2]_2 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input [0:0]\gen_tdest_router.busy_r ;
  input [3:0]m_axis_tready;
  input \gen_AB_reg_slice.state[1]_i_2__2 ;
  input \gen_AB_reg_slice.state[1]_i_2__2_0 ;
  input [7:0]arb_sel_i;
  input [0:0]\gen_tdest_router.busy_r_0 ;
  input [25:0]D;
  input [0:0]s_axis_tvalid;
  input \arb_gnt_r[3]_i_3__1 ;

  wire [25:0]D;
  wire aclk;
  wire [3:0]arb_gnt_i;
  wire \arb_gnt_r[3]_i_3__1 ;
  wire [7:0]arb_sel_i;
  wire areset;
  wire \gen_AB_reg_slice.payload_b_reg[0] ;
  wire \gen_AB_reg_slice.payload_b_reg[0]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[10] ;
  wire \gen_AB_reg_slice.payload_b_reg[11] ;
  wire \gen_AB_reg_slice.payload_b_reg[12] ;
  wire \gen_AB_reg_slice.payload_b_reg[13] ;
  wire \gen_AB_reg_slice.payload_b_reg[14] ;
  wire \gen_AB_reg_slice.payload_b_reg[15] ;
  wire \gen_AB_reg_slice.payload_b_reg[16] ;
  wire \gen_AB_reg_slice.payload_b_reg[17] ;
  wire \gen_AB_reg_slice.payload_b_reg[18] ;
  wire \gen_AB_reg_slice.payload_b_reg[19] ;
  wire \gen_AB_reg_slice.payload_b_reg[1] ;
  wire \gen_AB_reg_slice.payload_b_reg[1]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[20] ;
  wire \gen_AB_reg_slice.payload_b_reg[21] ;
  wire \gen_AB_reg_slice.payload_b_reg[22] ;
  wire \gen_AB_reg_slice.payload_b_reg[23] ;
  wire \gen_AB_reg_slice.payload_b_reg[24] ;
  wire \gen_AB_reg_slice.payload_b_reg[25] ;
  wire \gen_AB_reg_slice.payload_b_reg[2] ;
  wire \gen_AB_reg_slice.payload_b_reg[2]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3] ;
  wire \gen_AB_reg_slice.payload_b_reg[3]_0 ;
  wire \gen_AB_reg_slice.payload_b_reg[3]_1 ;
  wire \gen_AB_reg_slice.payload_b_reg[4] ;
  wire \gen_AB_reg_slice.payload_b_reg[5] ;
  wire \gen_AB_reg_slice.payload_b_reg[6] ;
  wire \gen_AB_reg_slice.payload_b_reg[7] ;
  wire \gen_AB_reg_slice.payload_b_reg[8] ;
  wire \gen_AB_reg_slice.payload_b_reg[9] ;
  wire \gen_AB_reg_slice.state[1]_i_2__2 ;
  wire \gen_AB_reg_slice.state[1]_i_2__2_0 ;
  wire \gen_AB_reg_slice.state_reg[0] ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_1 ;
  wire \gen_AB_reg_slice.state_reg[0]_2 ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [0:0]\gen_tdest_router.busy_r_0 ;
  wire [2:0]\gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire \gen_tdest_routing.busy_r_reg[1]_0 ;
  wire \gen_tdest_routing.busy_r_reg[1]_1 ;
  wire \gen_tdest_routing.busy_r_reg[2]_0 ;
  wire \gen_tdest_routing.busy_r_reg[2]_1 ;
  wire \gen_tdest_routing.busy_r_reg[2]_2 ;
  wire \gen_tdest_routing.busy_r_reg[3]_0 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  wire \gen_tdest_routing.busy_r_reg_n_0_[0] ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0 ;
  wire [3:0]m_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .I1(arb_gnt_i[0]),
        .I2(\gen_tdest_routing.busy_r_reg[0]_1 ),
        .O(\gen_tdest_routing.busy_ns [0]));
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[1]_i_1 
       (.I0(\gen_tdest_routing.busy_r_reg[1]_0 ),
        .I1(arb_gnt_i[1]),
        .I2(\gen_tdest_routing.busy_r_reg[1]_1 ),
        .O(\gen_tdest_routing.busy_ns [1]));
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[2]_i_1 
       (.I0(\gen_tdest_routing.busy_r_reg[2]_0 ),
        .I1(arb_gnt_i[2]),
        .I2(\gen_tdest_routing.busy_r_reg[2]_2 ),
        .O(\gen_tdest_routing.busy_ns [2]));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns [0]),
        .Q(\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .R(areset));
  FDRE \gen_tdest_routing.busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns [1]),
        .Q(\gen_tdest_routing.busy_r_reg[1]_0 ),
        .R(areset));
  FDRE \gen_tdest_routing.busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns [2]),
        .Q(\gen_tdest_routing.busy_r_reg[2]_0 ),
        .R(areset));
  FDRE \gen_tdest_routing.busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_r_reg[3]_1 ),
        .Q(\gen_tdest_routing.busy_r_reg[3]_0 ),
        .R(areset));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
  axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0 
       (.D(D),
        .aclk(aclk),
        .areset(areset),
        .\gen_AB_reg_slice.payload_b_reg[0]_0 (\gen_AB_reg_slice.payload_b_reg[0]_0 ),
        .\gen_AB_reg_slice.payload_b_reg[10]_0 (\gen_AB_reg_slice.payload_b_reg[10] ),
        .\gen_AB_reg_slice.payload_b_reg[11]_0 (\gen_AB_reg_slice.payload_b_reg[11] ),
        .\gen_AB_reg_slice.payload_b_reg[12]_0 (\gen_AB_reg_slice.payload_b_reg[12] ),
        .\gen_AB_reg_slice.payload_b_reg[13]_0 (\gen_AB_reg_slice.payload_b_reg[13] ),
        .\gen_AB_reg_slice.payload_b_reg[14]_0 (\gen_AB_reg_slice.payload_b_reg[14] ),
        .\gen_AB_reg_slice.payload_b_reg[15]_0 (\gen_AB_reg_slice.payload_b_reg[15] ),
        .\gen_AB_reg_slice.payload_b_reg[16]_0 (\gen_AB_reg_slice.payload_b_reg[16] ),
        .\gen_AB_reg_slice.payload_b_reg[17]_0 (\gen_AB_reg_slice.payload_b_reg[17] ),
        .\gen_AB_reg_slice.payload_b_reg[18]_0 (\gen_AB_reg_slice.payload_b_reg[18] ),
        .\gen_AB_reg_slice.payload_b_reg[19]_0 (\gen_AB_reg_slice.payload_b_reg[19] ),
        .\gen_AB_reg_slice.payload_b_reg[1]_0 (\gen_AB_reg_slice.payload_b_reg[1]_0 ),
        .\gen_AB_reg_slice.payload_b_reg[20]_0 (\gen_AB_reg_slice.payload_b_reg[20] ),
        .\gen_AB_reg_slice.payload_b_reg[21]_0 (\gen_AB_reg_slice.payload_b_reg[21] ),
        .\gen_AB_reg_slice.payload_b_reg[22]_0 (\gen_AB_reg_slice.payload_b_reg[22] ),
        .\gen_AB_reg_slice.payload_b_reg[23]_0 (\gen_AB_reg_slice.payload_b_reg[23] ),
        .\gen_AB_reg_slice.payload_b_reg[24]_0 (\gen_AB_reg_slice.payload_b_reg[24] ),
        .\gen_AB_reg_slice.payload_b_reg[25]_0 (\gen_AB_reg_slice.payload_b_reg[25] ),
        .\gen_AB_reg_slice.payload_b_reg[2]_0 (\gen_AB_reg_slice.payload_b_reg[2]_0 ),
        .\gen_AB_reg_slice.payload_b_reg[3]_0 (\gen_AB_reg_slice.payload_b_reg[3]_1 ),
        .\gen_AB_reg_slice.payload_b_reg[4]_0 (\gen_AB_reg_slice.payload_b_reg[4] ),
        .\gen_AB_reg_slice.payload_b_reg[5]_0 (\gen_AB_reg_slice.payload_b_reg[5] ),
        .\gen_AB_reg_slice.payload_b_reg[6]_0 (\gen_AB_reg_slice.payload_b_reg[6] ),
        .\gen_AB_reg_slice.payload_b_reg[7]_0 (\gen_AB_reg_slice.payload_b_reg[7] ),
        .\gen_AB_reg_slice.payload_b_reg[8]_0 (\gen_AB_reg_slice.payload_b_reg[8] ),
        .\gen_AB_reg_slice.payload_b_reg[9]_0 (\gen_AB_reg_slice.payload_b_reg[9] ),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .\gen_AB_reg_slice.state_reg[1]_1 (\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0 ),
        .s_axis_tvalid(s_axis_tvalid));
  axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0 \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1 
       (.D(D[24:17]),
        .aclk(aclk),
        .arb_busy_r_i_2(\gen_tdest_routing.busy_r_reg[3]_0 ),
        .arb_busy_r_i_2__2(\gen_tdest_routing.busy_r_reg_n_0_[0] ),
        .arb_busy_r_reg(\gen_tdest_routing.busy_r_reg[2]_0 ),
        .arb_busy_r_reg_0(\gen_tdest_routing.busy_r_reg[1]_0 ),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r[3]_i_3__1 (\arb_gnt_r[3]_i_3__1 ),
        .arb_sel_i(arb_sel_i),
        .areset(areset),
        .\busy_r_reg[3] (\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0 ),
        .\gen_AB_reg_slice.payload_b_reg[0]_0 (\gen_AB_reg_slice.payload_b_reg[0] ),
        .\gen_AB_reg_slice.payload_b_reg[1]_0 (\gen_AB_reg_slice.payload_b_reg[1] ),
        .\gen_AB_reg_slice.payload_b_reg[2]_0 (\gen_AB_reg_slice.payload_b_reg[2] ),
        .\gen_AB_reg_slice.payload_b_reg[3]_0 (\gen_AB_reg_slice.payload_b_reg[3] ),
        .\gen_AB_reg_slice.payload_b_reg[3]_1 (\gen_AB_reg_slice.payload_b_reg[3]_0 ),
        .\gen_AB_reg_slice.state[1]_i_2__2_0 (\gen_AB_reg_slice.state[1]_i_2__2 ),
        .\gen_AB_reg_slice.state[1]_i_2__2_1 (\gen_AB_reg_slice.state[1]_i_2__2_0 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_AB_reg_slice.state_reg[0]_1 (\gen_AB_reg_slice.state_reg[0]_0 ),
        .\gen_AB_reg_slice.state_reg[0]_2 (\gen_AB_reg_slice.state_reg[0]_1 ),
        .\gen_AB_reg_slice.state_reg[0]_3 (\gen_AB_reg_slice.state_reg[0]_2 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_router.busy_r_0 (\gen_tdest_router.busy_r_0 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .\gen_tdest_routing.busy_r_reg[2] (\gen_tdest_routing.busy_r_reg[2]_1 ),
        .\gen_tdest_routing.decode_err_r0 (\gen_tdest_routing.decode_err_r0 ),
        .m_axis_tready(m_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_transfer_mux" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux
   (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ,
    arb_sel_r0,
    arb_busy_ns,
    \gen_tdest_router.busy_r ,
    \busy_r_reg[3] ,
    aclk,
    areset,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ,
    m_axis_tready,
    m_axis_tvalid,
    arb_busy_r,
    arb_busy_r_reg,
    \busy_r_reg[3]_0 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] );
  output \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ;
  output arb_sel_r0;
  output arb_busy_ns;
  output [3:0]\gen_tdest_router.busy_r ;
  output \busy_r_reg[3] ;
  input aclk;
  input areset;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  input [0:0]m_axis_tready;
  input [0:0]m_axis_tvalid;
  input arb_busy_r;
  input arb_busy_r_reg;
  input [3:0]\busy_r_reg[3]_0 ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_sel_r0;
  wire areset;
  wire \busy_r_reg[3] ;
  wire [3:0]\busy_r_reg[3]_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;

  axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_4 \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .arb_busy_ns(arb_busy_ns),
        .arb_busy_r(arb_busy_r),
        .arb_busy_r_reg(arb_busy_r_reg),
        .arb_sel_r0(arb_sel_r0),
        .areset(areset),
        .\busy_r_reg[3]_0 (\busy_r_reg[3] ),
        .\busy_r_reg[3]_1 (\busy_r_reg[3]_0 ),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_transfer_mux" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0
   (arb_sel_r0,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ,
    \busy_r_reg[0] ,
    \busy_r_reg[3] ,
    \busy_r_reg[2] ,
    arb_busy_ns,
    aclk,
    areset,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ,
    arb_busy_r,
    \arb_gnt_r_reg[1] ,
    m_axis_tvalid,
    \busy_r_reg[3]_0 ,
    arb_busy_r_reg,
    arb_busy_r_reg_0,
    \busy_r_reg[2]_0 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] );
  output arb_sel_r0;
  output \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ;
  output \busy_r_reg[0] ;
  output [2:0]\busy_r_reg[3] ;
  output \busy_r_reg[2] ;
  output arb_busy_ns;
  input aclk;
  input areset;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  input arb_busy_r;
  input \arb_gnt_r_reg[1] ;
  input [0:0]m_axis_tvalid;
  input [3:0]\busy_r_reg[3]_0 ;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;
  input \busy_r_reg[2]_0 ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire \arb_gnt_r_reg[1] ;
  wire arb_sel_r0;
  wire areset;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[2] ;
  wire \busy_r_reg[2]_0 ;
  wire [2:0]\busy_r_reg[3] ;
  wire [3:0]\busy_r_reg[3]_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ;
  wire [0:0]m_axis_tvalid;

  axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_3 \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .arb_busy_ns(arb_busy_ns),
        .arb_busy_r(arb_busy_r),
        .arb_busy_r_reg(arb_busy_r_reg),
        .arb_busy_r_reg_0(arb_busy_r_reg_0),
        .\arb_gnt_r_reg[1] (\arb_gnt_r_reg[1] ),
        .arb_sel_r0(arb_sel_r0),
        .areset(areset),
        .\busy_r_reg[0]_0 (\busy_r_reg[0] ),
        .\busy_r_reg[2]_0 (\busy_r_reg[2] ),
        .\busy_r_reg[2]_1 (\busy_r_reg[2]_0 ),
        .\busy_r_reg[3]_0 (\busy_r_reg[3] ),
        .\busy_r_reg[3]_1 (\busy_r_reg[3]_0 ),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ),
        .m_axis_tvalid(m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_transfer_mux" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0_1
   (arb_sel_r0,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ,
    \gen_tdest_router.busy_r ,
    arb_busy_ns,
    aclk,
    areset,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ,
    arb_busy_r,
    \arb_gnt_r_reg[1] ,
    m_axis_tvalid,
    \busy_r_reg[3] ,
    arb_busy_r_reg,
    arb_busy_r_reg_0,
    \busy_r_reg[2] ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] );
  output arb_sel_r0;
  output \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ;
  output [3:0]\gen_tdest_router.busy_r ;
  output arb_busy_ns;
  input aclk;
  input areset;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  input arb_busy_r;
  input \arb_gnt_r_reg[1] ;
  input [0:0]m_axis_tvalid;
  input [2:0]\busy_r_reg[3] ;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;
  input \busy_r_reg[2] ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire \arb_gnt_r_reg[1] ;
  wire arb_sel_r0;
  wire areset;
  wire \busy_r_reg[2] ;
  wire [2:0]\busy_r_reg[3] ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tvalid;

  axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_2 \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .arb_busy_ns(arb_busy_ns),
        .arb_busy_r(arb_busy_r),
        .arb_busy_r_reg(arb_busy_r_reg),
        .arb_busy_r_reg_0(arb_busy_r_reg_0),
        .\arb_gnt_r_reg[1] (\arb_gnt_r_reg[1] ),
        .arb_sel_r0(arb_sel_r0),
        .areset(areset),
        .\busy_r_reg[2]_0 (\busy_r_reg[2] ),
        .\busy_r_reg[3]_0 (\busy_r_reg[3] ),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0 (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tvalid(m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_transfer_mux" *) 
module axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized1
   (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ,
    arb_busy_ns,
    \gen_tdest_routing.busy_r_reg[3] ,
    \gen_tdest_routing.busy_r_reg[3]_0 ,
    \gen_tdest_routing.busy_r_reg[3]_1 ,
    \gen_tdest_routing.busy_r_reg[3]_2 ,
    \busy_r_reg[0] ,
    \gen_tdest_router.busy_r ,
    \busy_r_reg[3] ,
    \m_axis_tready[3] ,
    aclk,
    areset,
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ,
    arb_busy_r,
    arb_busy_r_reg,
    \gen_tdest_routing.busy_r_reg[3]_3 ,
    \busy_r_reg[3]_0 ,
    \gen_tdest_routing.busy_r_reg[3]_4 ,
    \gen_tdest_routing.busy_r_reg[3]_5 ,
    \gen_tdest_routing.busy_r_reg[3]_6 ,
    m_axis_tvalid,
    m_axis_tready,
    \busy_r_reg[0]_0 ,
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] );
  output \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  output \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  output arb_busy_ns;
  output [0:0]\gen_tdest_routing.busy_r_reg[3] ;
  output [0:0]\gen_tdest_routing.busy_r_reg[3]_0 ;
  output [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  output [0:0]\gen_tdest_routing.busy_r_reg[3]_2 ;
  output \busy_r_reg[0] ;
  output [3:0]\gen_tdest_router.busy_r ;
  output \busy_r_reg[3] ;
  output \m_axis_tready[3] ;
  input aclk;
  input areset;
  input \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  input arb_busy_r;
  input arb_busy_r_reg;
  input \gen_tdest_routing.busy_r_reg[3]_3 ;
  input [3:0]\busy_r_reg[3]_0 ;
  input \gen_tdest_routing.busy_r_reg[3]_4 ;
  input \gen_tdest_routing.busy_r_reg[3]_5 ;
  input \gen_tdest_routing.busy_r_reg[3]_6 ;
  input [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  input \busy_r_reg[0]_0 ;
  input \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire areset;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[3] ;
  wire [3:0]\busy_r_reg[3]_0 ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  wire \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ;
  wire \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ;
  wire [3:0]\gen_tdest_router.busy_r ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3] ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_0 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_1 ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[3]_2 ;
  wire \gen_tdest_routing.busy_r_reg[3]_3 ;
  wire \gen_tdest_routing.busy_r_reg[3]_4 ;
  wire \gen_tdest_routing.busy_r_reg[3]_5 ;
  wire \gen_tdest_routing.busy_r_reg[3]_6 ;
  wire [0:0]m_axis_tready;
  wire \m_axis_tready[3] ;
  wire [0:0]m_axis_tvalid;

  axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .arb_busy_ns(arb_busy_ns),
        .arb_busy_r(arb_busy_r),
        .arb_busy_r_reg(arb_busy_r_reg),
        .areset(areset),
        .\busy_r_reg[0]_0 (\busy_r_reg[0] ),
        .\busy_r_reg[0]_1 (\busy_r_reg[0]_0 ),
        .\busy_r_reg[3]_0 (\busy_r_reg[3] ),
        .\busy_r_reg[3]_1 (\busy_r_reg[3]_0 ),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1 (\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0 ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0 (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10] ),
        .\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r (\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_r_reg[3] (\gen_tdest_routing.busy_r_reg[3] ),
        .\gen_tdest_routing.busy_r_reg[3]_0 (\gen_tdest_routing.busy_r_reg[3]_0 ),
        .\gen_tdest_routing.busy_r_reg[3]_1 (\gen_tdest_routing.busy_r_reg[3]_1 ),
        .\gen_tdest_routing.busy_r_reg[3]_2 (\gen_tdest_routing.busy_r_reg[3]_2 ),
        .\gen_tdest_routing.busy_r_reg[3]_3 (\gen_tdest_routing.busy_r_reg[3]_3 ),
        .\gen_tdest_routing.busy_r_reg[3]_4 (\gen_tdest_routing.busy_r_reg[3]_4 ),
        .\gen_tdest_routing.busy_r_reg[3]_5 (\gen_tdest_routing.busy_r_reg[3]_5 ),
        .\gen_tdest_routing.busy_r_reg[3]_6 (\gen_tdest_routing.busy_r_reg[3]_6 ),
        .m_axis_tready(m_axis_tready),
        .\m_axis_tready[3] (\m_axis_tready[3] ),
        .m_axis_tvalid(m_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
