# Task runner

.PHONY: help

.DEFAULT_GOAL := help

SHELL := /bin/bash

PROJECT_NS   := docs-littleman-co
CONTAINER_NS := docs-littleman-co
GIT_HASH     := $(shell git rev-parse --short HEAD)

ANSI_TITLE        := '\e[1;32m'
ANSI_CMD          := '\e[0;32m'
ANSI_TITLE        := '\e[0;33m'
ANSI_SUBTITLE     := '\e[0;37m'
ANSI_WARNING      := '\e[1;31m'
ANSI_OFF          := '\e[0m'

PATH_DOCS                := $(shell pwd)/docs
PATH_BUILD_CONFIGURATION := $(shell pwd)/build

help: ## Show this menu 
	@echo -e $(ANSI_TITLE)docs.littleman.co$(ANSI_OFF)$(ANSI_SUBTITLE)" - Development documentation that is handy\n"$(ANSI_OFF)
	@echo -e $(ANSI_TITLE)Commands:$(ANSI_OFF)
	@grep -E '^[a-zA-Z_-%]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[32m%-30s\033[0m %s\n", $$1, $$2}'

build-container-%: ## Builds the $* (gollum) container, and tags it with the git hash. 
	docker build -t ${CONTAINER_NS}/$*:${GIT_HASH} -f build/docker/$*/Dockerfile .

