#!/bin/bash

libxml2="libxml2-2.7.2"
libxml2_url="ftp://xmlsoft.org/libxml2/libxml2-2.7.2.tar.gz"
libxml2_prefix="/usr/local/libxml2"

wget --no-check-certificate ${libxml2_url} -O ~/Downloads/${libxml2}".tar.gz"

cd ~/Downloads

tar zxf ${libxml2}".tar.gz"

cd ${libxml2}

./configure --prefix=${libxml2_prefix}
make 
sudo make install

make clean
make distclean

#link xml2-config

sudo rm -rf /usr/bin/xml2-config

sudo ln -s ${libxml2_prefix}"/bin/xml2-config" /usr/bin/xml2-config
sudo ln -s ${libxml2_prefix}"/lib/pkgconfig/libxml-2.0.pc" /usr/lib/pkgconfig/libxml-2.0.pc
