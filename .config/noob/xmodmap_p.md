# reconfiguration du clavier

> on genere le fichier de map

xmodmap -pke > ~/.Xmodmap

> on trouve la clef a remaper

xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'

> on modifie le fichier Xmodmap et on teste avec

xmodmap ~/.Xmodmap

>> exemple : keycode 49 = Super_L
>> touche ; shift + touche ; mode_switch + touche ; mode_switch + shift + touche ; AltGr + touche ; AltGr + shift + touche ; AltGr + mode_switch + touche ; AltGr + mode_switch + shift + touche ;
