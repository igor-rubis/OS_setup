#!/usr/bin/env bash

mkdir /opt/gradle
unzip -d /opt/gradle gradle-4.3.1-bin.zip

echo "" >> /etc/profile
echo "GRADLE_HOME=/opt/gradle/gradle-4.3.1" >> /etc/profile
echo "export PATH=\$PATH:\$GRADLE_HOME/bin" >> /etc/profile

. /etc/profile

gradle -version
