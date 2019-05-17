#! /bin/sh

#xrdb -load ~/.Xdefaults &

urxvt -e sh -ic 'bash /home/$USER/.config/scripts/check_repository.sh' &
feh --bg-center /home/$USER/.config/themes/wallpaper.png &
unclutter -idle 1 &
xfce4-terminal -T rss -e "newsboat --config-file=/home/$USER/.config/newsboat/config --url-file=/home/$USER/.config/newsboat/urls --cache-file=/home/$USER/.config/newsboat/cache.db" &
xfce4-terminal -T ranger -e 'ranger' &
firefox --private-window file:///home/$USER/.config/bookmarks/home.html &
conky --config=/home/$USER/.config/conky/conkyrc &
xrdb -load ~/.Xdefaults &
i3-msg reload &