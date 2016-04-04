#!/bin/bash

gcloud auth activate-service-account ${GCR_SERVICE_ACCOUNT} --key-file .gcloud.json
docker login -e ${GCR_SERVICE_ACCOUNT} -u _token -p "$(gcloud auth print-access-token)" https://gcr.io
