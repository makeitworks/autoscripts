#!/bin/sh

# sudo apt update

# sudo apt install -y gcc g++ autoconf make libreadline-dev

#zlib
#http://www.zlib.net/zlib-1.2.11.tar.gz
# zlib="zlib-1.2.11"
# zlib_url="http://www.zlib.net/${zlib}.tar.gz"
# zlib_prefix="/usr/local/zlib"
# wget --no-check-certificate ${zlib_url} -O ~/Downloads/${zlib}".tar.gz"
# cd ~/Downloads/
# tar zxf ${zlib}".tar.gz"
# cd ${zlib}
# pwd
# ./configure --prefix=${zlib_prefix}
# make 
# sudo make install


# # openssl
#https://www.openssl.org/source/openssl-1.1.1c.tar.gz
# openssl="openssl-1.1.1c"
# openssl_url="https://www.openssl.org/source/${openssl}.tar.gz"
# openssl_filename=${openssl_url##*/}
# openssl_prefix="/usr/local/ssl"

# wget --no-check-certificate ${openssl_url} -O ~/Downloads/${openssl_filename}

# cd ~/Downloads/

# tar zxf ${openssl_filename}
# cd ${openssl}

# ./config --prefix=${openssl_prefix}
# make
# sudo make install





# #python 3.7.4

# sudo apt install -y libffi-dev zlib1g-dev libsqlite3-dev   #python.3.7.4 requirements

python="Python-3.7.4"
python_url="https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz"
python_prefix="/usr/local/python346"
# wget --no-check-certificate ${python_url} -O ~/Downloads/${python}".tgz"
cd ~/Downloads
# tar zxf ${python}".tgz"
cd ${python}

./configure --prefix=${python_prefix} #--enable-loadable-sqlite-extensions
make
sudo make install

# sudo ln -s /usr/local/python374/bin/python3 /usr/bin/python
# sudo ln - s /usr/local/python374/bin/pip3.7 /usr/bin/pip

