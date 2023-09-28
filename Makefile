
## Cleaning
#######
mrproper:
	@make -C fw/astep24-3l mrproper 
	@rm -Rf docs/site docs/.venv
	@find . -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete


## Docs
############
docs:
	@icf_docs