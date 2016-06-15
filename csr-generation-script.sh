#!/bin/bash

SITE_NAME="debarunpal.com"

##################### DO NOT MODIFY ANYTHING BELOW THIS LINE #########################

cd csr

mkdir $SITE_NAME

cd $SITE_NAME

openssl req -new -newkey rsa:2048 -nodes -keyout server.key -out server.csr

cd ..

cp -R $SITE_NAME /home/ubuntu/
