#!/usr/bin/env bash

echo "Download gradle archive from https://golang.org/dl/ into this folder:"
pwd

while true; do
    read -p "Please type a name of the archive: " ARCHIVE
    if [ -s $ARCHIVE ]; then
        break;
    else
        echo "File doesn't exist."
    fi
done

yes | tar -C /usr/local -xzf $ARCHIVE
rm $ARCHIVE

echo "" >> /etc/profile
echo "export PATH=\$PATH:/usr/local/go/bin" >> /etc/profile
echo "export GOPATH=\$HOME/go" >> /etc/profile
echo "export PATH=\$PATH:\$GOPATH/bin" >> /etc/profile

source /etc/profile

rm install_go_lang.sh

go version