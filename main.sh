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

composer self-update
sudo -u vagrant COMPOSER_HOME=/home/vagrant/.composer composer global require \
	phing/phing \
	squizlabs/php_codesniffer

curl $repo/nginx/default > /etc/nginx/sites-enabled/default
curl $repo/nginx/nginx.conf > /etc/nginx/nginx.conf

service nginx restart
