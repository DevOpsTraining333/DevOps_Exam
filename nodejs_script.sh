#!/bin/bash 

cd /var/lib/jenkins
wget  -P /var/lib/jenkins https://nodejs.org/download/

mkdir -p /var/lib/jenkins/nodejs
tar -zxvf node-v8.4.0-linux-x64.tar.gz -C /var/lib/jenkins/nodejs
export PATH=$PATH:/var/lib/jenkins/nodejs/node-v8.4.0-linux-x64/bin