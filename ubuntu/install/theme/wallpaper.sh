if ! -d "$HOME/Documents/wallpapers" &>/dev/null; then
    mkdir "$HOME/Documents/wallpapers"
fi

dist="$HOME/Documents/wallpapers/astronaut_wallpaper.jpg"
cp "$DOTFILES/wallpapers/astronaut_wallpaper_ubuntu.jpg" "$dist"

gsettings set org.gnome.desktop.background picture-uri "file://$dist"
