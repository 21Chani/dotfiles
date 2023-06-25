#/bin/bash!
# gsettings set org.gnome.shell favorite-apps "$fav_apps_str"
add_favorite_app() {
    str=$(dconf read /org/gnome/shell/favorite-apps | sed "s/]/, '$1']/")
    gsettings set org.gnome.shell favorite-apps "$str"
}

remove_favorite_app() {
    str=$(dconf read /org/gnome/shell/favorite-apps | sed "s/^\[\(.*\)\]$/\1/" | tr -d ',')
    fav_apps=($str)
    updated_apps=()
    for app in ${fav_apps[*]}; do
        if [[ $app != "'$1'" ]]; then
            updated_apps+=($app)
        fi
    done

    stt="[$(
        IFS=",  "
        echo "${updated_apps[*]}"
    )]"
    gsettings set org.gnome.shell favorite-apps "$stt"
    echo $stt
}
