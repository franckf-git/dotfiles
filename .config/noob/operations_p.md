# operations sur les fichiers

mv SOURCE CIBLE          #deplace le fichier source vers cible
cp SOURCE CIBLE          #copie le fichier source vers cible
cp -R SOURCE CIBLE       #copie le repertoire source vers cible
ln SOURCE LIEN           #creer un lien fort de source vers lien (inode identique)
ln -s SOURCE LIEN        #creer un lien symbolique de source vers lien
touch FILE               #creer le fichier file ou met a jour sa date de modification
mkdir REP                #creer un repertoire rep
mkdir -p REP/REP2        #mkdir avec creation des dossiers parents si necessaire
rm FILE                  #supprime le fichier file
rm -f FILE               #supprime le fichier file protege en ecriture
rmdir REP                #supprimer un repertoire vide
rm -R REP                #supprime un repertoire
du -hs FILEREP           #affiche la taille du fichier file ou du repertoire
sudo du -shxc /*
stat                     #details sur un fichier ou dossier
file FILE1 FILE2         #affiche le type de fichier
mkdir FOLDER ; cd $_     #creer et entrer dans un dossier
echo "!!" > SCRIPT.sh    #creer un script de la derniere commande
<(COMMAND)               #traiter la sortie de la commande comme un fichier (ex. diff)
mv FILE.{EXT1,EXT2} DIR  #déplace les deux fichiers avec une ext différente
cp FILE{,.bak}           #copie de sauvegarde
mkdir -p FOLD-{a,b,c}/SUBFOLD-{1,2,3}    #aborescence de répertoire avec toutes les combinaisons
sudo nano /etc/sysctl.d/inotify.conf     #modifier le temps de rafraichissement des dossiers
# Monitor directories for change
fs.inotify.max_user_watches = 524288
