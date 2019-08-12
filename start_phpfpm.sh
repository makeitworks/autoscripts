#!/bin/bash

source ./paths.sh

# 1. copy php.ini file
if [ ! -f $php_install_prefix"/etc/php.ini" ] ;
then
    sudo cp $php_source_path"/php.ini-development"  $php_install_prefix"/etc/php.ini"
fi

# 2. php-fpm.conf
if [ ! -f $php_install_prefix"/etc/php-fpm.conf" ] ;
then
    sudo cp $php_install_prefix"/etc/php-fpm.conf.default"  $php_install_prefix"/etc/php-fpm.conf"
fi

# 3. www.conf
if [ ! -f $php_install_prefix"/etc/php-fpm.d/www.conf" ] ; 
then
    sudo cp $php_install_prefix"/etc/php-fpm.d/www.conf.default"  $php_install_prefix"/etc/php-fpm.d/www.conf"
fi

#4. modify www.conf user and group: set nobody to current user and group


sudo $php_install_prefix"/sbin/php-fpm" \
                -c $php_install_prefix"/etc/php.ini" \
                --pid /var/run/php-fpm.pid \
                --fpm-config=$php_install_prefix"/etc/php-fpm.conf" 
