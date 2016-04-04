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

HUGO_THEME := blackburn
HUGO_BUILD_DRAFTS := true

GCR_NAMESPACE := littleman-co

help: ## Show this menu 
	@echo -e $(ANSI_TITLE)docs.littleman.co$(ANSI_OFF)$(ANSI_SUBTITLE)" - Development documentation that is handy\n"$(ANSI_OFF)
	@echo -e $(ANSI_TITLE)Commands:$(ANSI_OFF)
	@grep -E '^[a-zA-Z_-%]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[32m%-30s\033[0m %s\n", $$1, $$2}'

push-container-%: ## Tags and pushes a container to the repo
	docker tag ${CONTAINER_NS}/$*:${GIT_HASH} gcr.io/${GCR_NAMESPACE}/$*:${GIT_HASH}
	gcloud docker push gcr.io/${GCR_NAMESPACE}/$*:${GIT_HASH}

build-container-%: ## Builds the $* (gollum) container, and tags it with the git hash. 
	docker build -t ${CONTAINER_NS}/$*:${GIT_HASH} -f build/docker/$*/Dockerfile .

deploy-container-%: build-container-% push-container-% ## Pushes a container to GCR. Will eventually update Kubernetes
	echo "Complete"

preview: ## Starts a hugo server that watches build changes
	cd site && hugo server

generate: ## Create the static site
	cd site && hugo

auth: ## Activate the service account where this is being deployed to Google Cloud
	gcloud auth activate-service-account --key-file .gcloud.json
