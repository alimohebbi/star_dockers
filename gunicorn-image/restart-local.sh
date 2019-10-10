#!/bin/bash 

docker rm guni-c
docker image rm alimohebbi/guni
docker network rm mynet
docker network create mynet
docker build --tag alimohebbi/guni .
docker run --name guni-c -d -p 8000:8000 \
-v /Users/usiusi/Documents/docker-start/gunicorn-image/media:/media \
-v /Users/usiusi/Documents/docker-start/gunicorn-image/static:/static \
-v /Users/usiusi/Documents/docker-start/gunicorn-image/database/:/database --network mynet alimohebbi/guni


