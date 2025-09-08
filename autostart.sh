#! /bin/bash
# 自启动脚本 仅作参考

set +e

xrdb merge ~/.Xresources

# ime input
fcitx5 --replace -d 2> /dev/null &

# keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# clipboard content manager
wl-paste --type text --watch cliphist store & 

# bluetooth 
# blueman-applet &

# Permission authentication
/usr/lib/xfce-polkit/xfce-polkit &

gnome-keyring &
nutstore &
if [ "$(command -v clash-verge)" ]; then
  clash-verge &
else
  clash-nyanpasu &
fi
QT_SCALE_FACTOR=1 input-leap &
# swww-daemon &
/bin/bash ~/scripts/wp-autochange.sh &
QT_SCALE_FACTOR=1 copyq --start-server &
