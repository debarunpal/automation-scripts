#!/bin/bash

SITE_NAME="debarunpal.com"

######################## DO NOT MODIFY ANYTHING BELOW THIS LINE ###################

HOME_DIR="/home/ubuntu"

SSL_DIR="/etc/apache2/ssl"

mkdir $SSL_DIR/$SITE_NAME

cd $SSL_DIR/$SITE_NAME

cp -R $HOME_DIR/$SITE_NAME/* $SSL_DIR/$SITE_NAME/

cd $HOME_DIR/

mv $SITE_NAME.conf /etc/apache2/ssl-sites-enabled/

cd $SSL_DIR/$SITE_NAME/

apachectl configtest

openssl x509 -noout -modulus -in server.crt | openssl md5

openssl rsa -noout -modulus -in server.key | openssl md5

#service apache2 stop

#service apache2 start
