#!/bin/bash

yum install -y java-1.8.0-openjdk-devel
curl http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

yum install -y git

systemctl start firewalld
systemctl enable firewalld

firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --reload

yum install -y jenkins
systemctl start jenkins
systemctl enable jenkins