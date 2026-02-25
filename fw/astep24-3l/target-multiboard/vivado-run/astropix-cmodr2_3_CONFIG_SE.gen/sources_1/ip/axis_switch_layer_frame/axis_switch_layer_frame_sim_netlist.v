// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Feb 25 12:02:48 2026
// Host        : argon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/daq/AstroPix/260225_dev_richard/astep-fw/fw/astep24-3l/target-multiboard/vivado-run/astropix-cmodr2_3_CONFIG_SE.gen/sources_1/ip/axis_switch_layer_frame/axis_switch_layer_frame_sim_netlist.v
// Design      : axis_switch_layer_frame
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axis_switch_layer_frame,axis_switch_v1_1_29_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_29_axis_switch,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module axis_switch_layer_frame
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tdest,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tdest,
    s_req_suppress,
    s_decode_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2]" *) input [2:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2]" *) output [2:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [7:0] [23:16]" *) input [23:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2]" *) input [2:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDEST [7:0] [23:16]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S02_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output [0:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input [0:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [7:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output [0:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdest;
  input [2:0]s_req_suppress;
  output [2:0]s_decode_err;

  wire aclk;
  wire aresetn;
  wire [7:0]m_axis_tdata;
  wire [7:0]m_axis_tdest;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire [23:0]s_axis_tdest;
  wire [2:0]s_axis_tlast;
  wire [2:0]s_axis_tready;
  wire [2:0]s_axis_tvalid;
  wire [2:0]s_decode_err;
  wire [2:0]s_req_suppress;
  wire NLW_inst_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_wready_UNCONNECTED;
  wire [23:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [0:0]NLW_inst_arb_done_UNCONNECTED;
  wire [2:0]NLW_inst_arb_id_UNCONNECTED;
  wire [2:0]NLW_inst_arb_last_UNCONNECTED;
  wire [2:0]NLW_inst_arb_req_UNCONNECTED;
  wire [2:0]NLW_inst_arb_user_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "0" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "1" *) 
  (* C_AXIS_SIGNAL_SET = "83" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "8" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "2" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "8'b00000000" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "3'b111" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "8'b00000000" *) 
  (* C_NUM_MI_SLOTS = "1" *) 
  (* C_NUM_SI_SLOTS = "3" *) 
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
  (* LP_CTRL_REG_WIDTH = "20" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "3'b111" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) 
  (* P_TPAYLOAD_WIDTH = "17" *) 
  axis_switch_layer_frameaxis_switch_v1_1_29_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[23:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[0]),
        .arb_gnt({1'b0,1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[2:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[2:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[2:0]),
        .arb_sel({1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[2:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
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
        .s_axis_tid({1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b1,1'b1,1'b1}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1}),
        .s_axis_tuser({1'b0,1'b0,1'b0}),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err),
        .s_req_suppress(s_req_suppress));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_arb_rr" *) 
module axis_switch_layer_frameaxis_switch_v1_1_29_arb_rr
   (\gen_tdest_routing.busy_ns ,
    \arb_gnt_r_reg[2]_0 ,
    \gen_tdest_routing.busy_ns_0 ,
    \arb_gnt_r_reg[1]_0 ,
    \gen_tdest_routing.busy_ns_1 ,
    \arb_gnt_r_reg[0]_0 ,
    mux_tvalid,
    m_axis_tvalid,
    s_axis_tdest_19_sp_1,
    m_axis_tlast,
    m_axis_tdest,
    m_axis_tdata,
    areset_reg,
    areset_reg_0,
    areset_reg_1,
    SR,
    aclk,
    valid_i,
    arb_req_i__2,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \m_axis_tvalid[0] ,
    \gen_tdest_router.busy_r ,
    s_axis_tdest,
    s_axis_tvalid,
    m_axis_tready,
    s_axis_tlast,
    s_axis_tdata);
  output \gen_tdest_routing.busy_ns ;
  output \arb_gnt_r_reg[2]_0 ;
  output \gen_tdest_routing.busy_ns_0 ;
  output \arb_gnt_r_reg[1]_0 ;
  output \gen_tdest_routing.busy_ns_1 ;
  output \arb_gnt_r_reg[0]_0 ;
  output [0:0]mux_tvalid;
  output [0:0]m_axis_tvalid;
  output s_axis_tdest_19_sp_1;
  output [0:0]m_axis_tlast;
  output [7:0]m_axis_tdest;
  output [7:0]m_axis_tdata;
  output areset_reg;
  output areset_reg_0;
  output areset_reg_1;
  input [0:0]SR;
  input aclk;
  input valid_i;
  input [2:0]arb_req_i__2;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input [1:0]\m_axis_tvalid[0] ;
  input [2:0]\gen_tdest_router.busy_r ;
  input [23:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input [0:0]m_axis_tready;
  input [2:0]s_axis_tlast;
  input [23:0]s_axis_tdata;

  wire [0:0]SR;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_done_i;
  wire \arb_gnt_r[0]_i_1_n_0 ;
  wire \arb_gnt_r[1]_i_1_n_0 ;
  wire \arb_gnt_r[2]_i_1_n_0 ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire \arb_gnt_r_reg[1]_0 ;
  wire \arb_gnt_r_reg[2]_0 ;
  wire [2:0]arb_req_i__2;
  wire [2:0]arb_req_rot;
  wire [1:0]arb_sel_i;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire areset_reg;
  wire areset_reg_0;
  wire areset_reg_1;
  wire barrel_cntr;
  wire [1:0]barrel_cntr_ns;
  wire \barrel_cntr_reg_n_0_[0] ;
  wire \barrel_cntr_reg_n_0_[1] ;
  wire \busy_r[2]_i_3_n_0 ;
  wire \busy_r[2]_i_4_n_0 ;
  wire f_mux0_return;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire [7:0]m_axis_tdata;
  wire [7:0]m_axis_tdest;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [1:0]\m_axis_tvalid[0] ;
  wire \m_axis_tvalid[0]_INST_0_i_2_n_0 ;
  wire [0:0]mux_tvalid;
  wire [5:0]port_priority_ns;
  wire [23:0]s_axis_tdata;
  wire [23:0]s_axis_tdest;
  wire s_axis_tdest_19_sn_1;
  wire [2:0]s_axis_tlast;
  wire [0:0]s_axis_tvalid;
  wire [1:0]sel_i;
  wire valid_i;

  assign s_axis_tdest_19_sp_1 = s_axis_tdest_19_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    arb_busy_r_i_1
       (.I0(valid_i),
        .I1(arb_busy_r),
        .I2(arb_done_i),
        .O(arb_busy_ns));
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns),
        .Q(arb_busy_r),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000000000D0)) 
    \arb_gnt_r[0]_i_1 
       (.I0(arb_busy_r),
        .I1(arb_done_i),
        .I2(valid_i),
        .I3(sel_i[0]),
        .I4(SR),
        .I5(sel_i[1]),
        .O(\arb_gnt_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D000)) 
    \arb_gnt_r[1]_i_1 
       (.I0(arb_busy_r),
        .I1(arb_done_i),
        .I2(valid_i),
        .I3(sel_i[0]),
        .I4(SR),
        .I5(sel_i[1]),
        .O(\arb_gnt_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000D000000000)) 
    \arb_gnt_r[2]_i_1 
       (.I0(arb_busy_r),
        .I1(arb_done_i),
        .I2(valid_i),
        .I3(sel_i[0]),
        .I4(SR),
        .I5(sel_i[1]),
        .O(\arb_gnt_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \arb_gnt_r[2]_i_10 
       (.I0(arb_req_i__2[1]),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(arb_req_i__2[2]),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(arb_req_i__2[0]),
        .O(arb_req_rot[0]));
  LUT6 #(
    .INIT(64'hFFFFF8080000F808)) 
    \arb_gnt_r[2]_i_3 
       (.I0(port_priority_ns[2]),
        .I1(arb_req_rot[2]),
        .I2(arb_req_rot[1]),
        .I3(port_priority_ns[0]),
        .I4(arb_req_rot[0]),
        .I5(port_priority_ns[4]),
        .O(sel_i[0]));
  LUT6 #(
    .INIT(64'hFFFFF8080000F808)) 
    \arb_gnt_r[2]_i_4 
       (.I0(port_priority_ns[3]),
        .I1(arb_req_rot[2]),
        .I2(arb_req_rot[1]),
        .I3(port_priority_ns[1]),
        .I4(arb_req_rot[0]),
        .I5(port_priority_ns[5]),
        .O(sel_i[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \arb_gnt_r[2]_i_8 
       (.I0(arb_req_i__2[0]),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(arb_req_i__2[1]),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(arb_req_i__2[2]),
        .O(arb_req_rot[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \arb_gnt_r[2]_i_9 
       (.I0(arb_req_i__2[2]),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(arb_req_i__2[0]),
        .I3(\barrel_cntr_reg_n_0_[1] ),
        .I4(arb_req_i__2[1]),
        .O(arb_req_rot[1]));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[1]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[1]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[2]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[2]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF2FD000)) 
    \arb_sel_r[0]_i_1 
       (.I0(arb_busy_r),
        .I1(arb_done_i),
        .I2(valid_i),
        .I3(sel_i[0]),
        .I4(arb_sel_i[0]),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF2FD000)) 
    \arb_sel_r[1]_i_1 
       (.I0(arb_busy_r),
        .I1(arb_done_i),
        .I2(valid_i),
        .I3(sel_i[1]),
        .I4(arb_sel_i[1]),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(arb_sel_i[0]),
        .R(SR));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(arb_sel_i[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \barrel_cntr[0]_i_1 
       (.I0(\barrel_cntr_reg_n_0_[1] ),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .O(barrel_cntr_ns[0]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \barrel_cntr[1]_i_1 
       (.I0(\arb_gnt_r_reg[1]_0 ),
        .I1(\arb_gnt_r_reg[0]_0 ),
        .I2(arb_busy_r),
        .I3(\arb_gnt_r_reg[2]_0 ),
        .O(barrel_cntr));
  LUT2 #(
    .INIT(4'h4)) 
    \barrel_cntr[1]_i_2 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \busy_r[0]_i_1 
       (.I0(SR),
        .I1(arb_done_i),
        .I2(\gen_tdest_router.busy_r [0]),
        .I3(\arb_gnt_r_reg[0]_0 ),
        .O(areset_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \busy_r[1]_i_1 
       (.I0(SR),
        .I1(arb_done_i),
        .I2(\gen_tdest_router.busy_r [1]),
        .I3(\arb_gnt_r_reg[1]_0 ),
        .O(areset_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \busy_r[2]_i_1 
       (.I0(SR),
        .I1(arb_done_i),
        .I2(\gen_tdest_router.busy_r [2]),
        .I3(\arb_gnt_r_reg[2]_0 ),
        .O(areset_reg_1));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \busy_r[2]_i_2 
       (.I0(\busy_r[2]_i_3_n_0 ),
        .I1(arb_sel_i[0]),
        .I2(arb_sel_i[1]),
        .I3(mux_tvalid),
        .I4(\m_axis_tvalid[0] [1]),
        .I5(\m_axis_tvalid[0] [0]),
        .O(arb_done_i));
  LUT3 #(
    .INIT(8'h80)) 
    \busy_r[2]_i_3 
       (.I0(m_axis_tready),
        .I1(\busy_r[2]_i_4_n_0 ),
        .I2(m_axis_tlast),
        .O(\busy_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \busy_r[2]_i_4 
       (.I0(\arb_gnt_r_reg[2]_0 ),
        .I1(\gen_tdest_router.busy_r [2]),
        .I2(\arb_gnt_r_reg[1]_0 ),
        .I3(\gen_tdest_router.busy_r [1]),
        .I4(\gen_tdest_router.busy_r [0]),
        .I5(\arb_gnt_r_reg[0]_0 ),
        .O(\busy_r[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(\arb_gnt_r_reg[2]_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0] ),
        .I2(arb_done_i),
        .O(\gen_tdest_routing.busy_ns ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(\arb_gnt_r_reg[1]_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I2(arb_done_i),
        .O(\gen_tdest_routing.busy_ns_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__1 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_1 ),
        .I2(arb_done_i),
        .O(\gen_tdest_routing.busy_ns_1 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[8]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdata[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[9]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdata[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[10]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdata[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(s_axis_tdata[3]),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[11]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdata[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[12]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdata[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[5]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[13]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdata[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(s_axis_tdata[6]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[14]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdata[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[15]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdata[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(s_axis_tdest[0]),
        .I1(s_axis_tdest[16]),
        .I2(s_axis_tdest[8]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdest[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdest[1]_INST_0 
       (.I0(s_axis_tdest[1]),
        .I1(s_axis_tdest[17]),
        .I2(s_axis_tdest[9]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdest[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdest[2]_INST_0 
       (.I0(s_axis_tdest[2]),
        .I1(s_axis_tdest[18]),
        .I2(s_axis_tdest[10]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdest[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdest[3]_INST_0 
       (.I0(s_axis_tdest[3]),
        .I1(s_axis_tdest[19]),
        .I2(s_axis_tdest[11]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdest[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdest[4]_INST_0 
       (.I0(s_axis_tdest[4]),
        .I1(s_axis_tdest[20]),
        .I2(s_axis_tdest[12]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdest[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdest[5]_INST_0 
       (.I0(s_axis_tdest[5]),
        .I1(s_axis_tdest[21]),
        .I2(s_axis_tdest[13]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdest[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdest[6]_INST_0 
       (.I0(s_axis_tdest[6]),
        .I1(s_axis_tdest[22]),
        .I2(s_axis_tdest[14]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdest[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tdest[7]_INST_0 
       (.I0(s_axis_tdest[7]),
        .I1(s_axis_tdest[23]),
        .I2(s_axis_tdest[15]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tdest[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(s_axis_tlast[0]),
        .I1(s_axis_tlast[2]),
        .I2(s_axis_tlast[1]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(f_mux0_return),
        .I1(\m_axis_tvalid[0]_INST_0_i_2_n_0 ),
        .I2(\gen_tdest_router.busy_r [1]),
        .I3(\arb_gnt_r_reg[1]_0 ),
        .I4(\gen_tdest_router.busy_r [2]),
        .I5(\arb_gnt_r_reg[2]_0 ),
        .O(m_axis_tvalid));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axis_tvalid[0]_INST_0_i_1 
       (.I0(\m_axis_tvalid[0] [0]),
        .I1(\m_axis_tvalid[0] [1]),
        .I2(mux_tvalid),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .O(f_mux0_return));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tvalid[0]_INST_0_i_2 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(\gen_tdest_router.busy_r [0]),
        .O(\m_axis_tvalid[0]_INST_0_i_2_n_0 ));
  FDRE \port_priority_r_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[0]),
        .Q(port_priority_ns[4]),
        .R(SR));
  FDRE \port_priority_r_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[1]),
        .Q(port_priority_ns[5]),
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
  LUT4 #(
    .INIT(16'h0002)) 
    \s_axis_tready[2]_INST_0_i_1 
       (.I0(s_axis_tdest_19_sn_1),
        .I1(s_axis_tdest[16]),
        .I2(s_axis_tdest[17]),
        .I3(s_axis_tdest[18]),
        .O(mux_tvalid));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axis_tready[2]_INST_0_i_2 
       (.I0(s_axis_tdest[19]),
        .I1(s_axis_tdest[20]),
        .I2(s_axis_tdest[21]),
        .I3(s_axis_tdest[22]),
        .I4(s_axis_tdest[23]),
        .I5(s_axis_tvalid),
        .O(s_axis_tdest_19_sn_1));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "0" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "1" *) (* C_AXIS_SIGNAL_SET = "83" *) (* C_AXIS_TDATA_WIDTH = "8" *) 
(* C_AXIS_TDEST_WIDTH = "8" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "0" *) (* C_FAMILY = "artix7" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "2" *) (* C_M_AXIS_BASETDEST_ARRAY = "8'b00000000" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "3'b111" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "8'b00000000" *) (* C_NUM_MI_SLOTS = "1" *) 
(* C_NUM_SI_SLOTS = "3" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "0" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "20" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_29_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "3'b111" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) (* P_TPAYLOAD_WIDTH = "17" *) 
module axis_switch_layer_frameaxis_switch_v1_1_29_axis_switch
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
  input [2:0]s_axis_tvalid;
  output [2:0]s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input [2:0]s_axis_tlast;
  input [2:0]s_axis_tid;
  input [23:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tid;
  output [7:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [2:0]arb_req;
  output [0:0]arb_done;
  input [2:0]arb_gnt;
  input [1:0]arb_sel;
  output [2:0]arb_last;
  output [2:0]arb_id;
  output [23:0]arb_dest;
  output [2:0]arb_user;
  input [2:0]s_req_suppress;
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
  output [2:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire [2:0]arb_gnt_i;
  wire areset;
  wire aresetn;
  wire \gen_decoder[0].axisc_decoder_0_n_0 ;
  wire \gen_decoder[1].axisc_decoder_0_n_1 ;
  wire \gen_decoder[2].axisc_decoder_0_n_1 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_27 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_28 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_29 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_9 ;
  wire [2:0]\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__2 ;
  wire \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i ;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire [7:0]m_axis_tdata;
  wire [7:0]m_axis_tdest;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [2:0]mux_tvalid;
  wire [23:0]s_axis_tdata;
  wire [23:0]s_axis_tdest;
  wire [2:0]s_axis_tlast;
  wire [2:0]s_axis_tready;
  wire [2:0]s_axis_tvalid;
  wire [2:0]s_decode_err;
  wire [2:0]s_req_suppress;

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
  assign arb_done[0] = \<const0> ;
  assign arb_id[2] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[2] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[2] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
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
  axis_switch_layer_frameaxis_switch_v1_1_29_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[0]),
        .arb_req_i__2(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__2 [0]),
        .areset(areset),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .mux_tvalid(mux_tvalid[0]),
        .s_axis_tdest(s_axis_tdest[7:0]),
        .s_axis_tvalid(s_axis_tvalid[0]),
        .s_decode_err(s_decode_err[0]),
        .s_req_suppress(s_req_suppress[0]));
  axis_switch_layer_frameaxis_switch_v1_1_29_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[1]),
        .arb_req_i__2(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__2 [1]),
        .areset(areset),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .mux_tvalid(mux_tvalid[1]),
        .s_axis_tdest(s_axis_tdest[15:8]),
        .s_axis_tvalid(s_axis_tvalid[1]),
        .s_decode_err(s_decode_err[1]),
        .s_req_suppress(s_req_suppress[1]));
  axis_switch_layer_frameaxis_switch_v1_1_29_axisc_decoder_1 \gen_decoder[2].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[2]),
        .\arb_gnt_r[2]_i_8 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_9 ),
        .arb_req_i__2(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__2 [2]),
        .\arb_sel_r_reg[1] (\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__2 [1:0]),
        .areset(areset),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[2].axisc_decoder_0_n_1 ),
        .mux_tvalid(mux_tvalid[2]),
        .s_axis_tdest(s_axis_tdest[18:16]),
        .s_axis_tvalid(s_axis_tvalid[2]),
        .s_decode_err(s_decode_err[2]),
        .s_req_suppress(s_req_suppress[2]),
        .valid_i(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i ));
  axis_switch_layer_frameaxis_switch_v1_1_29_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .arb_req_i__2(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_req_i__2 ),
        .areset(areset),
        .areset_reg_0(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_27 ),
        .areset_reg_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_28 ),
        .areset_reg_2(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_29 ),
        .aresetn(aresetn),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_1 (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_decoder[2].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .\m_axis_tvalid[0] (mux_tvalid[1:0]),
        .mux_tvalid(mux_tvalid[2]),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tdest_19_sp_1(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_9 ),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid[2]),
        .valid_i(\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/valid_i ));
  axis_switch_layer_frameaxis_switch_v1_1_29_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .\busy_r_reg[0] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_27 ),
        .\busy_r_reg[1] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_28 ),
        .\busy_r_reg[2] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_29 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tready(m_axis_tready),
        .mux_tvalid(mux_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_decode_err(s_decode_err));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axis_switch_arbiter" *) 
module axis_switch_layer_frameaxis_switch_v1_1_29_axis_switch_arbiter
   (areset,
    \gen_tdest_routing.busy_ns ,
    arb_gnt_i,
    \gen_tdest_routing.busy_ns_0 ,
    \gen_tdest_routing.busy_ns_1 ,
    mux_tvalid,
    m_axis_tvalid,
    s_axis_tdest_19_sp_1,
    m_axis_tlast,
    m_axis_tdest,
    m_axis_tdata,
    areset_reg_0,
    areset_reg_1,
    areset_reg_2,
    aclk,
    valid_i,
    arb_req_i__2,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \m_axis_tvalid[0] ,
    \gen_tdest_router.busy_r ,
    s_axis_tdest,
    s_axis_tvalid,
    m_axis_tready,
    s_axis_tlast,
    s_axis_tdata,
    aresetn);
  output areset;
  output \gen_tdest_routing.busy_ns ;
  output [2:0]arb_gnt_i;
  output \gen_tdest_routing.busy_ns_0 ;
  output \gen_tdest_routing.busy_ns_1 ;
  output [0:0]mux_tvalid;
  output [0:0]m_axis_tvalid;
  output s_axis_tdest_19_sp_1;
  output [0:0]m_axis_tlast;
  output [7:0]m_axis_tdest;
  output [7:0]m_axis_tdata;
  output areset_reg_0;
  output areset_reg_1;
  output areset_reg_2;
  input aclk;
  input valid_i;
  input [2:0]arb_req_i__2;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input [1:0]\m_axis_tvalid[0] ;
  input [2:0]\gen_tdest_router.busy_r ;
  input [23:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input [0:0]m_axis_tready;
  input [2:0]s_axis_tlast;
  input [23:0]s_axis_tdata;
  input aresetn;

  wire aclk;
  wire [2:0]arb_gnt_i;
  wire [2:0]arb_req_i__2;
  wire areset;
  wire areset_reg_0;
  wire areset_reg_1;
  wire areset_reg_2;
  wire aresetn;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire [7:0]m_axis_tdata;
  wire [7:0]m_axis_tdest;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [1:0]\m_axis_tvalid[0] ;
  wire [0:0]mux_tvalid;
  wire p_0_in;
  wire [23:0]s_axis_tdata;
  wire [23:0]s_axis_tdest;
  wire s_axis_tdest_19_sn_1;
  wire [2:0]s_axis_tlast;
  wire [0:0]s_axis_tvalid;
  wire valid_i;

  assign s_axis_tdest_19_sp_1 = s_axis_tdest_19_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    areset_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE areset_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset),
        .R(1'b0));
  axis_switch_layer_frameaxis_switch_v1_1_29_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0 
       (.SR(areset),
        .aclk(aclk),
        .\arb_gnt_r_reg[0]_0 (arb_gnt_i[0]),
        .\arb_gnt_r_reg[1]_0 (arb_gnt_i[1]),
        .\arb_gnt_r_reg[2]_0 (arb_gnt_i[2]),
        .arb_req_i__2(arb_req_i__2),
        .areset_reg(areset_reg_0),
        .areset_reg_0(areset_reg_1),
        .areset_reg_1(areset_reg_2),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_1 (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_tdest_routing.busy_r_reg[0]_1 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .\m_axis_tvalid[0] (\m_axis_tvalid[0] ),
        .mux_tvalid(mux_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tdest_19_sp_1(s_axis_tdest_19_sn_1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .valid_i(valid_i));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_arb_responder" *) 
module axis_switch_layer_frameaxis_switch_v1_1_29_axisc_arb_responder
   (s_axis_tready,
    \gen_tdest_router.busy_r ,
    mux_tvalid,
    arb_gnt_i,
    m_axis_tready,
    s_decode_err,
    \busy_r_reg[2]_0 ,
    aclk,
    \busy_r_reg[1]_0 ,
    \busy_r_reg[0]_0 );
  output [2:0]s_axis_tready;
  output [2:0]\gen_tdest_router.busy_r ;
  input [2:0]mux_tvalid;
  input [2:0]arb_gnt_i;
  input [0:0]m_axis_tready;
  input [2:0]s_decode_err;
  input \busy_r_reg[2]_0 ;
  input aclk;
  input \busy_r_reg[1]_0 ;
  input \busy_r_reg[0]_0 ;

  wire aclk;
  wire [2:0]arb_gnt_i;
  wire \busy_r_reg[0]_0 ;
  wire \busy_r_reg[1]_0 ;
  wire \busy_r_reg[2]_0 ;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tready;
  wire [2:0]mux_tvalid;
  wire [2:0]s_axis_tready;
  wire [2:0]s_decode_err;

  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[0]_0 ),
        .Q(\gen_tdest_router.busy_r [0]),
        .R(1'b0));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[1]_0 ),
        .Q(\gen_tdest_router.busy_r [1]),
        .R(1'b0));
  FDRE \busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r_reg[2]_0 ),
        .Q(\gen_tdest_router.busy_r [2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    \s_axis_tready[0]_INST_0 
       (.I0(mux_tvalid[0]),
        .I1(\gen_tdest_router.busy_r [0]),
        .I2(arb_gnt_i[0]),
        .I3(m_axis_tready),
        .I4(s_decode_err[0]),
        .O(s_axis_tready[0]));
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    \s_axis_tready[1]_INST_0 
       (.I0(mux_tvalid[1]),
        .I1(\gen_tdest_router.busy_r [1]),
        .I2(arb_gnt_i[1]),
        .I3(m_axis_tready),
        .I4(s_decode_err[1]),
        .O(s_axis_tready[1]));
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    \s_axis_tready[2]_INST_0 
       (.I0(mux_tvalid[2]),
        .I1(\gen_tdest_router.busy_r [2]),
        .I2(arb_gnt_i[2]),
        .I3(m_axis_tready),
        .I4(s_decode_err[2]),
        .O(s_axis_tready[2]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module axis_switch_layer_frameaxis_switch_v1_1_29_axisc_decoder
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    s_decode_err,
    arb_req_i__2,
    mux_tvalid,
    areset,
    \gen_tdest_routing.busy_ns ,
    aclk,
    s_req_suppress,
    s_axis_tdest,
    s_axis_tvalid,
    arb_gnt_i);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]s_decode_err;
  output [0:0]arb_req_i__2;
  output [0:0]mux_tvalid;
  input areset;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [0:0]s_req_suppress;
  input [7:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input [0:0]arb_gnt_i;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire \arb_gnt_r[2]_i_13_n_0 ;
  wire [0:0]arb_req_i__2;
  wire areset;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]mux_tvalid;
  wire [7:0]s_axis_tdest;
  wire \s_axis_tready[0]_INST_0_i_2_n_0 ;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;
  wire [0:0]s_req_suppress;

  LUT2 #(
    .INIT(4'hE)) 
    \arb_gnt_r[2]_i_13 
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(arb_gnt_i),
        .O(\arb_gnt_r[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \arb_gnt_r[2]_i_7 
       (.I0(s_req_suppress),
        .I1(\arb_gnt_r[2]_i_13_n_0 ),
        .I2(s_axis_tdest[2]),
        .I3(s_axis_tdest[1]),
        .I4(s_axis_tdest[0]),
        .I5(\s_axis_tready[0]_INST_0_i_2_n_0 ),
        .O(arb_req_i__2));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_tdest_routing.decode_err_r_i_1__1 
       (.I0(s_decode_err),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
  LUT4 #(
    .INIT(16'h0002)) 
    \s_axis_tready[0]_INST_0_i_1 
       (.I0(\s_axis_tready[0]_INST_0_i_2_n_0 ),
        .I1(s_axis_tdest[0]),
        .I2(s_axis_tdest[1]),
        .I3(s_axis_tdest[2]),
        .O(mux_tvalid));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axis_tready[0]_INST_0_i_2 
       (.I0(s_axis_tdest[3]),
        .I1(s_axis_tdest[4]),
        .I2(s_axis_tdest[5]),
        .I3(s_axis_tdest[6]),
        .I4(s_axis_tdest[7]),
        .I5(s_axis_tvalid),
        .O(\s_axis_tready[0]_INST_0_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module axis_switch_layer_frameaxis_switch_v1_1_29_axisc_decoder_0
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    arb_req_i__2,
    mux_tvalid,
    areset,
    aclk,
    \gen_tdest_routing.busy_ns ,
    s_req_suppress,
    s_axis_tdest,
    s_axis_tvalid,
    arb_gnt_i);
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]arb_req_i__2;
  output [0:0]mux_tvalid;
  input areset;
  input aclk;
  input \gen_tdest_routing.busy_ns ;
  input [0:0]s_req_suppress;
  input [7:0]s_axis_tdest;
  input [0:0]s_axis_tvalid;
  input [0:0]arb_gnt_i;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire \arb_gnt_r[2]_i_12_n_0 ;
  wire [0:0]arb_req_i__2;
  wire areset;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]mux_tvalid;
  wire [7:0]s_axis_tdest;
  wire \s_axis_tready[1]_INST_0_i_2_n_0 ;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;
  wire [0:0]s_req_suppress;

  LUT2 #(
    .INIT(4'hE)) 
    \arb_gnt_r[2]_i_12 
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(arb_gnt_i),
        .O(\arb_gnt_r[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \arb_gnt_r[2]_i_6 
       (.I0(s_req_suppress),
        .I1(\arb_gnt_r[2]_i_12_n_0 ),
        .I2(s_axis_tdest[2]),
        .I3(s_axis_tdest[1]),
        .I4(s_axis_tdest[0]),
        .I5(\s_axis_tready[1]_INST_0_i_2_n_0 ),
        .O(arb_req_i__2));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_tdest_routing.decode_err_r_i_1__0 
       (.I0(s_decode_err),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
  LUT4 #(
    .INIT(16'h0002)) 
    \s_axis_tready[1]_INST_0_i_1 
       (.I0(\s_axis_tready[1]_INST_0_i_2_n_0 ),
        .I1(s_axis_tdest[0]),
        .I2(s_axis_tdest[1]),
        .I3(s_axis_tdest[2]),
        .O(mux_tvalid));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axis_tready[1]_INST_0_i_2 
       (.I0(s_axis_tdest[3]),
        .I1(s_axis_tdest[4]),
        .I2(s_axis_tdest[5]),
        .I3(s_axis_tdest[6]),
        .I4(s_axis_tdest[7]),
        .I5(s_axis_tvalid),
        .O(\s_axis_tready[1]_INST_0_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_decoder" *) 
module axis_switch_layer_frameaxis_switch_v1_1_29_axisc_decoder_1
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    arb_req_i__2,
    valid_i,
    areset,
    aclk,
    \gen_tdest_routing.busy_ns ,
    s_req_suppress,
    s_axis_tdest,
    \arb_gnt_r[2]_i_8 ,
    s_axis_tvalid,
    mux_tvalid,
    arb_gnt_i,
    \arb_sel_r_reg[1] );
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]arb_req_i__2;
  output valid_i;
  input areset;
  input aclk;
  input \gen_tdest_routing.busy_ns ;
  input [0:0]s_req_suppress;
  input [2:0]s_axis_tdest;
  input \arb_gnt_r[2]_i_8 ;
  input [0:0]s_axis_tvalid;
  input [0:0]mux_tvalid;
  input [0:0]arb_gnt_i;
  input [1:0]\arb_sel_r_reg[1] ;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire \arb_gnt_r[2]_i_11_n_0 ;
  wire \arb_gnt_r[2]_i_8 ;
  wire [0:0]arb_req_i__2;
  wire [1:0]\arb_sel_r_reg[1] ;
  wire areset;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]mux_tvalid;
  wire [2:0]s_axis_tdest;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;
  wire [0:0]s_req_suppress;
  wire valid_i;

  LUT2 #(
    .INIT(4'hE)) 
    \arb_gnt_r[2]_i_11 
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(arb_gnt_i),
        .O(\arb_gnt_r[2]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \arb_gnt_r[2]_i_2 
       (.I0(arb_req_i__2),
        .I1(\arb_sel_r_reg[1] [1]),
        .I2(\arb_sel_r_reg[1] [0]),
        .O(valid_i));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \arb_gnt_r[2]_i_5 
       (.I0(s_req_suppress),
        .I1(\arb_gnt_r[2]_i_11_n_0 ),
        .I2(s_axis_tdest[2]),
        .I3(s_axis_tdest[1]),
        .I4(s_axis_tdest[0]),
        .I5(\arb_gnt_r[2]_i_8 ),
        .O(arb_req_i__2));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(s_decode_err),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_29_axisc_transfer_mux" *) 
module axis_switch_layer_frameaxis_switch_v1_1_29_axisc_transfer_mux
   (s_axis_tready,
    \gen_tdest_router.busy_r ,
    mux_tvalid,
    arb_gnt_i,
    m_axis_tready,
    s_decode_err,
    \busy_r_reg[2] ,
    aclk,
    \busy_r_reg[1] ,
    \busy_r_reg[0] );
  output [2:0]s_axis_tready;
  output [2:0]\gen_tdest_router.busy_r ;
  input [2:0]mux_tvalid;
  input [2:0]arb_gnt_i;
  input [0:0]m_axis_tready;
  input [2:0]s_decode_err;
  input \busy_r_reg[2] ;
  input aclk;
  input \busy_r_reg[1] ;
  input \busy_r_reg[0] ;

  wire aclk;
  wire [2:0]arb_gnt_i;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[1] ;
  wire \busy_r_reg[2] ;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire [0:0]m_axis_tready;
  wire [2:0]mux_tvalid;
  wire [2:0]s_axis_tready;
  wire [2:0]s_decode_err;

  axis_switch_layer_frameaxis_switch_v1_1_29_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .\busy_r_reg[0]_0 (\busy_r_reg[0] ),
        .\busy_r_reg[1]_0 (\busy_r_reg[1] ),
        .\busy_r_reg[2]_0 (\busy_r_reg[2] ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tready(m_axis_tready),
        .mux_tvalid(mux_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_decode_err(s_decode_err));
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
