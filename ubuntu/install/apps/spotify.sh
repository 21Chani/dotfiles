#/bin/bash!
source $DOTFILES/ubuntu/scripts/utils/favorite_apps.sh

if ! command -v spotify &>/dev/null; then
    echo "Installing spotify\n"

    curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update
    sudo apt-get install spotify-client

    echo "adding spotify to favorite apps"
    add_favorite_app "spotify.desktop"
else
    echo "spotify already installed, skipping."
fi
