cd $HOME/Downloads
git clone --depth=1 https://github.com/spicetify/spicetify-themes.git

cd spicetify-themes
cp -r * ~/.config/spicetify/Themes

spicetify config current_theme Nightlight
spicetify config color_scheme nightlight
spicetify backup apply
