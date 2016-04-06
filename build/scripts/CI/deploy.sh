#!/bin/bash

make deploy-container-nginx
google-cloud-sdk/bin/kubectl rolling-update webserver --image=gcr.io/${GCR_PROJECT}/nginx:$(git rev-parse --short HEAD)

