#/bin/bash!

if ! command -v spicetify &>/dev/null; then
    echo "installing spicetify"

    curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
    curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
else
    echo "spicetify already installed, skipping."
fi
