# Gestion des paquets openSUSE

zypper install PACKAGE      #installe un paquet (et les dépendances, si nécessaire)
zypper remove PACKAGE       #désinstalle un paquet (et gère les dépendances liées)
zypper search PACKAGE       #recherche un paquet sans être sensible à la casse
zypper info PACKAGE         #donne les informations sur le paquet concerné
zypper list-updates         #liste les mises à jour disponibles
zypper update               #met à jour tous les programmes installés
zypper dist-upgrade         #mise à jour vers une version de distribution plus récente
zypper ps                   #lister les processus utilisant des fichiers supprimés
zypper refresh              #rafraichissement des méta-données de tous les dépôts
yast                        #outil magique
