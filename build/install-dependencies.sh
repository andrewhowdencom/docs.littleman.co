#!/bin/bin/env bash

GOOGLE_CLOUD_VERSION=103.0.0

# Install Google Cloud
wget "google-cloud-sdk-$GOOGLE_CLOUD_VERSION-linux-x86_64.tar.gz"
tar -xvf google-cloud-sdk-$GOOGLE_CLOUD_VERSION-linux-x86_64.tar.gz"
./google-cloud-sdk/bin/gcloud init


