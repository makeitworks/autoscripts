#!/bin/bash

curl="curl-7.65.3"
curl_url="https://curl.haxx.se/download/curl-7.65.3.tar.gz"
curl_prefix="/usr/local/curl"

wget --no-check-certificate ${curl_url} -O ~/Downloads/${curl}".tar.gz"

cd ~/Downloads

tar zxf ${curl}".tar.gz"

cd ${curl}

./configure  --prefix=${curl_prefix} 

make 
sudo make install

make clean
make distclean


sudo ln -s ${curl_prefix}"/bin/curl"  /usr/bin/curl
sudo ln -s ${curl_prefix}"/bin/curl-config"  /usr/bin/curl-config

sudo ln -s ${curl_prefix}"/lib/pkgconfig/libcurl.pc" /usr/lib/pkgconfig/libcurl.pc
