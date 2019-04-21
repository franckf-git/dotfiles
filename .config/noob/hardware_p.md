# infos materiel

lsusb                       #liste les peripheriques de type usb connectes
lspci                       #liste les peripheriques de type pci connectes
lspci                       #avec details des pilotes
lspci | egrep 3D|Display|VGA            #afficher le modele de sa carte graphique
lspci | grep -i net | cut -d: -f3       #afficher le modele de sa carte Wi-Fi
lspci | grep -i audio | cut -d: -f3     #afficher le modele de sa carte son
cat /proc/cpuinfo                       #affiche les informations processeur (dont microcode|firmware)
lsblk                                   #liste tous les peripheriques de stockage
lsblk -f                                #info partition (+fdisk)
lsXXX                                   #listes des infos
cat /sys/block/sda/queue/rotational     #le disque est un ssd ? oui si 0
inxi -F                                 #liste materiel
inxi -Frmxx﻿
sensors                                 #afficher les informations senseurs
xev -event keyboard                     #affiche les action du clavier (keysym)
xmodmap -pke                            #liste des touches claviers
xrandr                                  #liste les moniteurs
xrandr --output eDP-1 --rotate normal   #orientation écran principal
arandr                                  #gui
udevadm monitor --udev                  #observation evenements peripheriques
procinfo                                #informations systemes /proc
lshw -html > FILE.html                  #obtenir le détail dans un fichier html
systemctl poweroff -i                   #extinction sans sudo
iw dev DEV set power_save off           #full energie sur le wifi (DEV dans ip a)
