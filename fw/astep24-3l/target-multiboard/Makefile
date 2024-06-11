ALL_BUILDS=gecco-astropix2.build gecco-astropix3.build cmod-astep.build
CCTB_ARGS ?= 

clean:
	@rm -Rf vivado-run/ .Xil bitstreams reports
	@rm -f .openMode* *.log *.rpt

%.open: 
	@echo "Opening Project for target $(basename $@)"
	@mkdir -p vivado-run
	@cd vivado-run && OPEN=1 vivado  -source ../$(basename $@).tcl

build: export CI=1
build: $(ALL_BUILDS)
%.build:
	@echo "Building Project for target $(basename $@)"
	@mkdir -p vivado-run
	@cd vivado-run && vivado -mode batch -source ../$(basename $@).tcl

verify: export PYTHONPATH := $(shell pwd)/../verification:$(BASE)/fw/common/verification:$(PYTHONPATH)
verify:
	@icf_cctb $(CCTB_ARGS)

inspect: CCTB_ARGS := -ui
inspect: verify