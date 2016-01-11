#!/bin/bash

repo="https://raw.githubusercontent.com/dan1elhughes/provision-vagrant/master"

apt-get update > /dev/null

add-apt-repository ppa:ondrej/php5-5.6 --yes

apt-get purge -y apache2

apt-get install -y \
	mysql-server \
	nginx \
	php5-cli \
	php5-curl
	php5-fpm \
	php5-gd \
	php5-mysql \
	python-mysqldb \
	redis-server

curl $repo/nginx/default > /etc/nginx/sites-enabled/default
curl $repo/nginx/nginx.conf > /etc/nginx/nginx.conf

service nginx restart
