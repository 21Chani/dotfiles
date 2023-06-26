#/bin/bash!

script_dir=$(dirname "$0")
export DOTFILES="$script_dir/../.."
export UBUNTU="$DOTFILES/ubuntu/"
export APPS="$UBUNTU/install/apps"
export THEME="$UBUNTU/install/theme"

# APP & TOOLS --------------
source $UBUNTU/install/tools
source $APPS/brave
source $APPS/alacritty

# THEME --------------------
source $THEME/candy_icons.sh
source $THEME/sweet_dark.sh
source $THEME/wallpaper.sh
