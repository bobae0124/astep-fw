


/*
    Generated by HDL Build
*/
module astep24_3l_multitarget_top (

    input  wire				sysclk,

    // Board Stuff
    //-----------
    input  wire				cpu_resetn,

    `ifdef TARGET_NEXYS

    output wire [7:0]		led,


    input  wire				btnc,
    input  wire				btnd,
    input  wire				btnl,
    input  wire				btnr,
    input  wire				btnu,

    input  wire [7:0]		sw,

    output wire				uart_rx_out,
    input  wire				uart_tx_in,

    inout  [7:0]            ftdi_data,
    input                   ftdi_rxf_n,
    input                   ftdi_txe_n,
    output                  ftdi_rd_n,
    output                  ftdi_wr_n,
    output                  ftdi_siwun,
    output                  ftdi_oe_n,
    input                   ftdi_clko,

    output wire				vadj_en,
    output wire [1:0]		set_vadj,

    // This is going to the Gecco Injection LVDS receiver, routed to Injection Card slot
    // Starting v3, a direct injection signal can be send to the chip which embed the injection switch and capacitor
    output wire				gecco_inj_n,
    output wire				gecco_inj_p,
    output wire				gecco_sr_ctrl_ck_n,
    output wire				gecco_sr_ctrl_ck_p,
    output wire				gecco_sr_ctrl_ld_n,
    output wire				gecco_sr_ctrl_ld_p,
    output wire				gecco_sr_ctrl_sin_n,
    output wire				gecco_sr_ctrl_sin_p,

    // On Gecco target, the right side of the Chip on the carrier is routed back in
    input  wire				layer_0_spi_right_clk,
    input  wire				layer_0_spi_right_csn,
    output wire [1:0]		layer_0_spi_right_miso,
    input  wire				layer_0_spi_right_mosi, 

    `elsif TARGET_CMOD
    
    input  wire             cold_resn,
    input  wire             warm_resn, 
    output wire [1:0]       led,
    output wire             led0_r, 
    output wire             led0_g, 
    output wire             led0_b, 

    output wire				uart_rx_out,
    input  wire				uart_tx_in,
    `endif

    //--------------------

    // Sample + Timestamp clocks
    // Sample clock can be differential or single ended at the chip on the Carrier
    // Both Outputs are defined, but the one not used will be forced Hih-Z to avoid two clocks being send to the carrier and breaking functinality
    // If the Single ended clock is not send differential, only the p will be driven out and n set to high-z
    `ifdef TARGET_NEXYS

        // Single Ended sample clock to carrier: Either CMOS to chip, or differential to on-carrier lvds
    output wire				sample_clk_se_n,
    output wire				sample_clk_se_p,

        // Differential Sample Clock to chip directly -> one clock or 4 for telescope
        `ifdef TELESCOPE
    output [0:3] sample_clk_n,
    output [0:3] sample_clk_p,
        `else
    output sample_clk_n,
    output sample_clk_p,
        `endif

    `else 
        // CMOD only supports single ended sample clock out (diff connection to chip through lvds converter on pcb)
    output wire				sample_clk, 
    `endif


    output wire				timestamp_clk,
    
    // Layers Config
    //----------------

    // Layers RB+Sout from chip is always single ended
    input  wire				layers_sr_sout0,
    output wire				layers_sr_rb,

    `ifndef CONFIG_SE
    output wire				layers_sr_ck1_n,
    output wire				layers_sr_ck1_p,
    output wire				layers_sr_ck2_n,
    output wire				layers_sr_ck2_p,
    output wire				layers_sr_sin_n,
    output wire				layers_sr_sin_p,
  
    output wire				layers_sr_ld0_n,
    output wire				layers_sr_ld0_p,

        // Diff Config are only single layer on gecco
        // This case will never be reached, only written here for clarity as a placeholder
        `ifndef SINGLE_LAYER
    output wire				layers_sr_ld1_n,
    output wire				layers_sr_ld1_p,
    output wire				layers_sr_ld2_n,
    output wire				layers_sr_ld2_p,
        `endif


    `else 
        // (single ende config here)
    output wire				layers_sr_ck1,
    output wire				layers_sr_ck2,
    output wire				layers_sr_sin,
    

    output wire				layers_sr_ld0,
    

        // Single ended config NOT single layer is the case for CMOD 3 Layers config
        `ifndef SINGLE_LAYER
    output wire				layers_sr_ld1,
    output wire				layers_sr_ld2,

    input  wire				layers_sr_sout1,
    input  wire				layers_sr_sout2,
        `endif
    `endif

    

    // Layers common signals

    // Direct Chip Injection
    `ifndef TELESCOPE // Current Telescope PCB uses inj output ofr a sample clock, that's a mistake, no direct Chip Injection possible for Telescope PCB
    output wire             layers_inj,
    `endif
    output wire				layers_spi_csn,
    output wire             layers_hold,
    output wire				layers_resn,

        
    // Layers -> If SINGLE Layer, then route out only one layer
    // This should be the case for single carrier board Gecco

    input  wire				layer_0_interruptn,
    output wire				layer_0_spi_clk,
    input  wire [1:0]		layer_0_spi_miso,
    output wire				layer_0_spi_mosi,

    `ifndef SINGLE_LAYER
        // (Multi layer here)
    input  wire				layer_1_interruptn,
    output wire				layer_1_spi_clk,
    input  wire [1:0]		layer_1_spi_miso,
    output wire				layer_1_spi_mosi,

    input  wire				layer_2_interruptn,
    output wire				layer_2_spi_clk,
    input  wire [1:0]		layer_2_spi_miso,
    output wire				layer_2_spi_mosi,
    `endif
    
   

    // SPI Host interface
    input  wire				spi_clk,
    input  wire				spi_csn,
    output wire				spi_miso,
    input  wire				spi_mosi,


    // Housekeeping stuff
    output wire				ext_spi_clk,
    output wire				ext_spi_mosi,
    input  wire				ext_spi_adc_miso,
    output wire				ext_spi_adc_csn,
    output wire				ext_spi_dac_csn
    
    
    
);

    // Sample Clock Connections
    //----------------
    wire sample_clk_internal;
    wire timestamp_clk_internal;

    wire io_ctrl_sample_clock_enable;
    wire io_ctrl_timestamp_clock_enable;
    wire io_ctrl_gecco_sample_clock_se;

    wire sample_clk_gated; // Clock for normal sample_clk
    wire sample_clk_se_gated; // Clock for se outputs
    wire sample_clk_se_selected = io_ctrl_sample_clock_enable && io_ctrl_gecco_sample_clock_se;

    // Gate Sample clock and Timestamp clock based on config. Enable signals disable/enable clocks for all configs
    // Sample clock is going to either sample_clk_gated or sample_clk_se_gated
    BUFGCE sample_clock_gate    (.I(sample_clk_internal),   .O(sample_clk_gated),   .CE(io_ctrl_sample_clock_enable && !sample_clk_se_selected));
    BUFGCE timestamp_clock_gate (.I(timestamp_clk_internal),.O(timestamp_clk),      .CE(io_ctrl_timestamp_clock_enable)); 

    

    // SCLOCK_SE_DIFF ->  SE clock as differential to carrier other wise CMOS single ended to carrier
    // Normal Diff sample clock -> directly to chip or can be replicated 4 times in telescope mode
    `ifdef TARGET_NEXYS

        BUFGCE sample_clock_se_gate (.I(sample_clk_internal),   .O(sample_clk_se_gated),.CE(io_ctrl_sample_clock_enable && sample_clk_se_selected));

       // SE Clock
       `ifdef SCLOCK_SE_DIFF
       OBUFDS  clk_sample_se_odiff( .I(sample_clk_se_gated), .O(sample_clk_se_p), .OB(sample_clk_se_n));
       `else
       assign sample_clk_se_n = 1'bz;
       OBUF  clk_sample_se_single( .I(sample_clk_se_gated), .O(sample_clk_se_p));  
       `endif

        // Normal Sample Clock diff to chip
        // Can be telescope
        `ifdef TELESCOPE
            genvar cki;
            generate
                for (cki = 0; cki < 4; cki = cki + 1) begin
                    OBUFDS  clk_sample_odiff ( .I(sample_clk_gated), .O(sample_clk_p[cki]), .OB(sample_clk_n[cki])  );
                end
            endgenerate
        `else 
            OBUFDS  clk_sample_odiff( .I(sample_clk_gated), .O(sample_clk_p), .OB(sample_clk_n));
        `endif
     
    `else
            OBUF  clk_sample_se_single( .I(sample_clk_gated), .O(sample_clk));
    `endif

    // Config Connections
    //-------------------

    `ifndef CONFIG_SE
    wire layers_sr_ck1; // size=1
    wire layers_sr_ck2; // size=1
    wire layers_sr_ld; // size=1
    wire layers_sr_sin; // size=1
    `endif 

    // Injection
    //----------
    // If Gecco Injection is selected (i.e Injection goes to Injection Card), then disable direct chip injection
    // Only possible on nexys
    wire layers_inj_internal;
    wire io_ctrl_gecco_inj_enable;
    `ifdef TARGET_NEXYS
    assign layers_inj = layers_inj_internal & !io_ctrl_gecco_inj_enable;
    `else
    assign layers_inj = layers_inj_internal;
    `endif
    // Other IO Assignmen that depend on the target (like leds, or pcb specific stuff)
    //---------------
    wire [7:0] led_internal;


    `ifdef TARGET_NEXYS

    assign ftdi_siwun = 1'b1;
    
    assign led = led_internal;

    assign vadj_en      = 1;
    assign set_vadj[1]  = 0;
    assign set_vadj[0]  = 1;
        

    assign layer_0_spi_right_miso = 2'b00;

    wire warm_resn = cpu_resetn;
    wire cold_resn = !btnc; // Buttons on nexys pressed are 1, so cold_resn is 0 when btn is 1


    `elsif TARGET_CMOD
    assign led = led_internal[1:0];
    assign led0_r = led_internal[2];
    assign led0_g = led_internal[3];
    assign led0_b = led_internal[4];
    `endif 

    // Single Layer / MultiLayer assigns
    //---------------

    `ifndef SINGLE_LAYER
        // (multi layer here)
    wire layer_0_hold;
    wire layer_1_hold;
    wire layer_2_hold;
    wire [2:0] layers_hold_internal;
    assign layers_hold = |layers_hold_internal;

    wire layer_0_spi_csn;
    wire layer_1_spi_csn;
    wire layer_2_spi_csn;
    wire [2:0] layers_csn_internal;
    //assign layers_spi_csn = &layers_csn_internal;
    assign layers_spi_csn     = 0;

    wire [2:0] layers_resn_internal;
    assign layers_resn = &layers_resn_internal;

    `else
    wire [0:0] layers_hold_internal;
    assign layers_hold = layers_hold_internal;

    wire [0:0] layers_csn_internal;
    //assign layers_spi_csn = layers_csn_internal;
    assign layers_spi_csn     = 0;

    wire [0:0] layers_resn_internal;
    assign layers_resn = layers_resn_internal;

    

    `endif

    // Instances
    //------------
        
    // Module Instance
    // verilator lint_off DECLFILENAME 
    // verilator lint_off UNDRIVEN
    astep24_3l_top  astep24_3l_top_I(
        .sysclk(sysclk),
        .clk_sample(sample_clk_internal),
        .clk_timestamp(timestamp_clk_internal),
        
        .warm_resn(warm_resn), // Warm reset either from IO or a local button
        .cold_resn(cold_resn),

        .io_aresn(/* This output signals a strong reset situation where we might want to put some IO in High-Z, not used for now */),

        .ext_adc_spi_csn(ext_spi_adc_csn),
        .ext_adc_spi_miso(ext_spi_adc_miso),
        .ext_dac_spi_csn(ext_spi_dac_csn),
        .ext_spi_clk(ext_spi_clk),
        .ext_spi_mosi(ext_spi_mosi),

    
        .layer_0_hold(layers_hold_internal[0]),
        .layer_0_resn(layers_resn_internal[0]),
        .layer_0_interruptn(layer_0_interruptn),
        .layer_0_spi_clk(layer_0_spi_clk),
        .layer_0_spi_csn(layers_csn_internal[0]),
        .layer_0_spi_miso(layer_0_spi_miso),
        .layer_0_spi_mosi(layer_0_spi_mosi),
        

        // Layers Wiring: Fix layers 1-2 to constants if in single layer mode, otherwise route out
        `ifndef SINGLE_LAYER
            // (Multi Layer here)

        .layer_1_hold(layers_hold_internal[1]),
        .layer_1_interruptn(layer_1_interruptn),
        .layer_1_resn(layers_resn_internal[1]),
        .layer_1_spi_clk(layer_1_spi_clk),
        .layer_1_spi_csn(layers_csn_internal[1]),
        .layer_1_spi_miso(layer_1_spi_miso),
        .layer_1_spi_mosi(layer_1_spi_mosi),

        .layer_2_hold(layers_hold_internal[2]),
        .layer_2_interruptn(layer_2_interruptn),
        .layer_2_resn(layers_resn_internal[2]),
        .layer_2_spi_clk(layer_2_spi_clk),
        .layer_2_spi_csn(layers_csn_internal[2]),
        .layer_2_spi_miso(layer_2_spi_miso),
        .layer_2_spi_mosi(layer_2_spi_mosi),
        `else 
        .layer_1_hold(/* unused */),
        .layer_1_interruptn(1'd1),
        .layer_1_resn(/* WAIVED: User requested no connection during wrapping */),
        .layer_1_spi_clk(/* WAIVED: User requested no connection during wrapping */),
        .layer_1_spi_csn(/* unused */),
        .layer_1_spi_miso(2'd0),
        .layer_1_spi_mosi(/* WAIVED: User requested no connection during wrapping */),
        .layer_2_hold(/* unused */),
        .layer_2_interruptn(1'd1),
        .layer_2_resn(/* WAIVED: User requested no connection during wrapping */),
        .layer_2_spi_clk(/* WAIVED: User requested no connection during wrapping */),
        .layer_2_spi_csn(/* unused */),
        .layer_2_spi_miso(2'd0),
        .layer_2_spi_mosi(/* WAIVED: User requested no connection during wrapping */),
        `endif

        // Layers Config
        .layers_inj(layers_inj_internal),
        .layers_sr_in_rb(layers_sr_rb),
        .layers_sr_in_sout0(layers_sr_sout0),
        .layers_sr_in_sout1(`ifndef SINGLE_LAYER layers_sr_sout1 `else 1'b0 `endif),
        .layers_sr_in_sout2(`ifndef SINGLE_LAYER layers_sr_sout2 `else 1'b0 `endif),
        .layers_sr_out_sin(layers_sr_sin),
        .layers_sr_out_ck1(layers_sr_ck1),
        .layers_sr_out_ck2(layers_sr_ck2),
        .layers_sr_out_ld0(layers_sr_ld0),
        .layers_sr_out_ld1(layers_sr_ld1),
        .layers_sr_out_ld2(layers_sr_ld2),
        .rfg_io_led(led_internal),
        .spi_clk(spi_clk),
        .spi_csn(spi_csn),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        
        .uart_rx(uart_tx_in),
        .uart_tx(uart_rx_out),

        `ifdef TARGET_NEXYS
        .ftdi_clko(ftdi_clko),
        .ftdi_txe_n(ftdi_txe_n),
        .ftdi_rxf_n(ftdi_rxf_n),
        .ftdi_rd_n(ftdi_rd_n),
        .ftdi_oe_n(ftdi_oe_n),
        .ftdi_wr_n(ftdi_wr_n),
        .ftdi_data(ftdi_data),
        `else 
        .ftdi_clko(1'b0),
        .ftdi_txe_n(1'b1),
        .ftdi_rxf_n(1'b1),
        .ftdi_rd_n(),
        .ftdi_oe_n(),
        .ftdi_wr_n(),
        .ftdi_data(),
        `endif
        
        .gecco_sr_ctrl_ck(gecco_sr_ctrl_ck),
        .gecco_sr_ctrl_sin(gecco_sr_ctrl_sin),
        .gecco_sr_ctrl_ld(gecco_sr_ctrl_ld),

        .io_ctrl_sample_clock_enable(io_ctrl_sample_clock_enable),
        .io_ctrl_timestamp_clock_enable(io_ctrl_timestamp_clock_enable),
        .io_ctrl_gecco_sample_clock_se(io_ctrl_gecco_sample_clock_se),
        .io_ctrl_gecco_inj_enable(io_ctrl_gecco_inj_enable)
    );
            
    
    // Nexys/Gecco specifics
    //-----------------
    `ifdef TARGET_NEXYS
    OBUFDS  gecco_sr_ctrl_ck_odiff(
        .I(gecco_sr_ctrl_ck),
        .O(gecco_sr_ctrl_ck_p),
        .OB(gecco_sr_ctrl_ck_n)
    );
    OBUFDS gecco_sr_ctrl_ld_odiff(
        .I(gecco_sr_ctrl_ld),
        .O(gecco_sr_ctrl_ld_p),
        .OB(gecco_sr_ctrl_ld_n)
    );
    OBUFDS   gecco_sr_ctrl_sin_odiff(
        .I(gecco_sr_ctrl_sin),
        .O(gecco_sr_ctrl_sin_p),
        .OB(gecco_sr_ctrl_sin_n)
    );
    OBUFDS  gecco_inj_odiff(
        .I(layers_inj_internal & io_ctrl_gecco_inj_enable),
        .O(gecco_inj_p),
        .OB(gecco_inj_n)
    );
    `endif
    
    // Config Interface: Can be Differential or Single ended depending on the Gecco Soldered Receivers
    `ifndef CONFIG_SE
    OBUFDS  layers_sr_ck1_odiff(
        .I(layers_sr_ck1),
        .O(layers_sr_ck1_p),
        .OB(layers_sr_ck1_n)
    );        
    OBUFDS  layers_sr_ck2_odiff(
        .I(layers_sr_ck2),
        .O(layers_sr_ck2_p),
        .OB(layers_sr_ck2_n)
    );  
    OBUFDS  layers_sr_ld_odiff(
        .I(layers_sr_ld0),
        .O(layers_sr_ld0_p),
        .OB(layers_sr_ld0_n)
    );      
    OBUFDS  layers_sr_sin_odiff(
        .I(layers_sr_sin),
        .O(layers_sr_sin_p),
        .OB(layers_sr_sin_n)
    );
    `endif

endmodule

        
