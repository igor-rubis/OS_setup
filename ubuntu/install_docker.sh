#!/usr/bin/env bash

# Uninstall old versions
apt-get remove docker docker-engine docker.io

# Update the apt package index
apt-get update

# Install packages to allow apt to use a repository over HTTPS:
yes | apt-get install apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Set up the stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
yes | apt-get install docker-ce

# Use docker without sudo
groupadd docker
gpasswd -a $USER docker
newgrp docker
