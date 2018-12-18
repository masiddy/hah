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



sudo cd /usr/local/src
sudo wget http://www-us.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz

tar -xf apache-maven-3.5.4-bin.tar.gz
#rm -rf apache-maven-3.5.4-bin.tar.gz
mv apache-maven-3.5.4/ apache-maven/

echo "# Apache Maven Environment Variables
# MAVEN_HOME for Maven 1 - M2_HOME for Maven 2
export M2_HOME=/usr/local/src/apache-maven
export PATH=${M2_HOME}/bin:${PATH}" > /etc/profile.d/maven.sh

sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh

mvn --version
