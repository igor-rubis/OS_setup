#!/usr/bin/env bash

while true; do
    read -p "Please type a name of the archive: " ARCHIVE
    if [ -s $ARCHIVE ]; then
        break;
    else
        echo "File doesn't exist."
    fi
done

mkdir -p /usr/local/java/
mv $ARCHIVE /usr/local/java/$ARCHIVE
cd /usr/local/java
chmod a+x $ARCHIVE
tar xvzf $ARCHIVE
rm -rf $ARCHIVE

while true; do
    read -p "Please type a name of the unarchived directory: " folder
    if [ -d $folder ]; then
        FOLDER=$folder; break;
    else
        echo "Directory doesn't exist."
    fi
done

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

source /etc/profile

rm install_java.sh

java -version