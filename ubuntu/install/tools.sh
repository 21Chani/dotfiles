#/bin/bash!

# INSTALL CURL -----------------------
if ! command -v curl &>/dev/null; then
    echo installing curl.
    sudo apt install curl -y
else
    echo " - Curl already installed, skipping."
fi

# INSTALL RUSTUP -----------------------
if ! command -v rustup &>/dev/null; then
    echo "installing rustup. \n"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
else
    echo " - Rustup already installed, skipping."
fi

# INSTALL GNOME TWEAKS -----------------------
if ! command -v gnome-tweaks &>/dev/null; then
    echo "installing gnome-tweaks"
    sudo apt install gnome-tweaks
else
    echo " - Gnome Tweaks already installed, skipping."
fi

# INSTALL GNOME EXTENSIONS ------------------------
if ! dpkg -s gnome-shell-extensions >/dev/null 2>&1; then
    echo "insalling gnome-tweaks"
    sudo apt install gnome-tweaks
else
    echo " - Gnome Shell Extensions already installed, skipping."
fi
