# log

journalctl -p err -b                               #messages d erreurs
watch -n 1800 ps aux > $(date +%H%M).log           #log avec date
find /home -type f -mtime +7 -exec rm {} \;        #purger plus vieux que 7 jours
pastebinit                                         #utilitaire pastebin
pastebinit -l                                      #liste des sites d export
pastebinit -i FICHIER -a Untitled -b http://pastebin.com
history -d 000                                     #supprimer une ligne de history
history -c                                         #tout nettoyer
[CONTROL]r                                         #mode recherche [ENTER] ou [ECHAP]
!COM:p                            #affiche la dernière commande commençant par COM
COM !:1 !:3                       #reutilise les arguments 1 et 3 de la dernière
COM !211:1                        #reutilise l argument 1 de la commande 211
[ECHAP].                          #rappelle le dernier argument
!$
export HISTTIMEFORMAT='%F %T '                     #date des commandes
export HISTIGNORE='ls -l:pwd:history'              #ignorer certaines commandes
unset export HISTIGNORE                            #desactiver ignorance
export HISTCONTROL=ignoredups                      #ignorer duplicatats
unset HISTCONTROL                                  #desactiver ignorer duplicatats
export HISTSIZE=0                                  #desactiver history
dmesg -e                                           #message du kernel
