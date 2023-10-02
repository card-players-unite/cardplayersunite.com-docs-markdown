#!/bin/bash

##

set -x

set -e

## 

cd ../../

source ./docker-image-repository.conf

##

docker push $repositoryUser/$repositoryName

docker push $repositoryUser/$repositoryName:$repositoryTag
