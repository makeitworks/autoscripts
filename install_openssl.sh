#!/bin/bash

# openssl
https://www.openssl.org/source/openssl-1.1.1c.tar.gz
openssl="openssl-1.1.1c"
openssl_url="https://www.openssl.org/source/${openssl}.tar.gz"
openssl_filename=${openssl_url##*/}
openssl_prefix="/usr/local/ssl"

wget --no-check-certificate ${openssl_url} -O ~/Downloads/${openssl_filename}

cd ~/Downloads/

tar zxf ${openssl_filename}
cd ${openssl}

./config --prefix=${openssl_prefix}
make
sudo make install
