#!/bin/bash 

docker rm guni-c
docker image rm alimohebbi/guni:latest
docker network rm mynet
docker network create mynet
docker build --tag alimohebbi/guni .
docker run --name guni-c  -p 8000:8000 \
-v /home/star/media:/media \
-v /home/star/static:/static \
-v /home/star/database/:/database --network mynet alimohebbi/guni


