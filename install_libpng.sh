#!/bin/sh

source ./paths.sh

libpng="libpng-1.6.37"
libpng_url="https://download.sourceforge.net/libpng/libpng-1.6.37.tar.gz"
libpng_prefix="/usr/local/libpng"

wget --no-check-certificate ${libpng_url} -O ~/Downloads/${libpng}".tar.gz"

cd ~/Downloads

tar zxf ${libpng}".tar.gz"

cd ${libpng}

./configure --prefix=${libpng_prefix} \
            --with-zlib-dir=${zlib_install_prefix} \
            --enable-shared \
            --enable-static 

make 
sudo make install

make clean
make distclean

