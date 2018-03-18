#!/bin/bash

#$1 source directory with torrents file
#$2 target path downloads file

IFS=$'\n' 

for iFile in $(find $1 -type f -name "*.torrent")
do
    add_torrent="add '$iFile' -p "$2" """

    if deluge-console $add_torrent; then
        rm $iFile 
    fi
done
