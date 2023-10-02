#!/bin/bash

##

set -x

set -e

## 

cd ../../

source ./docker-image-repository.conf

##

docker build -t $repositoryUser/$repositoryName:$repositoryTag .
