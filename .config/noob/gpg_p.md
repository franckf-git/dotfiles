# gpg

gpg --gen-key                            #générer une nouvelle clé
gpg --gen-revoke ID_USER                 #générer une clé de révocation pour ID_USER
gpg --edit-key ID_USER                   #éditer la clé de manière interactive
gpg -o FICHIER --export                  #exporter toutes les clés vers fichier
gpg --import FICHIER                     #importer toutes les clés depuis fichier
gpg --send-keys ID_USER                  #envoyer la clé de ID_USER vers le serveur
gpg --recv-keys ID_USER                  #recevoir la clé de ID_USER du serveur de clés
gpg --list-keys ID_USER                  #afficher la liste des clés de ID_USER
gpg --list-sigs ID_USER                  #afficher la liste des signatures de ID_USER
gpg --check-sigs ID_USER                 #vérifier la signature de ID_USER
gpg --fingerprint ID_USER                #vérifier l empreinte de ID_USER
gpg --refresh-keys                       #mettre à jour le porte-clé local

gpg -a -s FICHIER.asc                            #signer fichier dans un fichier
gpg --armor --sign FICHIER                       # , ,
gpg --clearsign FICHIER                          #signer un fichier en clair
gpg --clearsign FICHIER | mail mail@mail.com     #envoyer un message signé en clair
gpg --clearsign --not-dash-escaped FICHIER       #signer en clair un fichier
gpg --verify FICHIER                             #vérifier fichier signé en texte clair
gpg -o FICHIER.sig -b FICHIER                    #créer une signature détachée
gpg -o FICHIER.sig --detach-sig FICHIER          # , ,
gpg --verify FICHIER.sig FICHIER                 #vérifier un fichier avec fichier.sig
gpg -o FICHIER_CHIFFRE.gpg -r NOM -e FICHIER     #chiffrement par clé publique vers binaire
gpg -o FICHIER_CHIFFRE.gpg --recipient NOM --encrypt FICHIER    # , ,
gpg -o FICHIER_CHIFFRE.asc -a -r NOM -e FICHIER  #chiffrement par clé publique vers ASCII
gpg -o FICHIER_CHIFFRE.gpg -c FICHIER            #chiffrement symétrique vers .gpg 
gpg -o FICHIER_CHIFFRE.gpg --symmetric FICHIER   # , ,
gpg -o FICHIER_CHIFFRE.asc -a -c FICHIER         #chiffrement symétrique vers ASCII
gpg -o FICHIER -d FICHIER_CHIFFRE.gpg -r NOM     #déchiffrement
gpg -o FICHIER --decrypt FICHIER_CHIFFRE.gpg     # , ,
