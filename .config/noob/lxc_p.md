# lxc

sudo apt install lxc lxc-templates

> Paquets optionnels

sudo apt bridge-utils libvirt-bin debootstrap
lxc-checkconfig                                    #vérification de la configuration

lxc-create -n NOMDUCONTENEUR -t TYPEDUCONTENEUR    #creer un conteneur
lxc-ls --active                                    #liste des connecteurs actifs
lxc-ls --fancy
lxc-start -n NOMDUCONTENEUR                        #Démarrer un conteneur
lxc-console -n NOMDUCONTENEUR                      #Se connecter à un conteneur démarré
lxc-info -n NOMDUCONTENEUR                         #Avoir des infos sur le conteneur
lxc-stop -n NOMDUCONTENEUR                         #Arrêter un conteneur
lxc-halt -n NOMDUCONTENEUR                         #Arrêter un conteneur proprement
lxc-clone NOM NOUVEAUNOM                           #Cloner un conteneur
lxc-snapshot -n NOM                                #Instantanés de conteneurs
lxc-snapshot -n NOM -L                             #Pour voir les snapshots réalisés
lxc-snapshot -n NOM -r NOMDUSNAPSHOT               #Pour restaurer un snapshot 
lxc-snapshot -n NOM -d NOMDUSNAPSHOT               #Pour supprimer un snapshot
lxc-destroy -n NOM                                 #Supprimer un conteneur

nano /home/lxc/NOMDUCONTENEUR/config
lxc.network.type=veth               #utilisation d un bridge
lxc.network.name = veth0            #nom de l interface réseau dans le conteneur LXC
lxc.network.veth.pair = veth-test   #nom de l interface sur l hôte
lxc.network.flags = up              #active l interface
lxc.network.link = br0              #fait le lien sur le bridge br0 de l hôte
lxc.network.ipv4 = IPCONTENEUR/24   #adresse IPv4 du conteneur
lxc.network.ipv4.gateway = IPCONTENEUR.254                  #passerelle conteneur
lxc.mount.entry=/MONTAGE/ CHEMIN/CONTENEUR none rw,bind 0 0 #Points de montage
