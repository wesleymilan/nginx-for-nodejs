#!/usr/bin/env bash

# Remove Old Image
docker rm -f nodejs_nginx

# No Cache Build
docker build --no-cache -t nodejs_nginx -f docker/nginx/Dockerfile .

