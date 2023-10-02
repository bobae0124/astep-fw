

clean:
	@rm -Rf vivado* vivado-project/ .Xil bitstreams reports
	@rm -f .openMode*

%.open: 
	@echo "Opening Project for target $(basename $@)"
	@mkdir -p vivado-run
	@cd vivado-run && OPEN=1 vivado  -source ../$(basename $@).tcl


%.build:
	@echo "Building Project for target $(basename $@)"
	@mkdir -p vivado-run
	@cd vivado-run && vivado -mode batch -source ../$(basename $@).tcl