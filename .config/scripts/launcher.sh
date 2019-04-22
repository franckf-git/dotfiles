#! /bin/sh

perso () {
CHOIX=$(echo -e "\
 brave\n\
 check repo\n\
 chromium\n\
 google chrome\n\
 duckduckgo\n\
 firefox\n\
 meteo\n\
 neovim\n\
 newsboat\n\
 radio\n\
 ranger\n\
 read me\n\
 gitlab\n\
 sublime\n\
 surf\n\
 wikipedia\
" | rofi -dmenu -l 16)
    case "$CHOIX" in
        " sublime"           ) /home/$USER/.sublime_text_3/sublime_text ; flatpak run com.sublimetext.three ;;
        " ranger"            ) xfce4-terminal -T ranger -e 'ranger' ;;
        " read me"           ) xfce4-terminal -T readme -e 'nvim -p /home/$USER/Unclear/readme.md /home/$USER/Unclear/path /home/$USER/Files/InProgress' ;;
        " neovim"            ) xfce4-terminal -T neovim -e 'nvim' ;;
        " newsboat"          ) xfce4-terminal -T rss -e "newsboat --config-file=/home/$USER/.config/newsboat/config --url-file=/home/$USER/.config/newsboat/urls --cache-file=/home/$USER/.config/newsboat/cache.db" ;;
        " radio"             ) urxvt -title radio -e sh -ic 'mpv --no-video https://chai5she.cdn.dvmr.fr/fip-webradio1.mp3?ID=radiofrance' ;;
        " meteo"             ) urxvt -e sh -ic 'curl --header "Accept-Language: fr" wttr.in/poitiers && bash' ;;
        " check repo"         ) urxvt -e sh -ic 'bash /home/$USER/.config/scripts/check_repository.sh' ;;
        " brave"             ) brave-browser-stable ;;
        " chromium"          ) chromium-browser --incognito ;;
        " google chrome"     ) google-chrome ;;
        " firefox"           ) firefox --private-window ;;
        " surf"              ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpis -a a file:///home/$USER/.config/bookmarks/home.html ;;
        " gitlab"            ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpiS -a a https://framagit.org/efydd ;;
        " wikipedia"        ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpIs -a a https://fr.wikipedia.org ;;
        " duckduckgo"        ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpis -a a https://duckduckgo.com/ ;;
    esac
}

system () {
CHOIX=$(echo -e "\
 shutdown\n\
 reboot\n\
 lock\n\
 exit i3\n\
 restart i3\n\
  touchpad on\n\
  touchpad off\
" | rofi -dmenu -l 7)
    case "$CHOIX" in
        " shutdown"        ) systemctl poweroff --ignore-inhibitors ;;
        " reboot"          ) systemctl reboot --ignore-inhibitors ;;
        " lock"            ) i3lock --nofork --color=272822 --tiling --image=/home/$USER/.config/themes/lock.png ;;
        " exit i3"         ) i3-msg exit ;;
        " restart i3"      ) i3-msg restart ;;
        "  touchpad on"   ) xinput enable 11 && notify-send " the touchpad is enable" ;;
        "  touchpad off"  ) xinput disable 11 && notify-send " the touchpad is disable" ;;
    esac
}

rotate () {
CHOIX=$(echo -e "\
 normal\n\
 left\n\
 right\n\
 inverted\
" | rofi -dmenu -l 4)
    case "$CHOIX" in
        " normal"      ) xrandr --output $screen0 --rotate normal ;;
        " left"        ) xrandr --output $screen0 --rotate left ;;
        " right"       ) xrandr --output $screen0 --rotate right ;;
        " inverted"    ) xrandr --output $screen0 --rotate inverted ;;
    esac
}

work () {
CHOIX=$(echo -e "\
\n\
\n\
\n\
\
" | rofi -dmenu -l 4)
    case "$CHOIX" in
        ""    )  ;;
        ""    )  ;;
        ""    )  ;;
        ""    )  ;;
    esac
}

case "$1" in
    "perso"     ) perso  ;;
    "system"    ) system ;;
    "rotate"    ) rotate ;;
    "work"      ) work ;;
    "rofi"      ) rofi -modi run,drun,window,combi,ssh -show window -sidebar-mode -show-icons -drun-icon-theme ;;
esac

