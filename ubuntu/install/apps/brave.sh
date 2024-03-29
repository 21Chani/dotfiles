#/bin/bash!
source $DOTFILES/ubuntu/scripts/utils/favorite_apps.sh

if ! command -v brave &>/dev/null; then
    echo "Installing brave\n"

    sudo apt install curl
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    sudo apt install brave-browser

    echo "adding brave to favorite apps"
    add_favorite_app "brave-browser.desktop"
else
    echo "brave already installed, skipping."
fi
