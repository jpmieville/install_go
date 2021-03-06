#!/bin/bash
VERSION="1.18.2" # go version
ARCH="amd64"     # go archicture 
wget -L "https://golang.org/dl/go${VERSION}.linux-${ARCH}.tar.gz"
if [[ -d /usr/local/go ]]
then
    echo "Remove the old version of go"
    rm -rf /usr/local/go
fi
tar -C /usr/local -xzf go${VERSION}.linux-${ARCH}.tar.gz
