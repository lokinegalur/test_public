#!/bin/bash
filename="/workspace/changed_dirs.txt"
while read -r line; do
    dir="$line"
    echo "new pipeline in - $dir"
    pip3 install -r "$dir/requirements.tx" --user
    python -m "$dir/code" "$(cat $dir/template_args.txt)"
done < "$filename"