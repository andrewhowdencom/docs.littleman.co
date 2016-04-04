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

# Install Google Cloud
wget "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GOOGLE_CLOUD_VERSION}-linux-x86_64.tar.gz"
tar -xvf google-cloud-sdk-${GOOGLE_CLOUD_VERSION}-linux-x86_64.tar.gz
export PATH=$PATH:$(pwd)/google-cloud-sdk/bin

make auth

# Install kubectl 
wget https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/darwin/amd64/kubectl
mv kubectl ./bin/

gcloud config set project $GCR_REGION
gcloud config set compute/zone $GCR_PROJECT
gcloud config set container/cluster $KUBERNETES_CLUSTER
gcloud container clusters get-credentials $KUBERNETES_CLUSTER

# Install Hugo
wget "https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz"
tar -xvf hugo_${HUGO_VERSION}_linux_amd64.tar.gz
mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 ./bin/hugo
