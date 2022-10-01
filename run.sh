#!/bin/bash
filename="/workspace/changed_dirs.txt"
while read -r line; do
    dir="$line"
    echo "new pipeline in - $dir"
    ls $dir
    pip3 install -r  "$dir/requirements.txt" --user --force-reinstall
    "$(python $dir/code.py $(cat $dir/template_args.txt|xargs))"
done < "$filename"