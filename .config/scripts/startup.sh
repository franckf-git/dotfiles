#! /bin/sh

# background and mouse
feh --bg-center /home/$USER/.config/themes/wallpaper.png &
conky  --config=/home/$USER/.config/conky/conky.conf &
unclutter -idle 1 &
# apps
xfce4-terminal -T term -e   "bash /home/$USER/.config/scripts/check_repository.sh" &
xfce4-terminal -T rss -e    "newsboat --config-file=/home/$USER/.config/newsboat/config --url-file=/home/$USER/.config/newsboat/urls --cache-file=/home/$USER/.config/newsboat/cache.db" &
xfce4-terminal -T ranger -e "ranger" &
firefox --private-window file:///home/$USER/.config/bookmarks/home.html &
# colorscheme
sleep 3s
xrdb -load ~/.Xdefaults &
i3-msg reload &