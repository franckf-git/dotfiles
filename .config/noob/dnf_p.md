# Gestion des paquets fedora

dnf repolist all                           #Lister les dépots disponibles
dnf install PACKAGE                        #Installer un paquet
dnf remove PACKAGE                         #Supprimer un paquet
dnf autoremove PACKAGE                     #Supprimer un paquet proprement
dnf erase PACKAGE                          #Supprimer les fichiers de configuration
dnf update PACKAGE                         #Mettre à jour un paquet
dnf check-update                           #Verifier les mises à jour disponibles
dnf check                                  #identifier les problèmes dans packagedb
dnf deplist                                #Liste les dépendances du paquet
dnf upgrade                                #Mettre à jour tous les paquets
dnf --exclude=PAQUET update                #exclure un paquet d une mise à jour
dnf downgrade PAQUET                       #Rétrograder un paquet
dnf grouplist                              #Liste les groupes de paquets disponibles
dnf grouplist hidden                       #tous les groupes
dnf groupinstall "GROUP NAME"              #Installer un groupe de paquets
dnf groupinfo "GROUP NAME"                 #Lister les paquets d un groupe
dnf groupremove "GROUP NAME"               #Supprimer un groupe de paquets
dnf search PACKAGE                         #Rechercher un paquet
dnf provides /usr/bin/FICHIER              #Rechercher un paquet contenant un fichier
dnf download PACKAGE                       #Telecharge sans installer
dnf list available | more                  #Liste les paquets disponibles
dnf list installed                         #Liste les paquets installés
dnf install --enablerepo=DEPOT PACKAGE     #Installer un paquet depuis un dépot
dnf --enablerepo=NOMDEPOT update           #Activer un dépôt pendant la mise à jour
dnf --disablerepo=NOMDEPOT update          #Désactiver un dépôt pendant la mise à jour
dnf provides COMMAND                       #Connaitre le paquet associé
dnf provides CHEMIN/FICHIER                #Connaitre le paquet associé
dnf info PACKAGE                           #Trouver des informations sur un paquet
dnf makecache                              #Créer un cache manuel
dnf clean all                              #Supprimer le cache
dnf history                                #Historique des installations
dnf history info ID                        #Details sur une installation
dnf autoremove                             #Supprimer les paquets inutilisés
dnf distro-sync                            #Synchronise dans la dernière version stable
dnf reinstall PACKAGE                      #Reinstaller un paquet
dnf upgrade-to PACKAGE-VERSION.fcNUM       #Installer un paquet dans une version
dnf upgrade-minimal                        #MAJ les paquets qui affectent votre système
dnf copr enable USER/PROJECT               #Installer un projet hors dépot
dnf help                                   #Aide
dnf mark                                   #marquer paquets installés par utilisateur
dnf shell                                  #exécute un interpréteur DNF interactif
dnf updateinfo                             #affiche des avertissements sur les paquets
dnf builddep                               #Install build dependencies for package
dnf config-manager                         #Gestion de la config et des dépôts dnf
dnf debug-dump                             #déverse les infos des rpm dans le fichier
dnf debug-restore                          #restaure les paquets enreg dans débuggage
dnf debuginfo-install                      #installe les paquets debuginfo
dnf needs-restarting                       #liste les binaires qui besion redémarrage
dnf playground                             #Interagit avec le dépôt Playground
dnf repoclosure                            #Affiche liste de dépendances non résolues
dnf repograph                              #Sortie d un graphe de dépendance
dnf repomanage                             #Gère un dossier de paquets rpm
dnf reposync                               #télécharge tous les paquets depuis distant
dnf info-security                          #affiche le détails des modifications
dnf check-update --security                #affiche les paquets vitaux
dnf check-update --sec-severity {Critical,Important,Moderate,Low,None}
rpm -Va                                    #verification de l intégrité des paquets

> Limiter la bande passante de dnf

sudo nano /etc/dnf/dnf.conf
throttle=20k
max_connections=1

> Désactiver les deltarpm

sudo nano /etc/dnf/dnf.conf
deltarpm=0

> Utiliser le miroir le plus rapide

sudo nano /etc/dnf/dnf.conf
fastestmirror=true

> Nombre de kernel disponibles au démarrage

sudo nano /etc/dnf/dnf.conf
installonly_limit=2

> Changement de version

sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=NEWNUM
sudo dnf system-upgrade reboot

> Détails des mirroirs

cat /etc/yum.repos.d/fedora.repo

> Dépots supplémentaires fedora

sudo dnf install fedora-workstation-repositories
