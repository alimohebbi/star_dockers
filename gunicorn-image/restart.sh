#!/bin/bash 

docker rm guni-c
docker image rm guniimage:latest
docker network rm mynet
docker network create mynet
docker build --tag guniimage .
docker run --name guni-c -d -p 8000:8000 \
-v /home/star/media:/media \
-v /home/star/static:/static \
-v /home/star/database/:/database --network mynet alimohebbi/guni


