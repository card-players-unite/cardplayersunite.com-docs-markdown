#!/bin/bash

##

reset

clear

##

docker-compose -f .docker-compose.yaml down --remove-orphans

docker-compose -f .docker-compose.yaml up

## firefox http://localhost:8000 &
