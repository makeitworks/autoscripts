#!/bin/bash

sudo rm -rf /usr/bin/openssl
sudo rm -rf /usr/bin/c_rehash
sudo ln -s /usr/local/ssl/bin/openssl /usr/bin/openssl
sudo ln -s /usr/local/ssl/bin/c_rehash /usr/bin/c_rehash

sudo rm -rf /usr/lib/libcrypto.so
sudo rm -rf /usr/lib/libcrypto.so.1.1  
sudo rm -rf /usr/lib/libssl.so
sudo rm -rf /usr/lib/libssl.so.1.1

sudo ln -s /usr/local/ssl/lib/libcrypto.so /usr/lib/libcrypto.so
sudo ln -s /usr/local/ssl/lib/libcrypto.so.1.1  /usr/lib/libcrypto.so.1.1  
sudo ln -s /usr/local/ssl/lib/libssl.so /usr/lib/libssl.so
sudo ln -s /usr/local/ssl/lib/libssl.so.1.1 /usr/lib/libssl.so.1.1


sudo ln -s /usr/local/ssl/lib/pkgconfig/libcrypto.pc /usr/lib/pkgconfig/libcrypto.pc
sudo ln -s /usr/local/ssl/lib/pkgconfig/libssl.pc /usr/lib/pkgconfig/libssl.pc
sudo ln -s /usr/local/ssl/lib/pkgconfig/openssl.pc /usr/lib/pkgconfig/openssl.pc

sudo rm -rf /usr/lib/x86_64-linux-gnu/libssl.so.1.1
sudo ln -s /usr/local/ssl/lib/libssl.so.1.1 /usr/lib/x86_64-linux-gnu/libssl.so.1.1

sudo rm -rf /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1
sudo ln -s /usr/local/ssl/lib/libcrypto.so.1.1 /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1
