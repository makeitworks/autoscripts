#!/bin/bash

libjpeg="jpegsrc.v9c"
libjpeg_url="http://www.ijg.org/files/jpegsrc.v9c.tar.gz"
libjpeg_prefix="/usr/local/jpeg"

wget --no-check-certificate ${libjpeg_url} -O ~/Downloads/${libjpeg}".tar.gz"

cd ~/Downloads

tar zxf ${libjpeg}".tar.gz"

cd jpeg-9c

./configure --prefix=${libjpeg_prefix} \
            --enable-shared \
            --enable-static


make 
sudo make install

make clean
make distclean


sudo ln -s ${libjpeg_prefix}"/lib/pkgconfig/libjpeg.pc"  /usr/lib/pkgconfig/libjpeg.pc