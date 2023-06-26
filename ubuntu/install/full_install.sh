#/bin/bash!

script_dir=$(dirname "$0")
export DOTFILES="$script_dir/../.."
export UBUNTU="$DOTFILES/ubuntu/"
export APPS="$UBUNTU/install/apps"

source $UBUNTU/install/tools
source $APPS/brave
source $APPS/alacritty
