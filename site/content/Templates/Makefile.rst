.. code::

  # Make script that builds the golang binaries for various architectures

  # Configuration
  .PHONY: help

  # Variables
  .DEFAULT_GOAL := help
  SHELL         := /bin/bash

  # Help
  help: ## Show this menu
  	@echo -e $(ANSI_TITLE)m2onk8s$(ANSI_OFF)$(ANSI_SUBTITLE) - {Project Description} $(ANSI_OFF)
  	@echo -e $(ANSI_TITLE)Commands:$(ANSI_OFF)
  	@grep -E '^[a-zA-Z _-%]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[32m%-30s\033[0m %s\n", $$1, $$2}'

