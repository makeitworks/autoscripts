#!/bin/bash

#requires
# sudo apt install -y libx11-dev

libxpm="libXpm-3.5.12"
libxpm_url="https://www.x.org/archive/individual/lib/libXpm-3.5.12.tar.gz"
libxpm_prefix="/usr/local/libXpm"

wget --no-check-certificate ${libxpm_url} -O ~/Downloads/${libxpm}".tar.gz"

cd ~/Downloads

tar zxf ${libxpm}".tar.gz"

cd ${libxpm}

./configure --prefix=${libxpm_prefix}
make 
sudo make install

make clean 
make distclean

sudo ln -s ${libxpm_prefix}"/lib/pkgconfig/xpm.pc" /usr/lib/pkgconfig/xpm.pc