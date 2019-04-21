# gestion processus

ps                           #afficher les processus de l utilisateur
ps ax                        #afficher tous les processus
ps aux                       #afficher tous les processus avec les utilisateurs
ps aux | sort -nk +4 | tail  #les 10 processus qui utilisent le plus de mémoire
strace -p PID -e trace=all   #lister les appels systeme
pidof NOMDUPROGRAMME         #retrouver le pid
whereis NOMDUPROGRAMME       #dossier programme
pstree                       #afficher les processus dans une arborescence
top                          #afficher un tableau de bord des processus
tload                        #charge cpu graphique
dstat                        #rapide aperçu de ce qui se passe dans le système
lsof +L1                     #processus utilisant des fichiers
lsof /FILE                   #processus utilisant ce fichier
lsof -p PID                  #tous les fichiers ouverts par un processus
lsof -u USER                 #fichiers ouverts par un utilisateur
lsof -n | grep deleted       #fichier supprimé mais en cours d écriture
systemd-analyze blame        #services demarres pardefaut selon leur temps de lancement

service NOMDUSERVICE start/stop/restart/reload   #gestion service init.d
systemctl start/stop/restart/reload/enable/disable NOMDUSERVICE   #systemd
systemctl list-unit-files | grep enabled         #lister tous les services activés
systemctl --failed                               #lister les services echoues
systemctl status NOMDUSERVICE.service            #etat du service

kill signal PID              #tuer un processus en utilisant son pid
pkill signal NOM             #tuer un processus en utilisant le nom du programme
kill -l                      #liste des signaux de kill

> signaux utilises par kill/pkill
-1 (HUP)                    #recharger le fichier de configuration du processus
-2 (INT)                    #interrompre le processus
-3 (QUIT)                   #quitter le processus
-9 (KILL)                   #tuer le processus (a eviter, tenter -15 avant)
-15 (TERM)                  #terminer le processus proprement
-18 (STOP)                  #geler le processus
-20 (CONT)                  #reprendre l execution d un processus gele

killall NOMDUPROGRAMME       #tuer tous les instances du programme
xkill                        #tuer une fenetre graphique
kill -USR1 CMD               #suivre une progression
nice -n 10 NOMDUPROGRAMME    #changement de priorité cpu

time COMMAND >/dev/null      #mesurer temps execution
watch -d COMMAND             #executer une commande periodiquement
watch -n 10 -d COMMAND       #executer une commande periodiquement tous les 10 sec
at now +5 minutes            #lancer un programme dans 5 min
at 14:17 11/15/10            #lancer un programme a une heure precise
echo 'COMMAND -ARGS'| at 3:40 monday
cat /etc/X11/default-display-manager             #afficher le gestionnaire de fenetre
sudo systemctl restart lightdm.service           #redemarrer le serveur xorg

jobs                         #liste les arrières plans &
fg %N                        #recupére le jobs N
bg %N                        #execute en arrière plan
[CRTL+Z]                     #stop en arrière plan
sudo pmap -x PID             #liste les processus dependants
cat /proc/PID/smaps
cat /proc/PID/status         #status d un processus
