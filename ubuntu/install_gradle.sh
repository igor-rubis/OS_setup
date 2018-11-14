#!/usr/bin/env bash

echo "Download an archive with gradle binary from https://gradle.org/releases/ into this folder:"
pwd

while true; do
    read -p "Please type a name of the archive: " ARCHIVE
    if [ -s $ARCHIVE ]; then
        break;
    else
        echo "File doesn't exist."
    fi
done

mkdir -p /opt/gradle
yes | unzip -d /opt/gradle $ARCHIVE
rm $ARCHIVE

while true; do
    read -p "Please type a name of the unarchived directory: " FOLDER
    if [ -d /opt/gradle/$FOLDER ]; then
        break;
    else
        echo "Directory doesn't exist."
    fi
done

echo "" >> /etc/profile
echo "GRADLE_HOME=/opt/gradle/$FOLDER" >> /etc/profile
echo "export PATH=\$PATH:\$GRADLE_HOME/bin" >> /etc/profile

. /etc/profile

rm install_gradle.sh

gradle -version
