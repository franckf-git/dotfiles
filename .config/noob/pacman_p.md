# Gestion des paquets archlinux

pacman -Q                   #Affiche tous les paquets installés avec pacman
pacman -S PACKAGE           #Télécharge et installe
pacman -R PACKAGE           #Supprime le(s) paquet(s) spécifié(s) en argument
pacman -U PACKAGE           #Installe un paquet (préalablement téléchargé)
pacman -Sy                  #Actualise la liste en cache des dépôts
pacman -Syu                 #Met à jour tous les paquets
pacman -Sg                  #Affiche tous les groupes de paquets disponibles
pacman -Sc                  #Supprime tous les paquets non installés du cache
pacman -Si PACKAGE          #Donne les informations du paquet en argument
pacman -Ss PACKAGE          #Cherche les paquets correspondant au nom en argument
pacman -Rs PACKAGE          #Supprime paquet et dépendances inutiles
pacman -Rc PACKAGE          #Supprime paquet et dépendances

> Acces aux paquets AUR

sudo vi /etc/pacman.conf
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
pacman -S yaourt
