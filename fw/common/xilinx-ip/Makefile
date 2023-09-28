

all: ips
clean: 
	@rm -f target-*/*.jou rm target-*/*.log definitions/*.log definitions/*.jou
	@git clean -fdX

ips:
	@vivado -mode tcl -source ip_generate.tcl
