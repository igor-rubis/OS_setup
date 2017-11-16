#!/usr/bin/env bash

while true; do
    read -p "Please type a name of the archive: " ARCHIVE
    if [ -s $ARCHIVE ]; then
        break;
    else
        echo "File doesn't exist."
    fi
done

tar xvf $ARCHIVE

while true; do
    read -p "Please type a name of the unarchived directory: " FOLDER
    if [ -d $FOLDER ]; then
        break;
    else
        echo "Directory doesn't exist."
    fi
done

mv $FOLDER /usr/lib
ln -s /usr/lib/$FOLDER /usr/lib/idea

ln -s /usr/lib/idea/bin/idea.sh /usr/bin/idea

idea
