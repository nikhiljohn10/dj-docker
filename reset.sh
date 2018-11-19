#!/usr/bin/env bash

if [ ! -z "$(docker ps -q)" ]; then
	$(docker kill $(docker ps -q))
fi

if [ ! -z "$(docker container ls -qa)" ]; then
	docker rm $(docker container ls -qa)
fi

if [ ! -z "$(docker images boilerplate* -q)" ]; then
	docker rmi $(docker images boilerplate* -q)
	docker rmi $(docker images -f dangling=true -q)
fi

docker network prune -f
docker volume prune -f

if [ -f .env ]; then
	rm -f .env
fi

if [ -d postgres-data ]; then
	rm -rf db-data
fi

if [ -d media ]; then
	rm -rf media
fi

if [ -d logs ]; then
	rm -rf logs
fi
