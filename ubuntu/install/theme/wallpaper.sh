if [ ! -d "$HOME/Documents/wallpapers" ]; then
    mkdir "$HOME/Documents/wallpapers"
fi

dist="$HOME/Documents/wallpapers/astronaut_wallpaper.jpg"
cp "$DOTFILES/wallpapers/astronaut_wallpaper_ubuntu.jpg" "$dist"

sleep 1.5
gsettings set org.gnome.desktop.background picture-uri "file://$dist"
