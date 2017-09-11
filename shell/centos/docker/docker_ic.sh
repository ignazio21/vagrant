#!/bin/bash

# DOCKER - Install & Configure #
# Install always the latest Docker CE version
sudo yum update 
# Remove, if exists, old docker packages
sudo yum remove docker docker-common docker-selinux docker-engine
# Setup the repository
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
# Adding the repos to the /etc/yum.repos.d/ folder
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
#Enable the Edge repo
sudo yum-config-manager --enable docker-ce-edge
#Enable the Test repo
sudo yum-config-manager --enable docker-ce-test
# Install the yum package index
sudo yum makecache fast
#Install the last Docker CE version
sudo yum install -y docker-ce
#Start Docker
sudo systemctl start docker
#Add the Vagrant user to Docker group
#Allow Vagrant user to user Docker commands
sudo usermod -aG docker vagrant










