if [ ! -d "$HOME/.themes/Sweet-Dark-v40" ]; then
    echo "You already have a Sweet Dark theme installed in your '~/.themes'"
    echo "Skipping download..."
    exit
fi

echo -e "-------------------------------\n"
echo "Dowloading Sweet-Dark-v40 Theme"
echo -e "\n-------------------------------"

cd ~/Downloads
Download theme tar.xz
wget https://files03.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2ODY2MDgzMTciLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6Ijc5ZjVlNGZmMGZiZDZiZTdhNGQyNmQ2YWM2NDRiMWYwZTBhNWZkMmI3MTBlZDZlZGExM2EzNTEyOWE2NGY1NDk3Yzg5NjEzZTI0Y2Q2OWI0NTYzYTM5MzhlOGEyNzQ3OWY3NWZjNTljZjM0MjdiOTJhNDdhMTcxNzk0ODc0Y2VjIiwidCI6MTY4Nzc3MjY5MSwic3RmcCI6IjgzNWE0MzhlODBlNDJhNjliYTM4NzczMTA2Y2U0MDY1Iiwic3RpcCI6IjIwMS40OC4yMjkuMTMxIn0.nkOqWHkz38SsNdMWlVXClBS7jEB8p57l5zLQyE69VMc/Sweet-Dark-v40.tar.xz
tar xvf Sweet-Dark-v40.tar.xz

if [ ! -d "$HOME/.themes" ]; then
    mkdir ~/.themes
fi

gsettings set org.gnome.desktop.interface gtk-theme "Sweet-Dark-v40"
