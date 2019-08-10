#!/bin/sh

source ./path.sh
#php-7.1.31

php="php-7.1.31"
php_url="https://www.php.net/distributions/php-7.1.31.tar.gz"
php_prefix="/usr/local/php"

# wget --no-check-certificate ${php_url} -O ~/Downloads/${php}".tar.gz"

cd ~/Downloads
# tar zxf ${php}".tar.gz"
cd ${php}

./configure --prefix=${php_prefix} \
    --enable-fpm \
    --enable-sockets \
    --enable-bcmatch \
    --enable-mbstring \
    --enable-zip \
    --with-mysqli=/usr/bin/mysql_config \
    --with-pdo-mysql \
    --with-openssl=${openssl_source_path} \
    --with-openssl-dir=${openssl_install_prefix} \
    --with-curl=${curl_source_path} \
    --with-zlib=${zlib_source_path} \
    --with-zlib-dir=${zlib_install_prefix} \
    --with-gd \
    --with-libxml-dir=${libxml2_install_prefix} 
    


