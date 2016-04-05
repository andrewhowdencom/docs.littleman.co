#!/bin/bash

# Terminate on first failure
set -x

# Set in Travis
# GCR_REGION
# GCR_PROJECT
# KUBERNETS_CLUSTER

# Source .bashrc
. /home/travis/.bashrc

# Auth Gcloud
google-cloud-sdk/bin/gcloud auth activate-service-account ${GCR_SERVICE_ACCOUNT} --key-file .gcloud.json
google-cloud-sdk/bin/gcloud config set project ${GCR_PROJECT}
google-cloud-sdk/bin/gcloud config set compute/zone ${GCR_REGION}
google-cloud-sdk/bin/gcloud config set container/cluster ${KUBERNETES_CLUSTER}

# Auth Kube
google-cloud-sdk/bin/gcloud container clusters get-credentials ${KUBERNETES_CLUSTER}

# Auth Docker
docker login -e ${GCR_SERVICE_ACCOUNT} -u _token -p "$(google-cloud-sdk/bin/gcloud auth print-access-token)" https://gcr.io
