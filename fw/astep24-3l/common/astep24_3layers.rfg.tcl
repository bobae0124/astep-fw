
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
        {HK_XADC_TEMPERATURE    -size 16 -sw_read_only -hw_write -doc "XADC FPGA temperature (automatically updated by firmware)"}
        {HK_XADC_VCCINT         -size 16 -sw_read_only -hw_write -doc "XADC FPGA VCCINT (automatically updated by firmware)"}
        {HK_CONVERSION_TRIGGER   -counter -interrupt -size 32 -match_reset 32'd10 -updown -doc "This register is a counter that generates regular interrupts to fetch new XADC values"}
        {HK_STAT_CONVERSIONS_COUNTER -size 32 -sw_read_only -counter -enable -hw_ignore -doc "Counter increased after each XADC conversion (for information) "} 
        {HK_ADC_MOSI_FIFO -fifo_axis_master -with_tlast -doc "FIFO to send bytes to ADC"}
        {HK_ADC_MISO_FIFO -fifo_axis_slave -read_count  -doc "FIFO with read bytes from ADC"}
        {HK_DAC_MOSI_FIFO -fifo_axis_master -with_tlast  -doc "FIFO to send bytes to DAC"}
        {SPI_LAYERS_CKDIVIDER -clock_divider spi_layers -reset 8'h4 -async_reset -doc "This clock divider provides the clock for the Layer SPI interfaces"}
        {SPI_HK_CKDIVIDER     -clock_divider spi_hk     -reset 8'h4 -async_reset -doc "This clock divider provides the clock for the Housekeeping ADC/DAC SPI interfaces"}
        [rrepeat 4 {LAYER_${i}_CFG_CTRL            -reset 8'b00000111 -bits {{hold -doc "Hold Layer"} {reset -doc "Active High Layer Reset (Inverted before output to Sensor)"}  {disable_autoread -doc "1: Layer doesn't read frames if the interrupt is low, 0: Layer reads frames upon interrupt trigger"}}  -doc "Layer $i control bits"}]
        [rrepeat 4 {LAYER_${i}_STATUS               -sw_read_only  -bits { {interruptn -input} {frame_decoding -input} } -doc "Layer $i status bits"} ]
        [rrepeat 4 {LAYER_${i}_STAT_FRAME_COUNTER  -size 32  -counter -enable -hw_ignore -doc "Counts the number of data frames"}]
        [rrepeat 4 {LAYER_${i}_STAT_IDLE_COUNTER   -size 32  -counter -enable -hw_ignore -doc "Counts the number of Idle bytes"}]
        [rrepeat 4 {LAYER_${i}_MOSI                 -fifo_axis_master -with_tlast -write_count -doc "FIFO to send bytes to Layer $i Astropix"}]
        {LAYERS_CFG_FRAME_TAG_COUNTER               -size 32 -counter -doc "Counter to tag frames upon detection (Counter value added to frame output)"}
        {LAYERS_CFG_NODATA_CONTINUE   -reset 8'd5 -doc "Number of IDLE Bytes until stopping readout"}
        {LAYERS_SR_OUT 
            -doc "Shift Register Configuration I/O Control register"
            -bits {
                {CK1 -doc "CK1 I/O for Shift Register Configuration"}
                {CK2 -doc "CK2 I/O for Shift Register Configuration"}
                {SIN -doc "SIN I/O for Shift Register Configuration"}
                {LD0 -doc "Load signal for Layer 0"}
                {LD1 -doc "Load signal for Layer 1"}
                {LD2 -doc "Load signal for Layer 2"}
                {LD3 -doc "Load signal for Layer 3 (internal test layer)"}   
            }
        }
        {LAYERS_SR_IN 
            -doc "Shift Register Configuration Input control (Readback enable and layers inputs)"
            -bits {
                {RB -doc "Set to 1 to activate Shift Register Read back from layers"}
                {SOUT0 -input}
                {SOUT1 -input}
                {SOUT2 -input}
                {SOUT3 -input}
            }
        }
        {LAYERS_INJ_CTRL -reset 8'b00000110 
            -doc "Control bits for the Injection Pattern Generator" 
            -bits {
                {reset -doc "Reset for Pattern Generator - must be set to 1 after writing registers for config to be read"}
                {suspend -doc "Suspend module from running"}
                synced
                trigger
                {write -doc "Write Register value at address set by WADDR/WDATA registers"}
                {done -input -doc "Pattern generator finished configured sequence"}
                {running -input -doc "Pattern generator is running generating injection pulses"}
            }
        }
        {LAYERS_INJ_WADDR -size 4 -doc "Address for register to write in Injection Pattern Generator"  }
        {LAYERS_INJ_WDATA  -doc "Data for register to write in Injection Pattern Generator" }
        
        {LAYERS_READOUT -fifo_axis_slave -read_count -doc "Reads from the readout data fifo"}
        [rrepeat 1 {LAYER_[expr ${i}+3]_GEN_CTRL  -bits {
            FRAME_ENABLE
        }}]
        [rrepeat 1 {LAYER_[expr ${i}+3]_GEN_FRAME_COUNT  -size 16 -reset 16'd5}]
        {IO_CTRL 
            -doc "Configuration register for I/O multiplexers and gating."
            -reset 8'b00001000 
            -bits {
                {sample_clock_enable    -doc "Sample clock output enable. Sample clock output is 0 if this bit is set to 0"} 
                {timestamp_clock_enable -doc "Timestamp clock output enable. Timestamp clock output is 0 if this bit is set to 0"} 
                {gecco_sample_clock_se  -doc "Selects the Single Ended output for the sample clock on Gecco." } 
                {gecco_inj_enable       -doc "Selects the Gecco Injection to Injection Card output for the injection patterns. Set to 0 to route the injection pattern directly to the chip carrier"}
            } 
                
        } 
        {IO_LED -doc "This register is connected to the Board's LED. See target documentation for detailed connection information."}
        {GECCO_SR_CTRL -bits {ck sin ld} -doc "Shift Register Control for Gecco Cards"}
        
}]
return [concat $baseRegisters ${::RFG_EXTRA_BOARD_REGS} ]

        