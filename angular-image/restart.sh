#!/bin/bash 

docker rm angular-c
docker image rm alimohebbi/angular:latest
docker build --tag alimohebbi/angular .
docker volume rm starlab-ui
docker volume create --name starlab-ui
docker run -it --name angular-c -v starlab-ui:/starlab-ui alimohebbi/angular


