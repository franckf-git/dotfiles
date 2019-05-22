#!/bin/sh

CHOICES=$(echo -e "\
 firefox\n\
 chromium\n\
 surf\n\
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
 layout\n\
 reboot\n\
 lock\n\
 exit i3\n\
 restart i3\n\
 shutdown\n\
-\
" | rofi -dmenu -l 8 -p "  ")
    case "$CHOICES" in
        " radio"          ) $LITETERMINAL -title radio -e sh -ic 'mpv --no-video https://chai5she.cdn.dvmr.fr/fip-webradio1.mp3?ID=radiofrance' ;;
        " duckduckgo"     ) $BROWSER https://duckduckgo.com/?q=&ka=monospace&kh=1&kj=p&kt=monospace&k1=-1&kae=d&ia=answer ;;
        " windows"        ) rofi -modi window -show window -sidebar-mode -show-icons -drun-icon-theme  ;;
        " applications"   ) rofi -modi drun -show drun -sidebar-mode -show-icons -drun-icon-theme ;;
        " shutdown"       ) systemctl poweroff --ignore-inhibitors ;;
        " lock"           ) python3 $XDG_CONFIG_HOME/scripts/i3lock_blured.py ;;
        " exit i3"        ) i3-msg exit ;;
        " reboot"         ) systemctl reboot --ignore-inhibitors ;;
        " ranger"         ) $TERMINAL -T $FILE -e $FILE ;;
        " newsboat"       ) $TERMINAL -T rss -e "newsboat --config-file=$XDG_CONFIG_HOME/newsboat/config --url-file=$XDG_CONFIG_HOME/newsboat/urls --cache-file=$XDG_CONFIG_HOME/newsboat/cache.db" ;;
        " meteo"          ) $LITETERMINAL -e sh -ic 'curl --header "Accept-Language: fr" wttr.in/poitiers && bash' ;;
        " layout"         ) i3-msg "layout splitv ; move left ; resize grow right 20 px or 20 ppt" ;;
        " sublime"        ) $BIGEDITOR ;;
        " check repo"     ) $TERMINAL -T term -e   "bash $XDG_CONFIG_HOME/scripts/check_repository.sh" ;;
        " read me"        ) $TERMINAL -T readme -e "nvim -p Unclear/readme.md Unclear/path Files/InProgress" ;;
        " surf"           ) $BROWSER file://$XDG_CONFIG_HOME/bookmarks/home.html ;;
        " restart i3"     ) i3-msg restart ;;
        " chromium"       ) chromium-browser --incognito ;;
        " firefox"        ) firefox --private-window ;;
        " network"        ) nm-connection-editor ;;
        " gitlab"         ) $BROWSER a https://framagit.org/efydd ;;
    esac