#!/bin/bash

sudo yum update -y
sudo yum install java-1.8.0-openjdk.x86_64
sudo mkdir /app && cd /app
wget https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/3/nexus-3.16.1-02-unix.tar.gz
sudo tar -xvf nexus-3.0.2-02-unix.tar.gz
sudo rm *.tar.qz
sudo nexus-* nexus
sudo adduser nexus
sudo chown -R nexus:nexus /app/nexus
sed '/*run_as_user=""*/c\run_as_user="nexus"/' /app/nexus/bin/nexus.rc
sudo ln -s /app/nexus/bin/nexus /etc/init.d/nexus
sudo chkconfig --add nexus
sudo chkconfig --levels 345 nexus on
sudo service nexus start
sudo service nexus status
