#!/bin/sh

curl="curl-7.65.3"
curl_url="https://curl.haxx.se/download/curl-7.65.3.tar.gz"
curl_prefix="/usr/local/curl"

wget --no-check-certificate ${curl_url} -O ~/Downloads/${curl}".tar.gz"

cd ~/Downloads

tar zxf ${curl}".tar.gz"