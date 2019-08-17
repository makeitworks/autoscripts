#!/bin/bash

process_name="php-fpm"

echo "killing "$process_name

ID=`ps -ef | grep "$process_name" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`

for id in $ID
do
    sudo kill -9 $id
done

echo $process_name" killed."
