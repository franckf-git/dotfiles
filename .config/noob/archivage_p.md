# archivage

#.tar.gz   temps de compression rapide      taux de compression faible  # z
#.tar.bz2  temps de compression moyen       taux de compression moyen   # j
#.tar.xz   temps de compression lent        taux de compression fort    # J

> creation archive                > desarchivage
tar -cvjf ARCHIVE.tar.bz2 REP       tar -xvjf ARCHIVE.tar.bz2 REP
tar -cvzf ARCHIVE.tar.gz REP        tar -xvzf ARCHIVE.tar.gz REP
bzip2 FICHIERS                      bunzip2
-                                   unrar x
gzip FICHIERS                       gunzip
tar -cvf ARCHIVE.tar FICHIERS       tar xvf
zip -r ARCHIVE.zip FICHIERS         unzip ARCHIVE.zip -d REP
compress FICHIERS                   uncompress
7z a FICHIERS                       7z x
xz -z REP                           unxz
bzcat                               #cat pour fichier .bz2
zcat                                #cat pour fichier .gz
tar -tvjf DOSSIER/ELEMENT .         #lecture tar.bz2
tar -c --listed-incremental=data.snar    #tar incremental (-g)
tar --append -f FILE.tar /A_ARCHIVER     #rajouter des fichiers à une archive
