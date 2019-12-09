#!/bin/bash

yum update -y
yum install -y deltarpm
yum update -y

yum install -y gcc openssl-devel bzip2-devel libffi-devel
cd /opt
wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz

tar xzf Python-3.8.0.tgz
cd Python-3.8.0
./configure --enable-optimizations
make install

cd ..
rm -rf Python-3.8.0.tar.gz

rm -rf /usr/bin/python

/usr/local/bin/pip3.8 install virtualenv

/usr/local/bin/virtualenv -p /usr/local/bin/python3.8 /opt/vagrDRP
