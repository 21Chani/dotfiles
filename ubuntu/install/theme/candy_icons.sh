if [ -d "$HOME/.icons/candy-icons" ]; then
    echo "You already has a candy-icons in your '$HOME/.icons'."
    echo "Skipping download."
    exit
fi

if [ ! -d "$HOME/.icons" ]; then
    mkdir ~/.icons
fi

cd $DOTFILES/theme/ubuntu
unzip "candy-icons.zip"
mv "candy-icons-master" "candy-icons"
mv "candy-icons" "$HOME/.icons/"

gsettings set org.gnome.desktop.interface icon-theme "candy-icons"
