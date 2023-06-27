cd $HOME/Downloads
git clone --depth=1 https://github.com/spicetify/spicetify-themes.git
rm -r spicetify-themes

cd spicetify-themes
cp -r * ~/.config/spicetify/Themes

spicetify config current_theme Ziro
spicetify config color_scheme rose-pine
spicetify backup
spicetify apply
