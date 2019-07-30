#!/bin/sh

# #python 3.7.4

# sudo apt install -y libffi-dev zlib1g-dev libsqlite3-dev   #python.3.7.4 requirements
sudo apt install -y libffi-dev  libsqlite3-dev

python="Python-3.7.4"
python_url="https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz"
python_prefix="/usr/local/python374"
wget --no-check-certificate ${python_url} -O ~/Downloads/${python}".tgz"
cd ~/Downloads
tar zxf ${python}".tgz"
cd ${python}

./configure --prefix=${python_prefix} #--enable-loadable-sqlite-extensions
make
sudo make install