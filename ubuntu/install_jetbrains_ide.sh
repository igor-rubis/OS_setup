#!/usr/bin/env bash

read -p "Please type a name of the IDE. May be 'idea' || 'goland' || etc." IDE

while true; do
    read -p "Please type a name of the archive: " ARCHIVE
    if [ -s $ARCHIVE ]; then
        break;
    else
        echo "File doesn't exist."
    fi
done

tar xvf $ARCHIVE
rm $ARCHIVE

while true; do
    read -p "Please type a name of the unarchived directory: " FOLDER
    if [ -d $FOLDER ]; then
        break;
    else
        echo "Directory doesn't exist."
    fi
done

mv $FOLDER /usr/lib
ln -s /usr/lib/$FOLDER /usr/lib/$IDE

ln -s /usr/lib/$IDE/bin/$IDE.sh /usr/bin/$IDE

rm install_jetbrains_ide.sh

$IDE