#/bin/bash!
if ! command -v code &>/dev/null; then
    echo "installing vscode"

    cd $HOME/Downloads
    wget https://az764295.vo.msecnd.net/stable/695af097c7bd098fbf017ce3ac85e09bbc5dda06/code_1.79.2-1686734195_amd64.deb
    dpkg -i code_1.79.2-1686734195_amd64.deb
    sudo apt-get install -f
    rm code_1.79.2-1686734195_amd64.deb

    echo "adding vscode to favorite apps"
    add_favorite_app "code_code.desktop"
else
    echo "vscode already installed, skipping."
fi
