#/bin/bash!

full_root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/../..")"
echo $full_root_dir

if [ ! -d "$HOME/repos/github.com/21Chani" ]; then
    mkdir -p "$HOME/repos/github.com/21Chani"
fi

if [[ $script_dir != "$HOME/repos/github.com/21Chani/dotfiles" ]]; then
    mv $full_root_dir "$HOME/repos/github.com/21Chani/"
fi

export DOTFILES="$HOME/repos/github.com/21Chani/dotfiles"
export UBUNTU="$DOTFILES/ubuntu"
export APPS="$UBUNTU/install/apps"
export THEME="$UBUNTU/install/theme"

# APP & TOOLS --------------
source $UBUNTU/install/tools.sh
source $APPS/brave.sh
source $APPS/alacritty.sh

# THEME --------------------
source $THEME/candy_icons.sh
source $THEME/sweet_dark.sh
source $THEME/wallpaper.sh
source $THEME/dock.sh
source $THEME/fonts.sh
