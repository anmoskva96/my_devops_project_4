#!/bin/bash

sudo docker build . -t myserver:lemuelge
sudo docker images
sudo docker run -d -p 80:81 --rm --name server myserver:lemuelge
sudo docker ps -a
curl localhost:80
curl localhost:80/status
sudo docker stop server
