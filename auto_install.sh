#!/bin/bash

# sudo command auto fill password,  use option "-S"
#  echo 1 | sudo -S find / -name "helloworld"

./install_requirements.sh

./install_zlib.sh

./install_openssl.sh
./link_openssl.sh

./install_python.sh
./link_python.sh

./install_mariadb.sh
./install_mysql_driver.sh


