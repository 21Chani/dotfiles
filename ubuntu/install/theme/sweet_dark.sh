if [ -d "$HOME/.themes/Sweet-Dark-v40" ]; then
    echo "You already have a Sweet Dark theme installed in your '~/.themes'"
    echo "Skipping download..."
    exit
fi

if [! -d "$HOME/.themes" ]; then
    echo "Creating .themes folder"
    mkdir "$HOME/.themes"
fi

echo -e "-------------------------------\n"
echo "Dowloading Sweet-Dark-v40 Theme"
echo -e "\n-------------------------------"

cd $DOTFILES/theme/ubuntu
tar xvf Sweet-Dark-v40.tar.xz
mv Sweet-Dark-v40 "$HOME/.themes/"

gsettings set org.gnome.desktop.interface gtk-theme "Sweet-Dark-v40"
gsettings set org.gnome.shell.extensions.user-theme name "Sweet-Dark-v40"
