#!/bin/bash
while true
do
	cd /media/bibliography
	git pull origin master
	cd /media/papers
	git pull origin master
	sleep 86400
done
