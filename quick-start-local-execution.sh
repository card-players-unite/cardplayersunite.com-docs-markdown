
reset

clear

##

pwd

cd project-documentation

pwd

##

reset

clear

##

docker-compose -f .docker-compose.yaml down --remove-orphans

docker-compose -f .docker-compose.yaml up

## firefox http://localhost:8888 &

## docker run --rm -it -p $localPort:8000 -v ${PWD}:/docs titom73/mkdocs
