#!/bin/bash -ex

DOCKERHUB_USERNAME=${1:-"ncbi"}
IMAGE=blast-workbench
VERSION=0.3

docker build -t $DOCKERHUB_USERNAME/$IMAGE:$VERSION .
docker tag $DOCKERHUB_USERNAME/$IMAGE:$VERSION $DOCKERHUB_USERNAME/$IMAGE:latest
