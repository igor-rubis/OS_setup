#!/usr/bin/env bash

 # Copyright 2016 Igor Rubis
 # Licensed under the Apache License, Version 2.0

# chmod +x /path/to/yourscript.sh
# /path/to/yourscript.sh || ./yourscript.sh

ARCHIVE="jdk-9.0.1_linux-x64_bin.tar.gz"
FOLDER="jdk-9.0.1"

# sudo mkdir -p /usr/local/java
# sudo wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u102-b14/$ARCHIVE

mkdir -p /usr/local/java/
mv $ARCHIVE /usr/local/java/$ARCHIVE
cd /usr/local/java
chmod a+x $ARCHIVE
tar xvzf $ARCHIVE
rm -rf $ARCHIVE

# add to /etc/profile
echo "" >> /etc/profile
echo "JAVA_HOME=/usr/local/java/$FOLDER" >> /etc/profile
echo "PATH=\$PATH:\$HOME/bin:\$JAVA_HOME/bin" >> /etc/profile
echo "export JAVA_HOME" >> /etc/profile
echo "export PATH" >> /etc/profile

update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/$FOLDER/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/$FOLDER/bin/javac" 1
update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/$FOLDER/bin/javaws" 1

update-alternatives --set java /usr/local/java/$FOLDER/bin/java
update-alternatives --set javac /usr/local/java/$FOLDER/bin/javac
update-alternatives --set javaws /usr/local/java/$FOLDER/bin/javaws

. /etc/profile

java -version
