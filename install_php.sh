#!/bin/bash

source ./paths.sh
#php-7.1.31

# --with-openssl= 选项是 openssl的安装目录，php要根据这个路径寻找openssl的库
# --with-openssl-dir 是 include 目录，这个路径指向openssl源码，或者 openssl安装后的目录都可以

php="php-7.1.31"
php_url="https://www.php.net/distributions/php-7.1.31.tar.gz"
php_prefix="/usr/local/php"

# wget --no-check-certificate ${php_url} -O ~/Downloads/${php}".tar.gz"

cd ~/Downloads
# tar zxf ${php}".tar.gz"
cd ${php}

# ./configure --prefix=${php_prefix} \
#     --enable-fpm \
#     --enable-sockets \
#     --enable-bcmath  \
#     --enable-mbstring \
#     --enable-zip \
#     --with-mysqli=/usr/bin/mysql_config \
#     --with-pdo-mysql \
#     --with-openssl=${openssl_install_prefix} \
#     --with-openssl-dir=${openssl_install_prefix} \
#     --with-curl=${curl_install_path} \
#     --with-zlib=${zlib_install_prefix} \
#     --with-zlib-dir=${zlib_install_prefix} \
#     --with-libxml-dir=${libxml2_install_prefix} \
#     --with-xpm-dir=${libxmp_install_path} \
#     --with-jpeg-dir=${jpeg_install_path} \
#     --with-png-dir=${png_install_path} \
#     --with-freetype-dir=${freetype_install_path} \
#     --with-gd \
#     CFLAGS="-I/usr/local/libXpm/include"
    


make
sudo make install


sudo ln -s $php_prefix"/bin/php" /usr/bin/php
sudo ln -s $php_prefix"/bin/php-config" /usr/bin/php-config  phar.phar


