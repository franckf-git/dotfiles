# recherche

locate MOTIF                       #recherche des fichiers
updatedb                           #mettre a jour la base de donnees de locate
find REPERTOIRE options            #recherche correspondant aux options dans chemin
find -name MOTIF                   #recherche sur le nom du fichier
find -type f/d/l                   #par type où f=fichier, d=repertoire et l=lien
find *** -exec CMD                 #execute la commande cmd a tous les fichiers trouves
find ./ -depth -name "* *"  -exec rename 's/ /_/g' "{}" \;                             #remplacer espace par _ dans les noms
find /home/ -name *._* -exec rm {} \;               #nettoyage
find . -name "*.zip" -exec unzip -o {} \;           #nettoyage
find /DOSSIER_ORIGINE/* -mtime 0 -type d -exec ls -lht {} \;                           #rechercher les dossiers modifies dans les dernieres 24 heures et lister leurs contenus
find / -iname cAsSe.H              #recherche sur le nom du fichier sans casse
find / -iname "*.pid"              #recherche sur l extension
find / -iname log -type d          #recherche de dossier
| grep -v EXPRESSION               #a l exclusion de
| grep -i EXPRESSION               #ignorer la casse
| grep -c EXPRESSION               #compter (= wc -l)
| grep -e REGEXP                   #regexp
grep -o                            #affiche que le mot recherché
grep EXPRESSION FILE               #recherche dans fichier (pas de cat)
zgrep EXPRESSION FILE.gz           #recherche dans fichier gz
find / -type f -exec grep -H TEXTE {} \; >result                                       #recherche d un texte dans tous les repertoires et ecriture dans un fichier
grep -R "TEXTE" --exclude="resultat.log" /tmp >> /tmp/resultat.log
find . | xargs grep 'TEXTE' -sl    #recherche d un texte dans les fichiers avec nom
grep -lR "TEXTE" /REPERTOIRE       #recherche expression avec retour du fichier
find -type f | xargs grep EXPRESSION
find /CHEMIN/ -name "*" -exec mv {} /DEST/ \;       #sortir les fichiers des dossiers
