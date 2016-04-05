#!/bin/bash

# Auth Gcloud
gcloud auth activate-service-account ${GCR_SERVICE_ACCOUNT} --key-file .gcloud.json
gcloud config set project $GCR_REGION
gcloud config set compute/zone $GCR_PROJECT
gcloud config set container/cluster $KUBERNETES_CLUSTER

# Auth Kube
gcloud container clusters get-credentials $KUBERNETES_CLUSTER

# Auth Docker
docker login -e ${GCR_SERVICE_ACCOUNT} -u _token -p "$(gcloud auth print-access-token)" https://gcr.io
