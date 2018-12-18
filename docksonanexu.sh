#!/bin/bash

sudo yum update -y
sudo yum install docker -y
systemctl start docker
systemctl enable docker

docker pull sonarqube
docker run -d --name sonarqube -p 9000:9000 sonarqube

docker pull sonatype/nexus
docker run -d -p 8081:8081 --name nexus sonatype/nexus:oss

docker ps -a
