#!/bin/bash

URL="https://raw.githubusercontent.com/lachm/cmd-line-trash/master/"

cd /usr/local/bin
umask 755

function download {
  wget "$URL$1"
}
download empty-trash
download list-trash
download put-trash-back
download trash
