#!/bin/bash
filename="/workspace/changed_dirs.txt"
while read -r line; do
    name="$line"
    echo "Name read from file - $name"
done < "$filename"