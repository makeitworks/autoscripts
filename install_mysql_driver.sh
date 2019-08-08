#!/bin/sh


sudo apt install -y libmysqlclient-dev

os_version=`lsb_release -rs | cut -f1 -d.`

if [ $os_version -eq 16 ] ;
then
    sudo apt install -y libmysqlclient-dev
elif [ $os_version -eq 18 ] ;
then
    sudo apt install -y default-libmysqlclient-dev
fi


sudo pip install mysqlclient
