if [ ! -d "$HOME/.icons/candy-icons" ]; then
    echo "You already has a candy-icons in your '$HOME/.icons'."
    echo "Skipping download."
    exit
fi

echo -e "-------------------------------\n"
echo "Dowloading Candy icons"
echo -e "\n-------------------------------"

cd ~/Downloads
wget -O candy-icons.zip https://github.com/EliverLara/candy-icons/archive/refs/heads/master.zip
unzip "candy-icons.zip"
rm "candy-icons.zip"
mv "candy-icons-master" "~/.icons/candy-icons"

gsettings set org.gnome.desktop.interface icon-theme "candy-icons"
