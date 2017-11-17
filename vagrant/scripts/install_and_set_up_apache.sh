#!/usr/bin/env bash

 # Copyright 2016 Igor Rubis
 # Licensed under the Apache License, Version 2.0

sudo apt-get update
sudo apt-get install -y apache2

yes | sudo apt-get install subversion
yes | sudo apt-get install libapache2-svn

sudo rm /etc/apache2/sites-available/default
sudo cp /vagrant/packages/apache/default /etc/apache2/sites-available/default
sudo service apache2 restart

sudo mkdir /home/vagrant/svn-repo
svnadmin create /home/vagrant/svn-repo

sudo mkdir /home/vagrant/svn-creds
sudo htpasswd -bc /home/vagrant/svn-creds/passwd user password