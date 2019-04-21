# navigation systeme

pwd                 #affiche le repertoire courant
cd REP              #se place dans le repertoire rep
cd                  #se place dans le repertoire de l utilisateur ~/
cd -                #se place dans l ancien repertoire cd $OLDPWD
cd ..               #se place dans le repertoire parent
cd $(mktemp -d)     #cree et se place dans un dossier temp
ls REP              #liste les fichiers du repertoire rep
ls -a               #ls avec les fichiers caches
ls -l               #ls avec les droits d acces et la taille
vdir                #equivaut a ls -lb
dirs -v             #affiche la liste des dossiers enregistrés
pushd FOLDER        #sauvegarde le dossier
popd                #reinitialise les dossiers enregistrés
COMMAND ~N          #utilise le dossier N enregistré
ln -s basic.file symboliclink.file    #lien vers le fichier basic (on peut changer les permissions)
ln basic.file hardlink.file       #lien vers les données du fichier basic (inode identique)

> système de fichiers virtuel
.local/share/gvfs-metadata/home
gio info FILEFOLDER | grep metadata
gio set FILEFOLDER 'metadata::comment' 'COMMENT'
gio set FILEFOLDER -t stringv metadata::emblems emblem-default
