#!/bin/bash
echo "Installingnginx mainline debian"
sudo apt-get purge nginx*
wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
echo "adding repo mainline nginx"
sudo cat <<OEF> /etc/apt/sources.list.d/nginx.list
deb http://nginx.org/packages/mainline/ubuntu/ xenial nginx
deb-src http://nginx.org/packages/mainline/ubuntu/ xenial  nginx
OEF

#at <<OEF>> /etc/apt/sourses.list
#deb http://nginx.org/packages/mainline/debian/ jessie nginx
#deb-src http://nginx.org/packages/mainline/debian/jessie  nginx
#OEF
sudo apt-get update
sudo apt-get install nginx -y
sudo rm *.key.*
sudo rm *.key