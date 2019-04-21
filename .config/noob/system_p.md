# infos systemes

whoami                      #affiche le login de l utilisateur
who                         #affiche les utilisateurs connectes
id                          #afficher les uid, gid et groupes de l utilisateur
id USER                     #afficher les uid, gid et groupes de user (root only)
getent GROUP                #liste des appartenances aux groupes
usermod -a -G GROUP USER    #ajouter un groupe a un utilisateur
finger USER                 #affiche les informations de user
write USER                  #afficher un message sur le terminal de user
tty                         #afficher le nom de son terminal
lscpu                       #affiche les informations du processeur
su - sudo                   #passer en mode administrateur, super-utilisateur
dpkg -l                     #liste des paquets installes avec version
df -h                       #espace libre
df -hT                      #point de montage avec filesystem
cat /proc/version           #detail du noyau Linux utilise
tail -f /var/log/messages   #derniers logs
uname -r                    #version du noyau utilise
lsb_release -a              #version du systeme
dpkg -l | egrep linux-header                   #liste les noyaux installes
sudo tune2fs -l /dev/sda1 | grep created       #date d installation du systeme
printenv                    #afficher les variables d environnements
last | more                 #verifier les dernieres connexions
sudo tail -n 20 /var/log/auth.log              #verifier les dernieres connexions
w                           #qui est connecte
head -n 20 /var/mail/USER   #debian you have new mail
nvidia-smi -q -g 0 -d UTILIZATION -l           #GPU
lm-sensors (sensors-detect)                    #CPU
hddtemp /dev/sda                               #HDD
smartctl -a /dev/sda                           #HDD
cat /sys/class/net/enp0s25/                    #infos interface reseau
sudo nano /etc/hostname     #renommer la Machine
hostnamectl set-hostname "HOSTNAME"
hostnamectl                 #afficher le nom de la machine
type COMMAND                #emplacement d une commande
vmstat                      #statistiques systeme
powertop                    #statistiques systeme
dmidecode                   #lit les info du bios
dmesg                       #affiche le buffer du noyau
set                         #liste variables d environnement
