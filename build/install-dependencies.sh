#!/usr/bin/env bash

GOOGLE_CLOUD_VERSION=103.0.0
HUGO_VERSION=0.15
KUBECTL_VERSION=1.2.1

# Defined in Travis
# GCR_PROJECT
# GCR_REGION
# KUBERNETS_CLUSTER

# Print a header to see if git is working
echo "GIT HASH: $(git rev-parse --short HEAD)"

# Create a temporary bin to put things into 
mkdir bin
export PATH=$PATH:$(pwd)/bin

# Install Google Cloud, GCR Docker and GCR Kubernetes
curl https://sdk.cloud.google.com | bash # Note: This isn't such a good solution. However, the static install comes with neither Docker nor Kubectl
exec -l $SHELL
gcloud components install kubectl 

gcloud config set project $GCR_REGION
gcloud config set compute/zone $GCR_PROJECT
gcloud config set container/cluster $KUBERNETES_CLUSTER
gcloud container clusters get-credentials $KUBERNETES_CLUSTER

# Install Hugo
wget "https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz"
tar -xvf hugo_${HUGO_VERSION}_linux_amd64.tar.gz
mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 ./bin/hugo
