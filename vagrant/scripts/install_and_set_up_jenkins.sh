#!/usr/bin/env bash

 # Copyright 2016 Igor Rubis
 # Licensed under the Apache License, Version 2.0

wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
yes | sudo apt-get install jenkins

# sudo wget http://localhost:8080/jnlpJars/jenkins-cli.jar
# echo 'hudson.security.HudsonPrivateSecurityRealm.createAccount("user", "password")' | sudo java -jar jenkins-cli.jar -s http://localhost:8080/ groovy =
# echo 'jenkins.model.Jenkins.instance.securityRealm.createAccount("user", "password")' | sudo java -jar jenkins-cli.jar -s http://localhost:8080/ groovy =