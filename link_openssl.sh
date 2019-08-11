#!/bin/bash

sudo rm -rf /usr/bin/openssl
sudo ln -s /usr/local/ssl/bin/openssl /usr/bin/openssl

sudo rm -rf /usr/lib/x86_64-linux-gnu/libssl.so.1.1
sudo ln -s /usr/local/ssl/lib/libssl.so.1.1 /usr/lib/x86_64-linux-gnu/libssl.so.1.1

sudo rm -rf /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1
sudo ln -s /usr/local/ssl/lib/libcrypto.so.1.1 /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1