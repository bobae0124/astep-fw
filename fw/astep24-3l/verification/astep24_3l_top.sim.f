
-sv 
-64bit
-access +rw
-define SIMULATION

## Xilinx
-reflib ${UNISIM}/
${XILINX_VIVADO}/data/verilog/src/glbl.v

+define+RFG_FW_ID=32'h0000ff00
+define+RFG_FW_BUILD=32'h0000ffAB

## Main Verilog
-f ${BASE}/fw/astep24-3l/common/astep24_3l_top.f


## Xilinx sim
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/top_clocking_core_io_uart/top_clocking_core_io_uart_sim_netlist.v


${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/axi_uartlite_core/axi_uartlite_core_sim_netlist.v

+incdir+${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/axis_switch_layer_frame/hdl
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/axis_switch_swifs/hdl/axis_infrastructure_v1_1_vl_rfs.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/axis_switch_swifs/hdl/axis_register_slice_v1_1_vl_rfs.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/axis_switch_swifs/hdl/axis_switch_v1_1_vl_rfs.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/axis_switch_swifs/sim/axis_switch_swifs.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/axis_switch_layer_frame/sim/axis_switch_layer_frame.v

+incdir+${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_1clk_1kB/hdl
#${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_2clk_16e_routing/fifo_axis_2clk_16e_routing_sim_netlist.v
#${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_2clk_16e_packet/fifo_axis_2clk_16e_packet_sim_netlist.v
#${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_2clk_64e/fifo_axis_2clk_64e_sim_netlist.v
#${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_2clk_64e_packet/fifo_axis_2clk_64e_packet_sim_netlist.v

${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_2clk_spi_hk/fifo_axis_2clk_spi_hk_sim_netlist.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_2clk_spi_layer/fifo_axis_2clk_spi_layer_sim_netlist.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_1clk_1kB/fifo_axis_1clk_1kB_sim_netlist.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/fifo_axis_2clk_sw_io_16e/fifo_axis_2clk_sw_io_16e_sim_netlist.v


${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/asic_model_frame_fifo/hdl/fifo_generator_v13_2_rfs.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/asic_model_frame_fifo/sim/asic_model_frame_fifo.v
${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/asic_model_frame_fifo/simulation/fifo_generator_vlog_beh.v

${BASE}/fw/common/xilinx-ip/managed_ip_project/managed_ip_project.gen/sources_1/ip/xadc_astep/xadc_astep_sim_netlist.v

