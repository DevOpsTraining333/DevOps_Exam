#!/bin/bash

systemctl start firewalld
systemctl enable firewalld

firewall-cmd --add-port=6543/tcp --permanent
firewall-cmd --reload

yum install java-1.8.0-openjdk-devel -y

yum install -y git

yum install epel-release
yum install shellCheck -y

useradd -d /var/lib/jenkins jenkins

echo "000000" | passwd --stdin jenkins