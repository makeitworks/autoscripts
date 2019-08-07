#!/bin/sh

sudo rm -rf /usr/bin/python 
sudo rm -rf /usr/bin/pip

sudo ln -s /usr/local/python374/bin/python3 /usr/bin/python
sudo ln -s /usr/local/python374/bin/pip3.7 /usr/bin/pip
