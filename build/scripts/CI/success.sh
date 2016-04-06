#!/bin/bash

# Fetch the most recent deployment tag
PREVIOUS_BUILD=$(git describe --tags `git rev-list --tags --max-count=1` | grep -oE '[0-9]+')

# Increment the build
((CURRENT_BUILD=PREVIOUS_BUILD+1))

# Format the tag
BUILD_TAG="deployment-$(printf "%04d" $CURRENT_BUILD)"
BUILD_MSG="Deployment #$(printf "%04d" $CURRENT_BUILD)"

# Tag the commit
git tag -a "${BUILD_TAG}" -m "${BUILD_MSG}"
git push origin "refs/tags/${BUILD_TAG}"
