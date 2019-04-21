# outils CLI ligne de commande

zmap                                             #scanner reseau plus rapide que nmap
shc -v -f FILE.sh                                #convertir un script en binaire
jp2a                                             #image en ascii
ccze                                             #coloration syntaxique des logs
most                                             #colorisation man pages
fc-list                                          #lister les polices installées
xprop                                            #lecture d une fenetre
nmon                                             #moniteur systeme
glances                                          #moniteur (copr tartare/glances)
script  FILE.log -t time.log                     #enregistreur terminal
scriptreplay -s FILE.log -t time.log             #rejouer la session
mc                                               #explorateur de fichier
mc -e ou mcedit FICHIER                          #editeur de fichier
mc -v ou mcview FICHIER                          #visualisateur
ranger                                           #explorateur de fichier avec visualisation
sudo apt-get install ranger caca-utils highlight atool w3m-img poppler-utils mediainfo
ranger --copy-config=all
links2                                           #navigateur web
links2 -g                                        #en mode graphique
w3m-img                                          #navigateur web avec images
w3mimg () {
        w3m -o imgdisplay=/usr/lib/w3m/w3mimgdisplay $1
}
googler                                          #recheche google (--news)
ddgr                                             #recheche duckduck (avec bang)
column -s';' -t FILE.csv                         #tableur
bc                                               #calculatrice
echo "MESSAGE" | mail -s "OBJET" MAIL@MAIL.com   #mail
mail -s "OBJET" MAIL@MAIL.com < PJ.jpg           #mail avec piece jointe
wget wttr.in -O - -o /dev/null                   #meteo
sudo iwconfig wlan0 essid MONSSID                #wifi
iw                                               #gestionnaire reseau
wicd-curses
nmcli device wifi list
nmcli device wifi connect SSID password PASSWORD
ncdu                                             #taille des dossiers > df -h
espeak -v fr+f1 "MESSAGE"                        #synthetiseur vocal
espeak -f TXT -a 10 -g 10 -k 20 -l 0 -p 50 -s 160 -v french -w WAV
espeak -f PLAINTEXTFILE.txt                      #lecture d un fichier
espeak -w AUDIO.wav "MESSAGE"                    #ecriture dans un fichier
echo "MESSAGE" | espeak -s 160 -a 100 -g 4       #resultat commande
moc                                              #music on command
wordgrinder                                      #traitement de texte
pandoc                                           #convertiseur format texte
pandoc -f markdown -t html5 -o WEB.html INPUTTEXT.md -c STYLE.css
calcurse                                         #calendrier et todo-list
finch                                            #client de messagerie
mapscii                                          #carte
sudo nano /etc/motd                              #message de bienvenue ssh
setxkbmap fr                                     #clavier azerty
setxkbmap us
loadkeys fr                                      #sans serveur X sur la machine
loadkeys us
dpkg-reconfigure tzdata                          #définir l heure
timedatectl list-timezones                       #définir l heure systemd
timedatectl set-timezone 'COUNTRY'

sudo nano /etc/default/grub
ajouter vga=791 a GRUB_CMDLINE_LINUX       #tty avec une meilleure resolution

sudo aptitude -u                                 #gestion interactive des paquets
hd                                               #lecteur hexadecimal avec trad
vboxmanage startvm NOM_DE_LA_MACHINE_VIRTUELLE   #demarrer virtualbox via une console
mount -t vboxsf NOM_VIRTUALBOX /CHEMIN_MONTAGE   #partage de dossier
sudo mount -o loop IMAGE.iso /media/iso/         #monter une iso
genisoimage -r -v -J -o /tmp/IMAGE.iso /REP      #creer une image ISO

gpm                                              #souris en tty
sudo nano /etc/gpm.conf
device=/dev/input/mice
responsiveness=
repeat_type=ms3
type=autops2#ou ps2 ou imps2 voir gpm -t help
append=""
sample_rate=

/etc/init.d/gpm restart
