cd $DOTFILES/theme/ubuntu

# JETBRAINS MONO --------------------
unzip JetBrainsMono.zip -d JetBrainsMono

sudo mv JetBrainsMono/fonts/ttf/*.ttf $HOME/.local/share/fonts
rm -r JetBrainsMono

sudo fc-cache -f -v
