#!/bin/bash

gcc ./mini_server.c -lpthread -lfcgi -o mini_server 
spawn-fcgi -p 8080 ./mini_server
nginx -g 'daemon off;'
nginx -s reload