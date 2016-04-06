#!/bin/bash

GIT_HASH=$(git rev-parse --short HEAD)

case $1 in 
    success)
        git notes append "$GIT_HASH" -m "Deployment Success"
        ;;
    failure)
        git notes append "$GIT_HASH" -m "Deployment Failure"
        ;;
    *)
        echo "Mark a deployment as either 'success' or 'failure'"
        exit 1
esac

# Push the notes to origin
git push origin /refs/notes/*

>&2 echo "$TRAVIS_BUILD_NUMBER"
>&2 echo "$TRAVIS_JOB_NUMBER"
>&2 echo "$TRAVIS_JOB_ID" 
