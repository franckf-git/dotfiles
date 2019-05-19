#!/bin/sh

CHOICES=$(echo -e "\
 firefox\n\
 chromium\n\
 surf\n\
 duckduckgo\n\
 gitlab\n\
 sublime\n\
 read me\n\
-\n\
 applications\n\
 newsboat\n\
 radio\n\
 ranger\n\
 meteo\n\
 network\n\
 check repo\n\
-\n\
 windows\n\
 layout\n\
 reboot\n\
 lock\n\
 exit i3\n\
 restart i3\n\
 shutdown\n\
-\
" | rofi -dmenu -l 8 -p "  ")
    case "$CHOICES" in
        " radio"          ) urxvt -title radio -e sh -ic 'mpv --no-video https://chai5she.cdn.dvmr.fr/fip-webradio1.mp3?ID=radiofrance' ;;
        " duckduckgo"     ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpis -a a https://duckduckgo.com/ ;;
        " windows"        ) rofi -modi window -show window -sidebar-mode -show-icons -drun-icon-theme  ;;
        " applications"   ) rofi -modi drun -show drun -sidebar-mode -show-icons -drun-icon-theme ;;
        " shutdown"       ) systemctl poweroff --ignore-inhibitors ;;
        " lock"           ) i3lock --nofork --color=2a1d17 --tiling --image=/home/$USER/.config/themes/lock.png ;;
        " exit i3"        ) i3-msg exit ;;
        " reboot"         ) systemctl reboot --ignore-inhibitors ;;
        " ranger"         ) xfce4-terminal -T ranger -e 'ranger' ;;
        " newsboat"       ) xfce4-terminal -T rss -e "newsboat --config-file=/home/$USER/.config/newsboat/config --url-file=/home/$USER/.config/newsboat/urls --cache-file=/home/$USER/.config/newsboat/cache.db" ;;
        " meteo"          ) urxvt -e sh -ic 'curl --header "Accept-Language: fr" wttr.in/poitiers && bash' ;;
        " layout"         ) i3-msg "layout splitv ; move left ; resize grow right 20 px or 20 ppt" ;;
        " sublime"        ) /home/$USER/.sublime_text_3/sublime_text ; flatpak run com.sublimetext.three ;;
        " check repo"     ) xfce4-terminal -T term -e   "bash /home/$USER/.config/scripts/check_repository.sh" ;;
        " read me"        ) xfce4-terminal -T readme -e 'nvim -p /home/$USER/Unclear/readme.md /home/$USER/Unclear/path /home/$USER/Files/InProgress' ;;
        " surf"           ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpiS -a a file:///home/$USER/.config/bookmarks/home.html ;;
        " restart i3"     ) i3-msg restart ;;
        " chromium"       ) chromium-browser --incognito ;;
        " firefox"        ) firefox --private-window ;;
        " network"        ) nm-connection-editor ;;
        " gitlab"         ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpiS -a a https://framagit.org/efydd ;;
    esac