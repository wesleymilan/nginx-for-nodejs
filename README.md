# nginx-for-nodejs
Short tutorial on how to setup NGinx to run with NodeJS and PM2.

Full **portuguese** tutorial is here: https://youtube.com/XXXXXXX

Full **english** tutorial is here: https://youtube.com/XXXXXXX

# 1st Step: Domain name
In your local host machine add the following lines to your `/etc/hosts` file in order to find the application.
```
127.0.0.1   www.nodejs.dvp
```

# 2nd Step: Preparing the environment
Clone the docker repository `git clone https://github.com/wesleymilan/docker-nginx.git`

Clone this repository into `www/` folder:
```shell
cd docker-nginx/www
git clone https://github.com/wesleymilan/nginx-for-nodejs.git
cd ..
```

Build and run the docker container:
```shell
./docker/build.sh
docker-compose up -d
```

# 3rd Step: Installing the services

Login into the NGinx container:
```shell
./docker/nginx/ssh.sh
```

Install NodeJS, NPM and update your NPM.
```shell
apk add nodejs
apk add npm
npm i -g npm
```

Note: Depending on your OS you can use `apt`, `apt-get`, `yum` or the package manager of your preference. For all 
installation method of NodeJS please visit https://nodejs.org/en/download/package-manager/ 

# 4th Step: Installing PM2

PM2 is a process manager to control and keep your application running even if it crashes for some reason. 

`npm i -g pm2`

# 5th Step: NGinx config

Customize your NGinx files under `config/nginx`.

After customizing your NGinx, from inside NGinx container go into this repo folder `cd /app/www/nginx-for-nodejs` 
and run the script to apply the NGinx config files `./apply-config.sh`.

# 6th Step: Run the test API using PM2

```shell
pm2 start /app/www/nginx-for-nodejs/pm2/pm2-development.json
```

# 7th Step: Check your browser

Open http://www.nodejs.dvp/ and check the headers on your devtools, and you should see this entry `Server: nginx`.


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
