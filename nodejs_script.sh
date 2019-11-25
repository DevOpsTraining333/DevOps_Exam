#!/bin/bash 

sudo yum install -y gcc-c++ make nc -y
sudo yum install epel-release
sudo yum install nodejs
sudo yum install npm

sudo npm install supervisor -g
sudo supervisor index.js &