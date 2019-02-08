#!/bin/bash
for filename in ~/OneDrive/Backup/Fonts/*/*.*; do
    if [ ! -d "$filename" ]
    then
        # rm "/Library/Fonts/$(basename "$filename")"
        cp "$filename" ~/Library/Fonts
        echo $filename
    fi
done