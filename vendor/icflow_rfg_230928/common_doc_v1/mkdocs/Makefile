
REQUIREMENTS=$(DOCSV1_HOME)/mkdocs/requirements.txt $(wildcard requirements.txt)

serve: setup
	@.venv/bin/python3 -m mkdocs serve

generate: setup
	@.venv/bin/python3 -m mkdocs build

setup: .venv/bin/mkdocs
.venv/bin/mkdocs: $(REQUIREMENTS)
	@python3  -m venv .venv 
	## Now install requirements
	@.venv/bin/python3 -m pip install --upgrade pip
	@.venv/bin/pip3 install --upgrade -r $(REQUIREMENTS)