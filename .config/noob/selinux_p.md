# selinux

sudo apt install selinux-basics selinux-policy-default
sudo apt install setools setools-gui selinux-policy-devel setools-devel
selinux-activate 
check-selinux-installation
touch /.autorelabel && systemctl reboot #réétiquetage du système de fichiers

> Enforcing

sudo sed -i 's/SELINUX=.*/SELINUX=enforcing/' /etc/selinux/config

> Permissive

sudo sed -i 's/SELINUX=.*/SELINUX=permissive/' /etc/selinux/config
sudo systemctl restart selinux-basics.service 

sediff                       #SELinux policy difference tool
sedta                        #domain transition analysis for SELinux policies
seinfo                       #SELinux policy information tool
seinfoflow                   #information flow analysis for SELinux policies
sesearch                     #SELinux policy query tool
sestatus                     #afficher le status actuel de SELinux
getenforce                   #obtenir le mode SELinux courant de votre machine Enforcing par defaut
sesearch                     #effectuer une recherche dans la politique actuellement configurée pour votre machine
getsebool                    #obtenir des informations sur les booléens
matchpathcon                 #afficher le contexte que devrait posséder un fichier
apol                         #gui
setenforce                   #modifier le mode SELinux de votre machine (0,1) jusqu au prochain démarrage
setsebool                    #modifier la valeur d un booléen
restorecon                   #restaurer un contexte en fonction de la politique courante
restorecon -R -v /FOLDER     #reétiquettage du dossier
chcon                        #modifier le contexte SELinux d un fichier
semanage                     #gérer les politiques SELinux
semanage port -l | grep ssh  #changer le port ssh
semanage port -a -t ssh_port_t -p tcp 2222

ls -Z                        #contexte de sécurité fichiers
ps axZ                       #contexte de sécurité processus
#utilisateur:rôle:type:niveau        contexte SELinux

> logs

sudo apt install setroubleshoot-server
sealert -a /var/log/audit/audit.log | less
