#!/bin/bash 

sudo yum install -y gcc-c++ make nc -y
sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sleep 2
sudo yum install nodejs

sudo npm install supervisor -g
sudo supervisor index.js &