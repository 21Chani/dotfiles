#!/bin/bash
source $DOTFILES/scripts/utils/find_dir.sh

_tgrid_completion() {
    local cur opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD - 1]}"

    if [[ $prev == "-c" ]]; then
        values=$(cd_path_ls)
        COMPREPLY=( $(compgen -W "$values" -- "$cur") )
    else
        COMPREPLY=( $(compgen -W "" -- "$cur") )
    fi
}

complete -F _tgrid_completion tgrid