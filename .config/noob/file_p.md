# fichiers texte et binaire

wc FICHIER            #compte le nombre de lignes, de mots, d octets de fichier
cat FICHIERS          #concatene les fichiers
cat > FILE            #ecriture fichier rapide
tac FICHIERS          #cat inverse
more FICHIER          #Espace=page suivante, Entree=ligne suivante, u=remonter
less FICHIER          #navigation Left/Right/Up/Down/PageUp/PageDown
head -n x FICHIER     #affiche les x premieres lignes de fichier
tail -n x FICHIER     #affiche les x dernieres lignes de fichier
tail -f FICHIER       #affiche la derniere ligne de fichier
diff -y FILE1 FILE2   #affiche les differences entre deux fichiers texte
diff -u FILE1 FILE2   #affiche les differences au format utilise par patch
comp FILE1 FILE2      #compare deux fichiers binaires
comp FILE1 FILE2 n N  #file1 a partir du nieme octet, et file2 a partir du Nieme
diff FILE1 FILE2      #donne les modifications a apporter a file1
diff -rus FILE1 FILE2
sdiff                 #différence cote à cote
awk 'NR==FNR {t[$0]++; next} !t[$0]' F2 F1      #afficher les lignes uniquement dans f1
awk '($1=="NOM") { print }' <FILE     #afficher les lignes contenant la colonne nom
awk '{ print $3,$4 }' <FILE           #afficher les colonnes 3 et 4
| awk -F'\t' '{ print $3 }'           #afficher separe par une tabulation
| cut -d" " -f1,3,11,12               #awk simple -d délimitation et -f champ
join FILE1 FILE2      #Fusionne les lignes de deux fichiers
nl -b a               #Permet de numéroter les lignes d un fichier
split -b 2000m FICHIER                #decouper un fichier en 2Go
cat x* >GROS_FICHIER                  #reassembler le fichier
cat FICHIER | gpg -c - > FICHIERCRYPTE          #crypter un fichier texte
cat FICHIERCRYPTE | gpg -             #decrypter un fichier texte
cat FIC.1 FIC.2 FIC.3 &gt; FIC.123    #Combine les trois fichiers en un seul
> FILE                                #creer un fichier vide
UUID=$(cat /proc/sys/kernel/random/uuid)    #generateur uuid
expand                #transforme les tabulations en espaces
unexpand              #transforme les espaces en tabulations
fold -w N             #retour à la ligne après N caractères
fmt                   #formatage paragraphe
jq                    #gestion de json
column -s C -t FIC    #affichage en colonnes selon le caractère C
apropos TERMES        #recherche dans toutes les man pages
clip < FILE           #copier dans le presse-passier
echo 'MESSAGE' | tr '[A-Za-z]' '[N-ZA-Mn-za-m]' #rot13
stat -c '%A %a %n'    #FICHIER permissions d un fichier en octal
for i in *.* ; do  j=$(awk -F. '{print "PREFIX"$1"SUFIX."$2}') ; mv "$i" "$j" ; done    #renommage en lot
sort << EOF           #tri rapide
sort -n -t ":" -k 3 /etc/password     #trier de facon numerique la troisieme colonne
