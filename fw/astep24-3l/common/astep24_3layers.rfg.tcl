
## Sets the toplevel name only if not set already
icSetParameter IC_RFG_TARGET astep24_3l_top 
icSetParameter IC_RFG_NAME   main_rfg

# This utility function replicates a list passed with an i index n times
proc rrepeat {count lst} {
    set range {}
    for {set i 0} {$i < $count} {incr i} {
        lappend range $i
    }
    set res  [lmap i $range {
         subst  $lst
    }]
   
    return [concat $res]
}
 #[rrepeat 3 {LAYER_${i}_IDLE_COUNTER   -size 16 -sw_read_only -counter -enable}]
icDefineParameter RFG_FW_ID "FW ID for the target"
if {[catch {set ::RFG_FW_ID}]} {
    #set ::RFG_FW_ID 32'h0000ff00
    set ::RFG_FW_ID `RFG_FW_ID
}
if {[catch {set ::RFG_EXTRA_BOARD_REGS}]} {
    set ::RFG_EXTRA_BOARD_REGS {}
}

## Build version, taken from define set in simulation or fpga project
set ::RFG_FW_BUILD `RFG_FW_BUILD

## Main registers definition
######################
set baseRegisters [subst {
        {HK_FIRMWARE_ID         -size 32 -reset ${::RFG_FW_ID}    -sw_read_only -hw_ignore -doc "ID to identify the Firmware"}
        {HK_FIRMWARE_VERSION    -size 32 -reset ${::RFG_FW_BUILD} -sw_read_only -hw_ignore -doc "Date based Build version: YEARMONTHDAYCOUNT"}
        {HK_XADC_TEMPERATURE    -size 16 -sw_read_only -hw_write}
        {HK_XADC_VCCINT         -size 16 -sw_read_only -hw_write}
        {HK_CONVERSION_TRIGGER   -counter -interrupt -size 32 -match_reset 32'd10 -updown}
        {HK_STAT_CONVERSIONS_COUNTER -size 32 -sw_read_only -counter -enable -hw_ignore} 
        {HK_ADC_MOSI_FIFO -fifo_axis_master -with_tlast -doc "FIFO to send bytes to ADC"}
        {HK_ADC_MISO_FIFO -fifo_axis_slave -read_count  -doc "FIFO with read bytes from ADC"}
        {HK_DAC_MOSI_FIFO -fifo_axis_master -with_tlast  -doc "FIFO to send bytes to DAC"}
        {SPI_LAYERS_CKDIVIDER -clock_divider spi_layers -reset 8'h4 -async_reset}
        {SPI_HK_CKDIVIDER     -clock_divider spi_hk     -reset 8'h4 -async_reset}
        [rrepeat 4 {LAYER_${i}_CFG_CTRL            -reset 8'b00000111 -bits {{hold -doc "Hold Layer"} {reset -doc "Active High Layer Reset (Inverted before output to Sensor)"}  {disable_autoread -doc "1: Layer doesn't read frames if the interrupt is low, 0: Layer reads frames upon interrupt trigger"}}  -doc "Layer $i control bits"}]
        [rrepeat 4 {LAYER_${i}_STATUS               -sw_read_only  -bits { {interruptn -input} {frame_decoding -input} } -doc "Layer $i status bits"} ]
        [rrepeat 4 {LAYER_${i}_STAT_FRAME_COUNTER  -size 32  -counter -enable -hw_ignore -doc "Counts the number of data frames"}]
        [rrepeat 4 {LAYER_${i}_STAT_IDLE_COUNTER   -size 32  -counter -enable -hw_ignore -doc "Counts the number of Idle bytes"}]
        [rrepeat 4 {LAYER_${i}_MOSI                 -fifo_axis_master -with_tlast -write_count -doc "FIFO to send bytes to Layer $i Astropix"}]
        {LAYERS_CFG_FRAME_TAG_COUNTER               -size 32 -counter -doc "Counter to tag frames upon detection (Counter value added to frame output)"}
        {LAYERS_CFG_NODATA_CONTINUE   -reset 8'd5 -doc "Number of IDLE Bytes until stopping readout"}
        {LAYERS_SR_OUT -bits {
            CK1
            CK2
            SIN
            LD0
            LD1
            LD2
            LD3
            LD4
        }}
        {LAYERS_INJ_CTRL -reset 8'b00000110   -bits {
            reset
            suspend
            synced
            trigger
            write
            {done -input}
            {running -input}
        }}
        {LAYERS_INJ_WADDR -size 4  }
        {LAYERS_INJ_WDATA  }
        {LAYERS_SR_IN -bits {
            RB
            {SOUT0 -input}
            {SOUT1 -input}
            {SOUT2 -input}
            {SOUT3 -input}
            {SOUT4 -input}
        }}
        {LAYERS_READOUT -fifo_axis_slave -read_count}
        [rrepeat 1 {LAYER_[expr ${i}+3]_GEN_CTRL  -bits {
            FRAME_ENABLE
        }}]
        [rrepeat 1 {LAYER_[expr ${i}+3]_GEN_FRAME_COUNT  -size 16 -reset 16'd5}]
        {IO_CTRL 
                -reset 8'b00001000 
                -bits {
                    {sample_clock_enable    -doc "Sample clock output enable. Sample clock output is 0 if this bit is set to 0"} 
                    {timestamp_clock_enable -doc "Timestamp clock output enable. Timestamp clock output is 0 if this bit is set to 0"} 
                    {gecco_sample_clock_se  -doc "Selects the Single Ended output for the sample clock on Gecco." } 
                    {gecco_inj_enable       -doc "Selects the Gecco Injection to Injection Card output for the injection patterns. Set to 0 to route the injection pattern directly to the chip carrier"}
                } 
                -doc "Configuration register for I/O multiplexers and gating."
        } 
        {IO_LED -doc "This register is connected to the Board's LED. See target documentation for detailed connection information."}
        {GECCO_SR_CTRL -bits {ck sin ld} -doc "Shift Register Control for Gecco Cards"}
        
}]
return [concat $baseRegisters ${::RFG_EXTRA_BOARD_REGS} ]

        