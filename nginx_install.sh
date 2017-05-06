#!/bin/bash

# This script to install on centos6.5
echo "Instaling ..."
yum insatll gcc
yum install -y pcre pcre-devel
yum install -y zlib zlib-devel
yum install -y openssl openssl-devel
clear
# dowmload 
mkdir nginx_env
cd nginx_env
wget http://nginx.org/download/nginx-1.13.0.tar.gz
tar -xzf nginx-1.13.0.tar.gz
cd nginx-1.13.0
./configure
make
make install
clear
echo "nginx defult path : " $(whereis nginx)

# nginx start

cd /usr/local/nginx/sbin
./nginx

# with boot start
chkconfig --add nginx
chkconfig nginx on
