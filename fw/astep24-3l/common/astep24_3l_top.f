
## Top
${BASE}/fw/astep24-3l/common/astep24_3l_top.sv
${BASE}/fw/astep24-3l/common/astep24_3l_top_clocking.sv


## Patgen for injection
${BASE}/fw/common/rtl/layers/sync_async_patgen.sv


## RFG Host
${BASE}/fw/astep24-3l/common/main_rfg.sv
-f ${BASE}/fw/common/rtl/host/sw_dual_spi_uart/sw_dual_spi_uart.f

## Layer 
-f ${BASE}/fw/common/rtl/layers/layers_readout_switched.f

## Housekeeping
-f ${BASE}/fw/common/rtl/housekeeping/housekeeping_main.f

## Asic Model 
${BASE}/fw/common/rtl/asic_model/astropix3_asic_model.sv
${BASE}/fw/common/rtl/asic_model/astropix3_asic_model_frame_generator.sv
${BASE}/fw/common/rtl/asic_model/spi_slave_egress.sv
${BASE}/fw/common/rtl/asic_model/spi_slave_igress.sv

## Helpers
+incdir+${BASE}/fw/common/includes
${BASE}/fw/common/rtl/utilities/reset_sync.sv
${BASE}/fw/common/rtl/utilities/edge_detect.sv
${BASE}/fw/common/rtl/utilities/async_input_sync.sv