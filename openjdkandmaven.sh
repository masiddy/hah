#!/bin/bash

sudo curl -O https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
sudo tar zxvf openjdk-11.0.1_linux-x64_bin.tar.gz 
rm -rf openjdk-11.0.1_linux-x64_bin.tar.gz
sudo mv jdk-11.0.1 /usr/local/ 

echo "# create new
export JAVA_HOME=/usr/local/jdk-11.0.1
export PATH=$PATH:$JAVA_HOME/bin" > /etc/profile.d/jdk11.sh

sudo chmod 777 /etc/profile.d/jdk11.sh

source /etc/profile.d/jdk11.sh 
java -version 



sudo yum install maven

mvn --version
