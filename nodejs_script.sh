#!/bin/bash 

sudo yum install -y gcc-c++ make nc -y
sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
sleep 3
sudo yum install -y nodejs

sudo npm install supervisor -g
sudo supervisor index.js &