#!/bin/bash

#zlib
#http://www.zlib.net/zlib-1.2.11.tar.gz
zlib="zlib-1.2.11"
zlib_url="http://www.zlib.net/${zlib}.tar.gz"
zlib_prefix="/usr/local/zlib"
wget --no-check-certificate ${zlib_url} -O ~/Downloads/${zlib}".tar.gz"
cd ~/Downloads/
tar zxf ${zlib}".tar.gz"
cd ${zlib}
pwd
./configure --prefix=${zlib_prefix}
make 
sudo make install

make clean
make distclean

sudo ln -s ${zlib_prefix}/lib/pkgconfig/zlib.pc /usr/lib/pkgconfig/zlib.pc