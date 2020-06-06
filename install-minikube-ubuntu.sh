#!/usr/bin/env bash


grep -E --color 'vmx|svm' /proc/cpuinfo


sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl



echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -


sudo apt-get update
sudo apt-get install virtualbox-6.1

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
apt install conntrack


wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce-cli_19.03.9~3-0~ubuntu-xenial_amd64.deb && dpkg -i docker-ce-cli_19.03.9~3-0~ubuntu-xenial_amd64.deb
wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/containerd.io_1.2.13-2_amd64.deb && dpkg -i containerd.io_1.2.13-2_amd64.deb
wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_19.03.9~3-0~ubuntu-xenial_amd64.deb && dpkg -i docker-ce_19.03.9~3-0~ubuntu-xenial_amd64.deb

minikube start --driver=none
