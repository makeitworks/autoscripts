#!/bin/bash

# pcre 8.43

pcre="pcre-8.43"
pcre_url="https://ftp.pcre.org/pub/pcre/pcre-8.43.tar.gz"
pcre_prefix="/usr/local/pcre"
wget --no-check-certificate ${pcre_url} -O ~/Downloads/${pcre}".tar.gz"
cd ~/Downloads
tar zxf ${pcre}".tar.gz"

# cd ${pcre}

# ./configure --prefix=${pcre_prefix}
# make 
# sudo make install