#!/bin/bash
docker rm puller-c
docker image rm alimohebbi/pullerimage:latest
docker build --tag alimohebbi/pullerimage .
docker run -d --name puller-c -v /home/star/media:/media alimohebbi/pullerimage
