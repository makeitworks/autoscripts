#!/bin/bash

# under ubuntu 18.04

os_version=`lsb_release -rs | cut -f1 -d.`

sudo apt-get install -y software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8

if [ $os_version -eq 16 ] ;
then
    sudo add-apt-repository 'deb [arch=amd64,arm64,i386,ppc64el] http://mirror.netcologne.de/mariadb/repo/10.4/ubuntu xenial main'
elif [ $os_version -eq 18 ] ;
    sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirrors.shu.edu.cn/mariadb/repo/10.4/ubuntu bionic main'
fi

sudo apt update
sudo apt install -y mariadb-server



#enter mariadb, and create database user
# 'sudo mysql -uroot -p'    
# then enter the sudo command password

# 1. create user
# create user 'django'@'%'  identified by 'django';
# 2. grant privalige
# grant all on *.* to 'django';