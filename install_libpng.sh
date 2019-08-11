#!/bin/bash

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

sudo ln -s ${libpng_prefix}"/bin/libpng16-config" /usr/bin/libpng16-config
sudo ln -s ${libpng_prefix}"/lib/pkgconfig/libpng.pc" /usr/lib/pkgconfig/libpng.pc
sudo ln -s ${libpng_prefix}"/lib/pkgconfig/libpng16.pc" /usr/lib/pkgconfig/libpng16.pc