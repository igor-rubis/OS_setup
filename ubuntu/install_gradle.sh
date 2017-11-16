#!/usr/bin/env bash

 # Copyright 2016 Igor Rubis
 # Licensed under the Apache License, Version 2.0

# chmod +x /path/to/install_docker.sh
# /path/to/install_docker.sh || ./install_docker.sh

mkdir /opt/gradle
unzip -d /opt/gradle gradle-4.3.1-bin.zip

echo "" >> /etc/profile
echo "GRADLE_HOME=/opt/gradle/gradle-4.3.1" >> /etc/profile
echo "export PATH=\$PATH:\$GRADLE_HOME/bin" >> /etc/profile

. /etc/profile

gradle -version
