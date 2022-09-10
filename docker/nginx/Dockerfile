# our base image
FROM alpine:latest

# specify the port number the container should expose
EXPOSE 3000
EXPOSE 80

# User user as root
USER root

# Create App
RUN mkdir /app

# Installing Services
RUN apk update
RUN apk add bash
RUN apk add openrc
RUN mkdir /run/openrc && touch /run/openrc/softlevel
RUN rc-status

# NGinx
RUN apk add nginx
RUN rc-update add nginx

# Nodejs
RUN apk add nodejs
RUN apk add npm
RUN npm i -g npm
RUN npm i -g pm2
RUN npm i -g @loopback/cli
