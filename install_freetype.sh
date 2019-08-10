#!/bin/sh

freetype="freetype-2.10.0"
freetype_url="https://download.savannah.gnu.org/releases/freetype/freetype-2.10.0.tar.gz"
freetype_prefix="/usr/local/freetype"

wget --no-check-certificate ${freetype_url} -O ~/Downloads/${freetype}".tar.gz"

cd ~/Downloads

tar zxf ${freetype}".tar.gz"

cd ${freetype}

./configure --prefix=${freetype_prefix}

make 
sudo make install


make clean
make distclean
