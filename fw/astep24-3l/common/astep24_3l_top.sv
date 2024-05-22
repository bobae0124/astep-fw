


/*
    Generated by HDL Build
*/
module astep24_3l_top(
    output wire				clk_sample,
    output wire				clk_timestamp,
    input  wire				cold_resn,
    input  wire				warm_resn,

    output wire				ext_adc_spi_csn,
    input  wire				ext_adc_spi_miso,
    output wire				ext_dac_spi_csn,
    output wire				ext_spi_clk,
    output wire				ext_spi_mosi,
    output wire				io_aresn,
    
    output wire				layer_0_hold,
    input  wire				layer_0_interruptn,
    output wire				layer_0_resn,
    output wire				layer_0_spi_clk,
    output wire				layer_0_spi_csn,
    input  wire [1:0]		layer_0_spi_miso,
    output wire				layer_0_spi_mosi,

    output wire				layer_1_hold,
    input  wire				layer_1_interruptn,
    output wire				layer_1_resn,
    output wire				layer_1_spi_clk,
    output wire				layer_1_spi_csn,
    input  wire [1:0]		layer_1_spi_miso,
    output wire				layer_1_spi_mosi,

    output wire				layer_2_hold,
    input  wire				layer_2_interruptn,
    output wire				layer_2_resn,
    output wire				layer_2_spi_clk,
    output wire				layer_2_spi_csn,
    input  wire [1:0]		layer_2_spi_miso,
    output wire				layer_2_spi_mosi,

    output wire             layers_inj,
    output wire             layers_spi_csn, // This is a merged CS for all layers
    output wire				layers_sr_in_rb,
    input  wire				layers_sr_in_sout0,
    input  wire				layers_sr_in_sout1,
    input  wire				layers_sr_in_sout2,
    output wire				layers_sr_out_ck1,
    output wire				layers_sr_out_ck2,
    output wire				layers_sr_out_ld0,
    output wire				layers_sr_out_ld1,
    output wire				layers_sr_out_ld2,
    output wire				layers_sr_out_sin,
    output wire [7:0]		rfg_io_led,
    input  wire				spi_clk,
    input  wire				spi_csn,
    output wire				spi_miso,
    input  wire				spi_mosi,
    input  wire				sysclk,
    input  wire				uart_rx,
    output wire				uart_tx,


    input  wire             ftdi_clko,
    inout  [7:0]            ftdi_data,
    input  wire             ftdi_rxf_n,
    input  wire             ftdi_txe_n,
    output wire             ftdi_rd_n,
    output wire             ftdi_wr_n,
    output wire             ftdi_oe_n,
    

    

    // Target Specific
    //---------------
    output wire             gecco_sr_ctrl_ck,
    output wire             gecco_sr_ctrl_sin,
    output wire             gecco_sr_ctrl_ld,

    // IO Control
    //-----------
    output wire io_ctrl_sample_clock_enable,
    output wire io_ctrl_timestamp_clock_enable,
    output wire io_ctrl_gecco_sample_clock_se,
    output wire io_ctrl_gecco_inj_enable
);

    

    // Clocking
    //-------------------
    wire clk_100; // size=1
    wire clk_100_resn; // size=1
    wire clk_uart; // size=1
    wire clk_uart_resn; // size=1
    wire clk_core; // size=1
    wire clk_core_resn; // size=1
    wire clk_ftdi_resn;
    astep24_3l_top_clocking  clocking_reset_I (
        .sysclk_in(sysclk),
        .cold_resn_in(cold_resn),
        .io_aresn(io_aresn),
        .warm_resn_in(warm_resn),
        .clk_100(clk_100),
        .clk_100_resn(clk_100_resn),
        .clk_core(clk_core),
        .clk_core_resn(clk_core_resn),
        .clk_sample(clk_sample),
        .clk_timestamp(clk_timestamp),
        .clk_uart(clk_uart),
        .clk_uart_resn(clk_uart_resn),
        .clk_ftdi(ftdi_clko),
        .clk_ftdi_resn(clk_ftdi_resn)
        
    );

    // Interrupt Input Sychronisation
    //-----------
    wire [2:0] layers_interruptn = {layer_2_interruptn,layer_1_interruptn,layer_0_interruptn};
    wire [2:0] layers_interruptn_synced;
    genvar li;
    generate
        for (li = 0 ; li < 3 ; li++) begin 
            async_input_sync #(.RESET_VALUE(1'b1),.DEBOUNCE_DELAY(2)) layer_interrupt_sync (
                .async_input(layers_interruptn[li]),
                .clk(clk_core),
                .resn(clk_core_resn),
                .sync_out(layers_interruptn_synced[li])
            );
        end
    endgenerate
    
    

    // SW interface
    //-------------
    wire [7:0] sw_if_rfg_address; 
    wire [7:0] sw_if_rfg_write_value;
    wire [7:0] sw_if_rfg_read_value;
    wire sw_if_rfg_write; 
    wire sw_if_rfg_write_last; 
    wire sw_if_rfg_read;
    wire sw_if_rfg_read_valid; 

    
    sw_ftdi245_spi_uart  sw_if (
        .clk_core(clk_core),
        .clk_core_resn(clk_core_resn),
        .clk_uart(clk_uart),
        .clk_uart_resn(clk_uart_resn),
        .rfg_address(sw_if_rfg_address),
        .rfg_read(sw_if_rfg_read),
        .rfg_read_valid(sw_if_rfg_read_valid),
        .rfg_read_value(sw_if_rfg_read_value),
        .rfg_write(sw_if_rfg_write),
        .rfg_write_last(sw_if_rfg_write_last),
        .rfg_write_value(sw_if_rfg_write_value),
        .spi_clk(spi_clk),
        .spi_csn(spi_csn),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx),


        .clk_ftdi(ftdi_clko),
        .clk_ftdi_resn(clk_ftdi_resn),
        .ftdi_txe_n(ftdi_txe_n),
        .ftdi_rxf_n(ftdi_rxf_n),
        .ftdi_rd_n(ftdi_rd_n),
        .ftdi_oe_n(ftdi_oe_n),
        .ftdi_wr_n(ftdi_wr_n),
        .ftdi_data(ftdi_data)
    );


    // Register File
    //-----------------

    wire [7:0]  injection_generator_inj_wdata;
    wire [3:0]  injection_generator_inj_waddr;

    wire [7:0]  hk_dac_mosi_fifo_m_axis_tdata;
    wire [7:0]  hk_adcdac_mosi_fifo_m_axis_tdata;
    wire [31:0] hk_adc_miso_fifo_read_size;
    wire [7:0]  hk_adc_miso_fifo_s_axis_tdata;
    wire [15:0] hk_xadc_temperature;
    wire [15:0] hk_xadc_vccint;

    wire [7:0]  layer_0_mosi_tdata;
    wire [7:0]  layer_1_mosi_tdata;
    wire [7:0]  layer_2_mosi_tdata;

    wire [31:0] layer_0_mosi_write_size;
    wire [31:0] layer_1_mosi_write_size;
    wire [31:0] layer_2_mosi_write_size;

    wire layer_0_reset;
    wire layer_1_reset;
    wire layer_2_reset;


    assign layer_0_resn = !layer_0_reset;
    assign layer_1_resn = !layer_1_reset;
    assign layer_2_resn = !layer_2_reset;


    wire [7:0]  layers_readout_s_axis_tdata;
    wire [31:0] layers_readout_read_size;
    wire [7:0]  layers_cfg_nodata_continue;
    wire [31:0] layers_cfg_frame_tag_counter;
     
    wire hk_conversion_trigger_interrupt;
    wire hk_ctrl_select_adc;

    main_rfg  main_rfg_I (
            
        .clk(clk_core),
        .resn(clk_core_resn),
        .rfg_address(sw_if_rfg_address),
        .rfg_write_value(sw_if_rfg_write_value),
        .rfg_write(sw_if_rfg_write),
        .rfg_write_last(sw_if_rfg_write_last),
        .rfg_read(sw_if_rfg_read),
        .rfg_read_valid(sw_if_rfg_read_valid),
        .rfg_read_value(sw_if_rfg_read_value),

        .io_led(rfg_io_led[7:0]),

        .hk_ctrl(),
        .hk_ctrl_select_adc(hk_ctrl_select_adc),
        .hk_xadc_temperature(hk_xadc_temperature),
        .hk_xadc_temperature_write(hk_xadc_temperature_write),
        .hk_xadc_vccint(hk_xadc_vccint),
        .hk_xadc_vccint_write(hk_xadc_vccint_write),
        .hk_conversion_trigger(),
        .hk_conversion_trigger_interrupt(hk_conversion_trigger_interrupt),
        .hk_conversion_trigger_match(),
        .hk_stat_conversions_counter_enable(hk_xadc_temperature_write),
        
        // ADC+DAC -> MOSI
        .hk_adcdac_mosi_fifo_m_axis_tdata(hk_adcdac_mosi_fifo_m_axis_tdata),
        .hk_adcdac_mosi_fifo_m_axis_tvalid(hk_adcdac_mosi_fifo_m_axis_tvalid),
        .hk_adcdac_mosi_fifo_m_axis_tready(hk_adcdac_mosi_fifo_m_axis_tready),
        .hk_adcdac_mosi_fifo_m_axis_tlast(hk_adcdac_mosi_fifo_m_axis_tlast),

        // ADC <- MISO
        .hk_adc_miso_fifo_s_axis_tdata(hk_adc_miso_fifo_s_axis_tdata),
        .hk_adc_miso_fifo_s_axis_tvalid(hk_adc_miso_fifo_s_axis_tvalid),
        .hk_adc_miso_fifo_s_axis_tready(hk_adc_miso_fifo_s_axis_tready),
        .hk_adc_miso_fifo_read_size(hk_adc_miso_fifo_read_size),
        .hk_adc_miso_fifo_read_size_write(1'b1),
        
        // SPI Clock Dividers
        .spi_layers_ckdivider_source_clk(clk_core),
        .spi_layers_ckdivider_source_resn(clk_core_resn),
        .spi_layers_ckdivider_divided_clk(spi_layers_ckdivider_divided_clk),
        .spi_layers_ckdivider_divided_resn(spi_layers_ckdivider_divided_resn),

        .spi_hk_ckdivider_source_clk(clk_core),
        .spi_hk_ckdivider_source_resn(clk_core_resn),
        .spi_hk_ckdivider_divided_clk(spi_hk_ckdivider_divided_clk),
        .spi_hk_ckdivider_divided_resn(spi_hk_ckdivider_divided_resn),

        // Layers Controls
        .layer_0_cfg_ctrl(),
        .layer_0_cfg_ctrl_disable_autoread(layer_0_cfg_ctrl_disable_autoread),
        .layer_0_cfg_ctrl_reset(layer_0_reset),
        .layer_0_cfg_ctrl_hold(layer_0_hold),
        .layer_0_cfg_ctrl_cs(layer_0_cfg_ctrl_cs),
        .layer_0_cfg_ctrl_disable_miso(layer_0_cfg_ctrl_disable_miso),
        
        .layer_1_cfg_ctrl(),
        .layer_1_cfg_ctrl_disable_autoread(layer_1_cfg_ctrl_disable_autoread),
        .layer_1_cfg_ctrl_reset(layer_1_reset),
        .layer_1_cfg_ctrl_hold(layer_1_hold),
        .layer_1_cfg_ctrl_cs(layer_1_cfg_ctrl_cs),
        .layer_1_cfg_ctrl_disable_miso(layer_1_cfg_ctrl_disable_miso),

        .layer_2_cfg_ctrl(),
        .layer_2_cfg_ctrl_disable_autoread(layer_2_cfg_ctrl_disable_autoread),
        .layer_2_cfg_ctrl_reset(layer_2_reset),
        .layer_2_cfg_ctrl_hold(layer_2_hold),
        .layer_2_cfg_ctrl_cs(layer_2_cfg_ctrl_cs),
        .layer_2_cfg_ctrl_disable_miso(layer_2_cfg_ctrl_disable_miso),

        .layer_0_status(),   
        .layer_0_status_interruptn(layers_interruptn_synced[0]),
        .layer_0_status_frame_decoding(layer_0_status_frame_decoding),

        .layer_1_status(),   
        .layer_1_status_interruptn(layers_interruptn_synced[1]),
        .layer_1_status_frame_decoding(layer_1_status_frame_decoding),

        .layer_2_status(),   
        .layer_2_status_interruptn(layers_interruptn_synced[2]),
        .layer_2_status_frame_decoding(layer_2_status_frame_decoding),

        .layer_0_stat_frame_counter_enable(layer_0_stat_frame_counter_enable),
        .layer_1_stat_frame_counter_enable(layer_1_stat_frame_counter_enable),
        .layer_2_stat_frame_counter_enable(layer_2_stat_frame_counter_enable),

        .layer_0_stat_idle_counter_enable(layer_0_stat_idle_counter_enable),
        .layer_1_stat_idle_counter_enable(layer_1_stat_idle_counter_enable),
        .layer_2_stat_idle_counter_enable(layer_2_stat_idle_counter_enable),
  
        .layer_0_mosi_m_axis_tdata(layer_0_mosi_tdata),
        .layer_0_mosi_m_axis_tvalid(layer_0_mosi_tvalid),
        .layer_0_mosi_m_axis_tready(layer_0_mosi_tready),
        .layer_0_mosi_m_axis_tlast(layer_0_mosi_tlast),
        .layer_0_mosi_write_size(layer_0_mosi_write_size),
        .layer_0_mosi_write_size_write(1'b1),

        .layer_1_mosi_m_axis_tdata(layer_1_mosi_tdata),
        .layer_1_mosi_m_axis_tvalid(layer_1_mosi_tvalid),
        .layer_1_mosi_m_axis_tready(layer_1_mosi_tready),
        .layer_1_mosi_m_axis_tlast(layer_1_mosi_tlast),
        .layer_1_mosi_write_size(layer_1_mosi_write_size),
        .layer_1_mosi_write_size_write(1'b1),

        .layer_2_mosi_m_axis_tdata(layer_2_mosi_tdata),
        .layer_2_mosi_m_axis_tvalid(layer_2_mosi_tvalid),
        .layer_2_mosi_m_axis_tready(layer_2_mosi_tready),
        .layer_2_mosi_m_axis_tlast(layer_2_mosi_tlast),
        .layer_2_mosi_write_size(layer_2_mosi_write_size),
        .layer_2_mosi_write_size_write(1'b1),
      
        .layers_cfg_frame_tag_counter(layers_cfg_frame_tag_counter),
        .layers_cfg_nodata_continue(layers_cfg_nodata_continue),

        .layers_sr_out(),
        .layers_sr_out_ck1(layers_sr_out_ck1),
        .layers_sr_out_ck2(layers_sr_out_ck2),
        .layers_sr_out_sin(layers_sr_out_sin),
        .layers_sr_out_ld0(layers_sr_out_ld0),
        .layers_sr_out_ld1(layers_sr_out_ld1),
        .layers_sr_out_ld2(layers_sr_out_ld2),
     
        .layers_inj_ctrl(),
        .layers_inj_ctrl_reset              (injection_generator_inj_ctrl_reset),
        .layers_inj_ctrl_suspend            (injection_generator_inj_ctrl_suspend),
        .layers_inj_ctrl_synced             (injection_generator_inj_ctrl_synced),
        .layers_inj_ctrl_trigger            (injection_generator_inj_ctrl_trigger),
        .layers_inj_ctrl_write              (injection_generator_inj_ctrl_write),
        .layers_inj_ctrl_done               (injection_generator_inj_ctrl_done),
        .layers_inj_ctrl_running            (injection_generator_inj_ctrl_running),
        
        .layers_inj_waddr                   (injection_generator_inj_waddr),
        .layers_inj_wdata                   (injection_generator_inj_wdata),

        .layers_sr_in(),
        .layers_sr_in_rb(layers_sr_in_rb),
        .layers_sr_in_sout0(layers_sr_in_sout0),
        .layers_sr_in_sout1(layers_sr_in_sout1),
        .layers_sr_in_sout2(layers_sr_in_sout2),

        .layers_readout_s_axis_tdata(layers_readout_s_axis_tdata),
        .layers_readout_s_axis_tvalid(layers_readout_s_axis_tvalid),
        .layers_readout_s_axis_tready(layers_readout_s_axis_tready),
        .layers_readout_read_size(layers_readout_read_size),
        .layers_readout_read_size_write(1'b1),

        // Target Specific Registers
        .gecco_sr_ctrl(),
        .gecco_sr_ctrl_ck(gecco_sr_ctrl_ck),
        .gecco_sr_ctrl_sin(gecco_sr_ctrl_sin),
        .gecco_sr_ctrl_ld(gecco_sr_ctrl_ld),

        // I/O Control like clocks
        .io_ctrl(),
        .io_ctrl_sample_clock_enable(io_ctrl_sample_clock_enable),
        .io_ctrl_timestamp_clock_enable(io_ctrl_timestamp_clock_enable),
        .io_ctrl_gecco_sample_clock_se(io_ctrl_gecco_sample_clock_se),
        .io_ctrl_gecco_inj_enable(io_ctrl_gecco_inj_enable)
  );




    // Layers Readout Module
    // - Contains Each Layer Interface with Protocol management, and the Switched buffer
    //-------------------------------
    layers_readout_switched #(.LAYER_COUNT(3)) switched_readout(
        .clk_core(clk_core),
        .clk_core_resn(clk_core_resn),
        .clk_io(spi_layers_ckdivider_divided_clk),
        .clk_io_resn(spi_layers_ckdivider_divided_resn),

        // Layers
        .layers_interruptn({
            layers_interruptn_synced[2],
            layers_interruptn_synced[1],
            layers_interruptn_synced[0]}),
        .layers_spi_clk({
            layer_2_spi_clk,
            layer_1_spi_clk,
            layer_0_spi_clk}),
        .layers_spi_mosi({
            layer_2_spi_mosi,
            layer_1_spi_mosi,
            layer_0_spi_mosi}),
        .layers_spi_miso({
            layer_2_spi_miso,
            layer_1_spi_miso,
            layer_0_spi_miso}),
        .layers_spi_csn(),

        // MOSI
        //-----------
        .layers_mosi_s_axis_tdata({
            layer_2_mosi_tdata,
            layer_1_mosi_tdata,
            layer_0_mosi_tdata}),
        .layers_mosi_s_axis_tlast({
            layer_2_mosi_tlast,
            layer_1_mosi_tlast,
            layer_0_mosi_tlast}),
        .layers_mosi_s_axis_tready({
            layer_2_mosi_tready,
            layer_1_mosi_tready,
            layer_0_mosi_tready}),
        .layers_mosi_s_axis_tvalid({
            layer_2_mosi_tvalid,
            layer_1_mosi_tvalid,
            layer_0_mosi_tvalid}),
        .layers_mosi_write_size({
            layer_2_mosi_write_size,
            layer_1_mosi_write_size,
            layer_0_mosi_write_size
        }),

        // MISO readout
        //-------------------
        .readout_frames_data_count(layers_readout_read_size),
        .readout_frames_m_axis_tdata(layers_readout_s_axis_tdata),
        .readout_frames_m_axis_tready(layers_readout_s_axis_tready),
        .readout_frames_m_axis_tvalid(layers_readout_s_axis_tvalid),

        // Configurations
        //---------------------
        .config_disable_autoread({
            layer_2_cfg_ctrl_disable_autoread,
            layer_1_cfg_ctrl_disable_autoread,
            layer_0_cfg_ctrl_disable_autoread
        }),
        .config_frame_tag_counter(layers_cfg_frame_tag_counter),
        .config_nodata_continue(layers_cfg_nodata_continue),
        .config_layers_reset({
            layer_2_reset,
            layer_1_reset,
            layer_0_reset
        }),
        .config_layers_disable_miso({
            layer_2_cfg_ctrl_disable_miso,
            layer_1_cfg_ctrl_disable_miso,
            layer_0_cfg_ctrl_disable_miso
        }),

        // Statistics
        //----------------------
        .layers_status_frame_decoding({
            layer_2_status_frame_decoding,
            layer_1_status_frame_decoding,
            layer_0_status_frame_decoding
        }),
        .layers_stat_count_frame({
            layer_2_stat_frame_counter_enable,
            layer_1_stat_frame_counter_enable,
            layer_0_stat_frame_counter_enable}),
        .layers_stat_count_idle({
            layer_2_stat_idle_counter_enable,
            layer_1_stat_idle_counter_enable,
            layer_0_stat_idle_counter_enable})
    );

    // Injection Generator
    //-------------------
    sync_async_patgen  injection_generator (
        .clk                (clk_core),
        .rst               (injection_generator_inj_ctrl_reset),
        
        .out                (layers_inj),
        
        .rfg_write          (injection_generator_inj_ctrl_write),
        .rfg_write_address  (injection_generator_inj_waddr),
        .rfg_write_data     (injection_generator_inj_wdata),

        .done               (injection_generator_inj_ctrl_done),
        .running            (injection_generator_inj_ctrl_running),
        .suspend            (injection_generator_inj_ctrl_suspend),
        .synced             (injection_generator_inj_ctrl_synced),
        .syncrst            (injection_generator_inj_ctrl_trigger)
    );



    // Housekeeping
    //--------------------
    housekeeping_main  housekeeping(
        .clk_core(clk_core),
        .clk_core_resn(clk_core_resn),

        .clk_spi(spi_hk_ckdivider_divided_clk),
        .clk_spi_resn(spi_hk_ckdivider_divided_resn),

        .select_adc(hk_ctrl_select_adc),

        .ext_adc_miso_m_axis_tdata(hk_adc_miso_fifo_s_axis_tdata),
        .ext_adc_miso_m_axis_tready(hk_adc_miso_fifo_s_axis_tready),
        .ext_adc_miso_m_axis_tvalid(hk_adc_miso_fifo_s_axis_tvalid),
        .ext_adc_miso_read_size(hk_adc_miso_fifo_read_size),
       
        .ext_adcdac_mosi_s_axis_tdata(hk_adcdac_mosi_fifo_m_axis_tdata),
        .ext_adcdac_mosi_s_axis_tlast(hk_adcdac_mosi_fifo_m_axis_tlast),
        .ext_adcdac_mosi_s_axis_tready(hk_adcdac_mosi_fifo_m_axis_tready),
        .ext_adcdac_mosi_s_axis_tvalid(hk_adcdac_mosi_fifo_m_axis_tvalid),
       
        .ext_spi_clk(ext_spi_clk_internal),
        .ext_spi_csn(ext_spi_csn_internal),
        .ext_spi_miso(ext_adc_spi_miso),
        .ext_spi_mosi(ext_spi_mosi),


        .xadc_conversion_trigger(hk_conversion_trigger_interrupt),
        .xadc_temperature(hk_xadc_temperature),
        .xadc_temperature_write(hk_xadc_temperature_write),
        .xadc_vccint(hk_xadc_vccint),
        .xadc_vccint_write(hk_xadc_vccint_write)
    );
    
    // SPI IO
    //-----------------

    //-- Shared CSN for Layers
    //---------------

    // First layers CSN are set by the control register
    // When Autoread is on, always set CSN to 0 - otherwise the CS control bit sets it
    assign layer_0_spi_csn = !(layer_0_cfg_ctrl_cs || !layer_0_cfg_ctrl_disable_autoread) ;
    assign layer_1_spi_csn = !(layer_1_cfg_ctrl_cs || !layer_1_cfg_ctrl_disable_autoread) ;
    assign layer_2_spi_csn = !(layer_2_cfg_ctrl_cs || !layer_2_cfg_ctrl_disable_autoread) ;
    assign layers_spi_csn = layer_0_spi_csn & layer_1_spi_csn & layer_2_spi_csn;

    //-- Housekeeping
    //--------------

    //-- MOSI and CLK is shared
    //-- CSN is selected based on RFG control
    assign ext_spi_clk = hk_ctrl_select_adc ? !ext_spi_clk_internal : ext_spi_clk_internal;
    assign ext_dac_spi_csn = !hk_ctrl_select_adc ? ext_spi_csn_internal : 1;
    assign ext_adc_spi_csn =  hk_ctrl_select_adc ? ext_spi_csn_internal : 1;
    /*MUXF7  ext_spi_mosi_MUXF7(
        .I0(ext_adc_spi_mosi),
        .I1(ext_dac_spi_mosi),
        .O(ext_spi_mosi),
        .S(ext_adc_spi_csn)
    );*/
            
    /*BUFGCTRL  spi_clk_buf  (
        .I0(!ext_adc_spi_clk),
        .I1(ext_dac_spi_clk),
        .O(ext_spi_clk),
        .CE0(1'b1),
        .CE1(1'b1),
        .IGNORE0(1'b1),
        .IGNORE1(1'b1),
        .S0(hk_ctrl_select_adc ),
        .S1(!hk_ctrl_select_adc) 
    );*/
    /*BUFGMUX  ext_spi_clk_BUFGMUX(
        .I0(ext_adc_spi_clk),
        .I1(ext_dac_spi_clk),
        .O(ext_spi_clk),
        .S(ext_adc_spi_csn)
    );*/
                

endmodule

        
