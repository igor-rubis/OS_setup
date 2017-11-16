#!/usr/bin/env bash

ARCHIVE="ideaIC-2017.2.6.tar.gz"
FOLDER="idea-IC-172.4574.11"

tar xvf $ARCHIVE
mv $FOLDER /usr/lib
ln -s /usr/lib/$FOLDER /usr/lib/idea

ln -s /usr/lib/idea/bin/idea.sh /usr/bin/idea

idea
