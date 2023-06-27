#/bin/bash!
add_favorite_app() {
    str=$(dconf read /org/gnome/shell/favorite-apps | sed "s/^\[\(.*\)\]$/\1/" | tr -d ',')
    fav_apps=($str)
    fav_apps+=("'$1'")
    stt="[$(
        IFS=",  "
        echo "${fav_apps[*]}"
    )]"

    gsettings set org.gnome.shell favorite-apps "$stt"
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
}
