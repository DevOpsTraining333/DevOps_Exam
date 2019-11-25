#!/bin/bash 

cd /var/lib/jenkins
wget http://nodejs.org/dist/v0.10.30/node-v0.10.30.tar.gz
tar xzvf node-v* && cd node-v*
sudo yum install gcc gcc-c++
./configure
make
sudo make install
node --version