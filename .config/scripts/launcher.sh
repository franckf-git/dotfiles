#! /bin/sh

perso () {
CHOIX=$(echo -e "\
 (B)rave\n\
 (C)hromium\n\
 (G)oogle chrome\n\
 (F)irefox\n\
 s(U)rf\n\
 (D)uckduckgo\n\
 neo(V)im\n\
 rea(D) me\n\
 (S)ublime\n\
 check r(E)po\n\
 git(L)ab\n\
 (W)ikipedia\n\
 newsboa(T)\n\
 radi(O)\n\
 (R)anger\n\
 (M)eteo\n\
 stick(Y) terminal\n\
-\
" | rofi -dmenu -l 6 -p "apps > ")
    case "$CHOIX" in
        " (S)ublime"           ) /home/$USER/.sublime_text_3/sublime_text ; flatpak run com.sublimetext.three ;;
        " (R)anger"            ) xfce4-terminal -T ranger -e 'ranger' ;;
        " rea(D) me"           ) xfce4-terminal -T readme -e 'nvim -p /home/$USER/Unclear/readme.md /home/$USER/Unclear/path /home/$USER/Files/InProgress' ;;
        " neo(V)im"            ) xfce4-terminal -T neovim -e 'nvim' ;;
        " stick(Y) terminal"   ) xfce4-terminal -T sticky ;;
        " newsboa(T)"          ) xfce4-terminal -T rss -e "newsboat --config-file=/home/$USER/.config/newsboat/config --url-file=/home/$USER/.config/newsboat/urls --cache-file=/home/$USER/.config/newsboat/cache.db" ;;
        " radi(O)"             ) urxvt -title radio -e sh -ic 'mpv --no-video https://chai5she.cdn.dvmr.fr/fip-webradio1.mp3?ID=radiofrance' ;;
        " (M)eteo"             ) urxvt -e sh -ic 'curl --header "Accept-Language: fr" wttr.in/poitiers && bash' ;;
        " check r(E)po"         ) urxvt -e sh -ic 'bash /home/$USER/.config/scripts/check_repository.sh' ;;
        " (B)rave"             ) brave-browser-stable ;;
        " (C)hromium"          ) chromium-browser --incognito ;;
        " (G)oogle chrome"     ) google-chrome ;;
        " (F)irefox"           ) firefox --private-window ;;
        " s(U)rf"              ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpiS -a a file:///home/$USER/.config/bookmarks/home.html ;;
        " git(L)ab"            ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpiS -a a https://framagit.org/efydd ;;
        " (W)ikipedia"        ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpIs -a a https://fr.wikipedia.org ;;
        " (D)uckduckgo"        ) surf -u "Mozilla/5.0 (Windows NT 10.0;) Gecko Firefox/66.0" -dgNpis -a a https://duckduckgo.com/ ;;
    esac
}

system () {
CHOIX=$(echo -e "\
 (S)hutdown\n\
 (R)eboot\n\
 (L)ock\n\
 (E)xit i3\n\
 restart (I)3\n\
  touchpad on\n\
  touchpad off\
" | rofi -dmenu -l 5 -p "system > ")
    case "$CHOIX" in
        " (S)hutdown"        ) systemctl poweroff --ignore-inhibitors ;;
        " (R)eboot"          ) systemctl reboot --ignore-inhibitors ;;
        " (L)ock"            ) i3lock --nofork --color=272822 --tiling --image=/home/$USER/.config/themes/lock.png ;;
        " (E)xit i3"         ) i3-msg exit ;;
        " restart (I)3"      ) i3-msg restart ;;
        "  touchpad on"   ) xinput enable 11 && notify-send " the touchpad is enable" ;;
        "  touchpad off"  ) xinput disable 11 && notify-send " the touchpad is disable" ;;
    esac
}

rotate () {
CHOIX=$(echo -e "\
 la(Y)out for workspace\n\
 (N)ormal\n\
 (L)eft\n\
 (R)ight\n\
 (I)nverted\
" | rofi -dmenu -l 5 -p "rotate and layout > ")
    case "$CHOIX" in
        " la(Y)out for workspace"      ) i3-msg "layout splitv; move left; resize grow right 20 px or 20 ppt" ;;
        " (N)ormal"      ) xrandr --output HDMI-1 --rotate normal ;;
        " (L)eft"        ) xrandr --output HDMI-1 --rotate left ;;
        " (R)ight"       ) xrandr --output HDMI-1 --rotate right ;;
        " (I)nverted"    ) xrandr --output HDMI-1 --rotate inverted ;;
    esac
}

work () {
CHOIX=$(echo -e "\
\n\
\n\
\n\
\
" | rofi -dmenu -l 4 -p "work > ")
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
    "rofi"      ) rofi -modi drun,combi,ssh -show combi -sidebar-mode -show-icons -drun-icon-theme ;;
esac

