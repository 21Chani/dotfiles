cd $DOTFILES/theme/ubuntu

if [ -d "$HOME/.local/share/fonts" ]; then
    mkdir -p $HOME/.local/share/fonts
fi

# JETBRAINS MONO --------------------
unzip JetBrainsMono.zip -d JetBrainsMono

sudo mv JetBrainsMono/fonts/ttf/*.ttf $HOME/.local/share/fonts
rm -r JetBrainsMono

sudo fc-cache -f -v
