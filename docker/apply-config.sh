#!/usr/bin/env bash

rm -rf /etc/nginx
cp -R config/nginx /etc
service nginx restart
