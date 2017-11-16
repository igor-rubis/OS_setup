#!/usr/bin/env bash

 # Copyright 2016 Igor Rubis
 # Licensed under the Apache License, Version 2.0

# chmod +x /path/to/install_docker.sh
# /path/to/install_docker.sh || ./install_docker.sh

ARCHIVE="ideaIC-2017.2.6.tar.gz"
FOLDER="idea-IC-172.4574.11"

tar xvf $ARCHIVE
mv $FOLDER /usr/lib
ln -s /usr/lib/$FOLDER /usr/lib/idea

ln -s /usr/lib/idea/bin/idea.sh /usr/bin/idea

idea
