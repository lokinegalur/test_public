#!/bin/bash
filename="/workspace/changed_dirs.txt"
while read -r line; do
    dir="$line/"
    echo "Name read from file - $dir"
done < "$filename"