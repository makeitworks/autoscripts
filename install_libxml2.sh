#!/bin/sh

libxml2="libxml2-2.7.2"
libxml2_url="ftp://xmlsoft.org/libxml2/libxml2-2.7.2.tar.gz"
libxml2_prefix="/usr/local/libxml2"

# wget --no-check-certificate ${libxml2_url} -O ~/Downloads/${lixml2}".tar.gz"

cd ~/Downloads

tar zxf ${libxml2}".tar.gz"

cd ${libxml2}

./configure --prefix=${libxml2_prefix}
make 
sudo make install