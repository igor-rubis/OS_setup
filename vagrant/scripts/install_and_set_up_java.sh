#!/usr/bin/env bash

 # Copyright 2016 Igor Rubis
 # Licensed under the Apache License, Version 2.0

sudo mkdir -p /usr/local/java
sudo wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz
sudo mv jdk-8u102-linux-x64.tar.gz /usr/local/java/

cd /usr/local/java
sudo chmod a+x jdk-8u102-linux-x64.tar.gz
sudo tar xvzf jdk-8u102-linux-x64.tar.gz
sudo rm -rf jdk-8u102-linux-x64.tar.gz

sudo rm /etc/profile
sudo cp /vagrant/packages/java/profile /etc/profile

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_102/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_102/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_102/bin/javaws" 1

sudo update-alternatives --set java /usr/local/java/jdk1.8.0_102/bin/java
sudo update-alternatives --set javac /usr/local/java/jdk1.8.0_102/bin/javac
sudo update-alternatives --set javaws /usr/local/java/jdk1.8.0_102/bin/javaws

. /etc/profile
