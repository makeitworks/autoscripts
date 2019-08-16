#!/bin/bash

source ./paths.sh

#nginx 1.16.0  stable version

nginx="nginx-1.16.0"
nginx_url="http://nginx.org/download/nginx-1.16.0.tar.gz"
nginx_prefix="/usr/local/nginx"
 wget --no-check-certificate ${nginx_url} -O ~/Downloads/${nignx}".tar.gz"

cd ~/Downloads

 tar zxf ${nignx}".tar.gz"
cd ${nginx}

#./configure --prefix=${nginx_prefix} \
#    --with-pcre=${pcre_source_path} \
#    --with-zlib=${zlib_source_path} \
#    --with-openssl=${openssl_source_path} \

#make 
#sudo make install


#sudo ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx


