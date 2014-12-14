#!/bin/bash

URL="https://raw.githubusercontent.com/lachm/cmd-line-trash/master/"

cd /usr/local/bin

if [[ `whoami` != "root" ]]; then echo "Must be run as root"; exit 1; fi
function download {
  wget -N "$URL$1"
  chmod 755 "$1"
}
download empty-trash
download list-trash
download put-trash-back
download trash
