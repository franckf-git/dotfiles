# Gestion des paquets debian

apt update                                 #Mettre à jour la liste des paquets
apt upgrade                                #Installer les mises à jours
apt-get upgrade -s                         #passer en revue les paquets à mettre à jour
apt full-upgrade                           #Mettre à jour le système
apt install PACKAGE                        #Installer un paquet
apt install PACKAGE1 PACKAGE2              #Installer plusieurs paquets
apt install PACKAGE.deb                    #Installer un paquet .deb
apt install -t stretch-backports PACKAGE   #en modifiant les priorités
apt remove PACKAGE                         #Supprimer un paquet
apt autoremove                             #Supprimer les paquets inutilisés
apt purge PACKAGE                          #Supprimer les fichiers de configuration
apt edit-sources                           #Éditer le fichier sources.list
apt edit-sources deb-multimedia.list       #Éditer les fichiers dans sources.list.d
apt show PACKAGE                           #Trouver des informations sur un paquet
apt search TERME                           #Rechercher un paquet
apt list --installed                       #Lister les paquets installés
apt list --upgradeable                     #Lister les paquets prêts à être mis à jour
apt list --all-versions PACKAGE            #Lister toutes les versions d un paquet
apt -s install PACKAGE                     #Simuler l installation de paquets
apt -s full-upgrade                        #Simuler la mise à jour de paquets
apt-get source PACKAGE                     #telechargement des sources deb-src
apt-get autoremove                         #Nettoyage des paquets inutiles
dpkg-query -W | grep ~gpo                  #lister les blackports
checkrestart                               #redémarrer les services qui doivent l être
ar t PACKAGE.deb                           #lister le contenu d un paquet deb
ar x PACKAGE.deb                           #extraire le contenu d un paquet deb
dpkg -V                                    #vérifie tous les paquets installés
apt-listbugs list PACKAGE                  #obtenir la liste des bugs sur un paquet
reportbug                                  #report de bug
apt-cache showpkg PACKAGE                  #liste de toutes les versions disponibles
apt-mark hold PACKAGE                      #bloquer en version actuelle (pas d update)
apt-cache policy PACKAGE                   #montre le paquet et les versions disponibles
sudo aptitude install PACKAGE=VERSIONS     #Installer un paquet dans une version spécifique
apt-get install --no-install-recommends PACKAGE    #ne pas installer les paquets recommandés
