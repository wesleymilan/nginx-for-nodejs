#!/usr/bin/env bash

service nginx stop
rm -rf /etc/nginx
cp -R config/nginx /etc
service nginx start

cd /app/api
npm i
npm run build
pm2 start /app/pm2/pm2-development.json

# Keep Container Running
tail -f /dev/null
