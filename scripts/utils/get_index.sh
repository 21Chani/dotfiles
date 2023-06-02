#/bin/bash

get_word_index(){ 
    local to_find="$1"
    local args=("$@")
    local length=${#args[@]}
    local params=(${args[@]:1:length})

    for index in "${!params[@]}"; do 
        if [[ $to_find == ${params[$index]} ]]; then
            
            echo $index
            return
        fi
    done

    echo -1
}