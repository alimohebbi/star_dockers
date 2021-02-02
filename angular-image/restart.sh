#!/bin/bash 

docker rm myangular
docker image rm angularimage:latest
docker build --tag alimohebbi/angular .
docker volume rm starlab-ui
docker volume create --name starlab-ui
docker run -it --name myangular -v starlab-ui:/starlab-ui alimohebbi/angular


