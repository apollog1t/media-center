#!/bin/bash

IFS=$'\n' 

for iFile in $(find $1 -type f -name "*.torrent")
do
    scp $iFile user@100.100.*.*:/mnt/storage/ftp/torrents/movies
    
    if [ $? -eq 0 ];
    then 
        rm $iFile
    fi
done