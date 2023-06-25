#/bin/bash!

source $DOTFILES/ubuntu/scripts/utils/favorite_apps.sh

if ! command -v alacritty &>/dev/null; then
    echo "Installing alacritty..."
    cd ~/Downloads

    git clone https://github.com/alacritty/alacritty.git
    cd alacritty

    # Install Dependencies
    echo "Installing alacritty dependencies"
    apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

    # Install & Build
    cargo install alacritty
    cargo build --release
    sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

    # Desktop Entry
    echo "Adding alacritty to entry."
    sudo cp target/release/alacritty /usr/local/bin
    sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
    sudo desktop-file-install extra/linux/Alacritty.desktop
    sudo update-desktop-database

    add_favorite_app "Alacritty.desktop"

    # Alacritty.yml
    mkdir ~/.config/alacritty
    cp $UBUNTU/alacritty.yml ~/.config/alacritty/
else
    echo "alacritty already installed, skipping."
fi
