#!/bin/bash
filename="/workspace/changed_dirs.txt"
while read -r line; do
    dir="$line"
    echo "new pipeline in - $dir"
    pip3 install -r --force-reinstall "$dir/requirements.txt" --user
    python -m "$dir/code" "$(cat $dir/template_args.txt)"
done < "$filename"