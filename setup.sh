#!/usr/bin/env bash

#SECRET_KEY="$(python -c "import random,string;print(''.join([random.SystemRandom().choice(\"{}{}{}\".format(string.ascii_letters, string.digits, string.punctuation)) for i in range(63)]).replace('\\'','\\'\"\\'\"\\''))";)"
#echo "SECRET_KEY=$SECRET_KEY" >> .env

cp env_sample .env

read -p "Nginx used? (True/False) " NGINX;
NGINX=${NGINX:-True}
echo "NGINX=$NGINX" >> .env

read -p "Enter nginx http address: " URL;
URL=${URL:-192.168.100.100}
echo "STATIC_URL=http://$URL" >> .env
echo "MEDIA_URL=http://$URL" >> .env

docker-compose up --build
