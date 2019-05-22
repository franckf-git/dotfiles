#!/bin/sh

# background and mouse
feh --bg-center $XDG_CONFIG_HOME/themes/wallpaper.png &
conky  --config=$XDG_CONFIG_HOME/conky/conky.conf &
unclutter -idle 1 &
# apps
xfce4-terminal -T term -e   "bash $XDG_CONFIG_HOME/scripts/check_repository.sh" &
xfce4-terminal -T rss -e    "newsboat --config-file=$XDG_CONFIG_HOME/newsboat/config --url-file=$XDG_CONFIG_HOME/newsboat/urls --cache-file=$XDG_CONFIG_HOME/newsboat/cache.db" &
xfce4-terminal -T ranger -e "ranger" &
firefox --private-window file://$XDG_CONFIG_HOME/bookmarks/home.html &
# colorscheme
sleep 3s
xrdb -load ~/.Xdefaults &
i3-msg reload &