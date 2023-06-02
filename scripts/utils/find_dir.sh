#!/bin/bash

find_dir()  {
    cdpath_dirs=()
    target_dir="$1"
    IFS=':' read -ra cdpath_dirs <<< "$CDPATH"

    for dir in "${cdpath_dirs[@]}"; do
        if [[ -d "$dir/$target_dir" ]]; then
            echo "$dir/$target_dir"
            return
        fi
    done
    echo ""
}
