#!/bin/bash

export DOCKER_CONTENT_TRUST=1
sudo docker build . -t myserver5:lemuelge5
sudo docker images
sudo dockle -ak NGINX_GPGKEY -ak NGINX_GPGKEY_PATH myserver5:lemuelge5
export DOCKER_CONTENT_TRUST=0