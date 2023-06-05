# nginx-for-nodejs
Short tutorial on how to setup NGinx to run with NodeJS and PM2.

Full **portuguese** tutorial is here: https://youtu.be/Sa74-4ExZ4Q

# 1st Step: Domain name
In your local host machine add the following lines to your `/etc/hosts` file in order to find the application.
```
127.0.0.1   www.nodejs.dvp
```

# 2nd Step: Preparing the environment
Build your custom Docker Image running `./docker/build.sh` 

# 3rd Step: Running Docker
`docker-compose up`: Standalone execution
`docker-compose up -d`: Daemon mode execution

# 4th Step: Check your browser
Open http://www.nodejs.dvp/ and check the headers on your devtools, and you should see this entry `Server: nginx`.

# Studying how it works
The most important scripts are:
- `docker/nginx/Dockerfile`: This is the file that compiles the Docker Image. Here you can find the packages installed on Linux to make
this experiment work.
- `docker/nginx/start.sh`: This is the startup script what is executed when the container is activated.
- `docker/apply-config.sh`: Just a shortcut to apply your changes on NGinx config files. You should run this shell script 
from inside your container.
- `docker/nginx/ssh.sh`: Easy way to into your container instance using SSH. This allows you to execute tests and apply 
your configuration experiments.
- `pm2/pm2-development.json`: PM2 profile file. This files contains the information needed by PM2 to run your API as a 
service and keep it running in case of crash.
- `config/nginx`: Where all NGinx config files resides and can be edited as your will.

# Contact

For more tutorials and content about applications, Cloud Computing, Security and performance please follow me on my 
channels/social media:

YouTube:
- Um Inventor Qualquer (Português): https://www.youtube.com/c/UmInventorQualquer
- Wesley Milan (Português): https://www.youtube.com/c/WesleyMilan
- Wesley Milan (English): https://www.youtube.com/channel/UCAyRxlnOwFi76XWKpT6k08g

Social:
- Linked-In: https://www.linkedin.com/in/wesleymilan/
- Instagram (Português): https://www.instagram.com/uminventorqualquer/
