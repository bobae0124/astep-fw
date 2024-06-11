create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 1 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]

set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk astep24_3l_top_I/clk_core
connect_debug_port u_ila_0/clk astep24_3l_top_I/clocking_reset_I/top_clocking_core_io_uart_I_n_0

set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {layer_0_spi_miso_IBUF[0]} \
                                           {layer_0_spi_miso_IBUF[1]} \
                                           {layers_spi_csn_OBUF} \
                                           {astep24_3l_top_I/switched_readout/genblk1[0].layer_if_I/miso_fifo/m_axis_tdata*]} \
                                           {astep24_3l_top_I/switched_readout/genblk1[0].layer_if_I/miso_fifo/m_axis_tvalid}]]

