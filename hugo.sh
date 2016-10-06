#!/usr/bin/env bash

NAME=hugo
REGISTRY=hassiumlabs
IMAGE="${REGISTRY}/${NAME}"

# The base command to run the Gitbook container
docker run --rm -v $(pwd):/srv $IMAGE $1
