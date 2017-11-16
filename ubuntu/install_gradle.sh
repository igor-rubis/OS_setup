#!/usr/bin/env bash

while true; do
    read -p "Please type a name of the archive: " ARCHIVE
    if [ -s $ARCHIVE ]; then
        break;
    else
        echo "File doesn't exist."
    fi
done

mkdir /opt/gradle
unzip -d /opt/gradle $ARCHIVE

while true; do
    read -p "Please type a name of the unarchived directory: " FOLDER
    if [ -d $FOLDER ]; then
        break;
    else
        echo "Directory doesn't exist."
    fi
done

echo "" >> /etc/profile
echo "GRADLE_HOME=/opt/gradle/$FOLDER" >> /etc/profile
echo "export PATH=\$PATH:\$GRADLE_HOME/bin" >> /etc/profile

. /etc/profile

gradle -version
