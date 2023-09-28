
all: main_rfg.sv 

main_rfg.sv: ../common/astep24_3layers.rfg.tcl
	@IC_RFG_TARGET=astep24_3l_gecco_top RFG_FW_ID="32'h0000AB01" icf_rfg ../common/astep24_3layers.rfg.tcl
