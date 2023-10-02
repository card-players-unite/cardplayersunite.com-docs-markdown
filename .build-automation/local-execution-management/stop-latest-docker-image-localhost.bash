#!/bin/bash

##

set -x

set -e

##

source ./local-environment-common.sh

##

cd ../..

##

docker-compose down --remove-orphans
