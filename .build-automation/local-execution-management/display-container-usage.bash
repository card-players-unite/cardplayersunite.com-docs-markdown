#!/bin/bash

##

set -x

set -e

## 

cd ../../

source ./docker-image-repository.conf

##

docker-compose down

docker-compose pull

docker-compose up -d
