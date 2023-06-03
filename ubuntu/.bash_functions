#!/bin/bash

mkcdir() {
    if [ -z "$1" ]; then
        echo "You should provide a name for directory"
        return
    fi

    echo "Creating and entering dir: $1" &&
    mkdir $1 &&
    cd $1
}

rbash() {
    cp $DOTFILES/ubuntu/.bashrc ~/.bashrc
    source ~/.bashrc
}