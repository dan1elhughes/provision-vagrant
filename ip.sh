#!/bin/bash

ip=$(ifconfig eth1 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
len=${#ip}
seperator=$(yes = | head -${#ip} | paste -s -d '' -)

echo ''
echo $seperator
echo $ip
echo $seperator
