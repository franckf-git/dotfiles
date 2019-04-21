# streameditor

sed 'OPTION/PATTERN1/PATTERN2/OPTION'
-i        #ecriture dans le fichier
-e        #script
-r        #regex etendu

> options

d         #delete ligne
p         #print ligne
s         #sustitution caractere dans une ligne
g         #global
w         #write ligne
I         #ignore casse sensitive
a         #ajout de texte apres la ligne selectionne
i         #insert de texte avant la ligne selectionne
c         #echange entre deux lignes
:         #label
=         #line_number
b         #branch_unconditional
D         #pattern_ltrunc(line+nl)_top/cycle
G         #pattern+=nl+hold
h         #hold=pattern
H         #hold+=nl+pattern
l         #pattern_list
n         #pattern_flush=nextline_continue
N         #pattern+=nl+nextline
P         #pattern_first_line_print
q         #flush_quit
r         #append_file_to_stdout_after_flush
t         #branch_on_substitute
x         #swap_pattern_and_hold
y         #transform_chars

sed -e '4d; 7d' FICHIER.txt                   #supprimer ligne 4 et 7
sed '4,7 d' FICHIER.txt                       #supprimer ligne 4 a 7
sed '4,+5d' FICHIER.txt                       #supprimer ligne 4 et les 5 suivantes
sed '2,5!d' FICHIER.txt                       #sauf ligne 2 à 5
sed '/regex/ d' FICHIER.txt                   #supprimer motif
sed -i -e "s/MOTIF/SUBSTITUT/g" FICHIER.txt   #substitution toutes occurences
sed -e 's/REGEX/SUBT&SUBT/g' FICHIER.txt      #avec rappel regex
sed 's/\(.*)\)\(.*-\)\(.*$\)/SUBT \1 SUBT \2 SUBT \3/'          #avec insertion
sed -e 's/\(.*\) \(.*\) \(.*\)/INS \1-\2 INS \3/' MYFILE.txt    #avec insertion exemple
sed 's:/CHEMIN:/CHEMIN:g'                     #separateur :
sed '10s/MOTIF/SUBSTITUT/g'                   #remplacement à la ligne 10

> exemples

sed '/^$/d'                                   #eliminer les lignes vides
sed -i "s/<font color=\"#[0-9A-Za-z]{6}\">//g" FICHIER   #remplacement d une expression
sed -i 's/$/<br>/' FICHIER                    #rajouter en fin de ligne
sed 'y/aâàéeèêëîïôöùûü/aaaeeeeeiioouuu/ y/aÂeÈÊËÎÏÔÖÙÛÜ/AAEEEEIIOOUUU/' FICHIER.txt        #translitteration
sed -i -e 's/^#\(.*\)/\\033[0;35m#\1 \\033[0m/g' FILE     #rajout de couleur sur les commentaires
sed -i "s/$var/r_str/g" FILE_name             #une variable de boucle
sed -nE 's/.*(REGEX).*/\1/p'                  #ne retourne que les correspondances
sed -e 's/ONE/TWO/; s/BIS/TER/'               #using multiple sed
sed -n 'START/,/END/p' file                   #afficher un schema
sed 's/MOTIF/SUBST/w OUTPUT' FILE             #remplacement dans un autre fichier

> alternatives

tr '[a-z]' [A-Z] <FICHIER                                       #remplacement casse
iconv -f utf8 -t ascii//TRANSLIT < FICHIER.txt > NOACCENTS.txt  #translitteration
echo $_str | iconv -f utf8 -t ascii//TRANSLIT
