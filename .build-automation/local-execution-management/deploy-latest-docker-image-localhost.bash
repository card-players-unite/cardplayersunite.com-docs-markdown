#!/bin/bash

##

set -x

set -e

## 

cd ../../

source ./docker-image-repository.conf

##


set +e

docker-compose down

docker stop $repositoryName

docker rm $repositoryName

docker image rm $repositoryUser/$repositoryName:$repositoryTag

set -x

set -e

##

docker-compose down

docker-compose stop

docker-compose pull

docker-compose up -d
