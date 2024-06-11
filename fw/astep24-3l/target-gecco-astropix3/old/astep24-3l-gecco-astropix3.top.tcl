package require icflow::hdlbuild 
package require icflow::hdlbuild::xilinx 
package require icflow::hdlbuild::generate 
package require icflow::hdlbuild::verilog 
package require icflow::hdlbuild::axi
package require icflow::hdlbuild::spi
package require icflow::rfg::hdl




## RFG Parameters
set ::RFG_FW_ID             32'h0000AB01
set ::RFG_EXTRA_BOARD_REGS {
    {GECCO_VB_CTRL -bits {ck1 sin ld1}}
}

## Outputs
set ::IC_HDLBUILD_OUTPUTS .rtl
set ::IC_FSP_OUTPUTS      hw/fsp

## Generate RFG


exit 






icflow::hdlbuild::top astep24_3l_gecco_astropix3_top {
    global env
    icflow::hdlbuild::xilinx::loadIPDefinitions $env(FW_BASE)/gecco_mr_base/ipsrc/target-nvideo/ips
    source ../common/astep24_3l_top.module.tcl
    source $env(FW_BASE)/gecco_mr_base/hdlbuild/board_nexysvideo.tcl

    ## Board IO
    digilent::board::nexysvideo::addIO 
    digilent::board::nexysvideo::fmcVoltage18V

    ## Add Right side output of layer back in design, not used but to be connected
    - io:spi:slave layer_0_spi_right_ -miso_count 2
    - verilog:section {
        assign layer_0_spi_right_miso = 2'b00;
    }

    
    ## Wrap
    
    - wrap astep24_3l_top -map {
        {layer_*csn layer_1* layer_2* *ld1 *ld2 *sout1 *sout2  io_aresn cold_resn} -> NONE
        warm_resn           -> cpu_resetn
        uart_rx             -> uart_tx_in
        uart_tx             -> uart_rx_out
        rfg_io_led          -> led
        layers_sr_out_ck1   -> layers_sr_ck1
        layers_sr_out_ck2   -> layers_sr_ck2
        layers_sr_out_ld0   -> layers_sr_ld
        layers_sr_out_sin   -> layers_sr_sin
        layers_sr_in_rb     -> layers_sr_rb
        layers_sr_in_sout0  -> layers_sr_sout
        
    }
    

    ## Modify IO
    ###########
    
    ## Nexys CPU Resetn is warm reset, no cold reset
    - xilinx:io:obufds    clk_sample        -> clk_sample
    - xilinx:io:obufds    clk_sample        -> clk_sample_se
    - xilinx:io:obufds    gecco_vb_ctrl_ck1 -> gecco_vb_ctrl_ck1
    - xilinx:io:obufds    gecco_vb_ctrl_ld1 -> gecco_vb_ctrl_ld1
    - xilinx:io:obufds    gecco_vb_ctrl_sin -> gecco_vb_ctrl_sin

    - xilinx:io:obufds    layers_sr_ck1     -> layers_sr_ck1
    - xilinx:io:obufds    layers_sr_ck2     -> layers_sr_ck2
    - xilinx:io:obufds    layers_sr_ld      -> layers_sr_ld
    - xilinx:io:obufds    layers_sr_sin     -> layers_sr_sin
    

    - xilinx:io:obufds    layer_0_inj       -> gecco_inj
    #- xilinx:io:enable  led -with io_aresn

   
}


$astep24_3l_gecco_astropix3_top generate:verilog:mergeTo  ./hw
$astep24_3l_gecco_astropix3_top xilinx:constraints:validate ./constraints.xdc