# Task runner

.PHONY: help build

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

SECRET_CERT       := $(shell base64 -w 0 etc/ssl/cert.pem)
SECRET_FULL_CHAIN := $(shell base64 -w 0 etc/ssl/fullchain.pem)
SECRET_PRIVKEY    := $(shell base64 -w 0 etc/ssl/privkey.pem)

help: ## Show this menu
	@echo -e $(ANSI_TITLE)docs.littleman.co$(ANSI_OFF)$(ANSI_SUBTITLE)" - Development documentation that is handy\n"$(ANSI_OFF)
	@echo -e $(ANSI_TITLE)Commands:$(ANSI_OFF)
	@grep -E '^[a-zA-Z_-%]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[32m%-30s\033[0m %s\n", $$1, $$2}'

build:
	cd site && hugo

push-container-%: ## Tags and pushes a container to the repo
	docker tag ${CONTAINER_NS}/$*:${GIT_HASH} gcr.io/${GCR_NAMESPACE}/$*:${GIT_HASH}
	docker push gcr.io/${GCR_NAMESPACE}/$*:${GIT_HASH}

push-tls-certificates:
	sed "s/{{CERT}}/${SECRET_CERT}/" build/kubernetes/tls.yml | sed -e "s/{{FULL_CHAIN}}/${SECRET_FULL_CHAIN}/" | sed -e "s/{{PRIVKEY}}/${SECRET_PRIVKEY}/" | kubectl create -f -

build-container-%: ## Builds the $* (gollum) container, and tags it with the git hash.
	docker build -t ${CONTAINER_NS}/$*:${GIT_HASH} -f build/docker/$*/Dockerfile .

deploy: ## Push an update to Kube for the current build
# This doesn't work until Kube 1.2
#	sed "s/{{GCR_PROJECT}}/${GCR_PROJECT}/" build/kubernetes/deployment.yml | sed "s/{{GIT_HASH}}/${GIT_HASH}/" | kubectl create -f -
	kubectl rolling-update webserver --image=gcr.io/${GCR_PROJECT}/nginx:${GIT_HASH}

deploy-container-%: build-container-% push-container-% ## Pushes a container to GCR. Will eventually update Kubernetes
	echo "Deployed"

preview: ## Starts a hugo server that watches build changes
	cd site && hugo server

css: ## Build the CSS
	sassc site/static/scss/styles.scss site/static/css/styles.css

build-config-%: ## Builds the sensu config from a path
	-rm build/kubernetes/$*-conf-d.yml
	kubectl create configmap "$*-etc-conf-d" \
		--dry-run \
		--from-file="etc/$*/conf.d" \
		--output="yaml" \
		--namespace=sensu-littleman-co > "build/kubernetes/$*-etc-conf-d.yml"
