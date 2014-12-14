#!/bin/bash

URL="https://raw.githubusercontent.com/lachm/cmd-line-trash/master/"

cd /usr/local/bin

function download {
  wget "$URL$1"
  chmod 755 "$1"
}
download empty-trash
download list-trash
download put-trash-back
download trash
