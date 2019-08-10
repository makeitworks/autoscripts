#!/bin/sh

libxpm="libXpm-3.5.11"
libxpm_url="https://github.com/freedesktop/libXpm/archive/libXpm-3.5.11.tar.gz"
libxpm_prefix="/usr/local/libxpm"

# wget --no-check-certificate ${libxpm_url} -O ~/Downloads/${libxpm}".tar.gz"

cd ~/Downloads

# tar zxf ${libxpm}".tar.gz"

cd libXpm-libXpm-3.5.11

./configure --prefix=${libxpm_prefix}
make 
sudo make install

make clean 
make distclean