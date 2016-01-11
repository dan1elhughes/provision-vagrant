#!/bin/bash

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

ln -sf /var/provision/nginx/default /etc/nginx/sites-enabled/default
ln -sf /var/provision/nginx/nginx.conf /etc/nginx/nginx.conf

service nginx restart
