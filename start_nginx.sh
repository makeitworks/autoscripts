#!/bin/bash

source ./paths.sh

if [ ! -d "/home/mc/publish" ]; then
    cd ~ 
    mkdir publish
fi

if [ ! -d "/home/mc/publish/web" ]; then
    cd ~/publish/
    mkdir web
fi

if [ ! -d "/home/mc/publish/web/nginx" ]; then
    cd ~/publish/web
    mkdir nginx
fi

if [ ! -d "/home/mc/publish/web/nginx/conf" ]; then
    cd ~/publish/web/nginx
    mkdir conf
fi


if [ ! -f "/home/mc/publish/web/nginx/conf/nginx.conf" ]; then
    echo "nginx.conf"
    cp $nginx_source_path"/conf/nginx.conf"  ~/publish/web/nginx/conf/nginx.conf
fi


if [ ! -f "/home/mc/publish/web/nginx/conf/mime.types" ]; then
    echo "mime.types" 
    cp $nginx_source_path"/conf/mime.types"  ~/publish/web/nginx/conf/mime.types
fi

if [ ! -f "/home/mc/publish/web/nginx/conf/fastcgi_params" ]; then
    echo "fastcgi_params" 
    cp $nginx_source_path"/conf/fastcgi_params"  ~/publish/web/nginx/conf/fastcgi_params
fi


#modify ~/publish/web/nginx/conf  configurations

# start nginx

sudo nginx -c ~/publish/web/nginx/conf/nginx.conf