#!/bin/bash

sudo yum update -y
sudo yum install epel-release -y
sudo yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo systemctl start jenkins
systemctl status jenkins
sudo systemctl enable jenkins

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

echo "please go http://your_ip_or_domain:8080 and use it"
