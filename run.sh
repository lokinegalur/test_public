#!/bin/bash
filename="/workspace/changed_dirs.txt"
while read -r line; do
    dir="$line"
    if [ $dir == "." ];then
        echo "No pipelines updated or added"
        break
    fi
    echo "new pipeline in - $dir"
    ls $dir
    pip3 install -r  "$dir/requirements.txt" --user --force-reinstall --no-warn-script-location
    python $dir/code.py $(cat $dir/template_args.txt|xargs)
    gcloud dataflow jobs run $dir $(cat $dir/job_args.txt|xargs)
done < "$filename"