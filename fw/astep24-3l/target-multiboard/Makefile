

clean:
	@rm -Rf vivado* vivado-project/ .Xil bitstreams reports
	@rm -f .openMode*

%.open:
	@echo "Opening Project for target $(basename $@)"
	@OPEN=1 vivado  -source $(basename $@).tcl


%.build:
	@echo "Building Project for target $(basename $@)"
	@vivado -mode batch -source $(basename $@).tcl