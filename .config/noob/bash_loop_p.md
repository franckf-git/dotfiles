# Boucles bash

BOUCLE                                  #gestion de boucles
do
   if CONDITION
   then
       break                            #termine la boucle
>> ou
       continue    #provoque un saut jusqu à la prochaine itération de la boucle
   fi
done

for ((i=1;i<=n;i++))                    #boucle entre 1 et n
for i in {1..5} ; do echo $i ; done     #boucle entre 1 et 5
for i in *                              #application a tous
for i in `COMMAND`                      #au resultat de la commande
for FICHIER in $REPERTOIRE/*            #pour les fichiers d un repertoire

for i in '                              #boucle liste
...
...'
do
   COMMAND $i
done

for i in /PATH
do
echo $i
done

for i in "$@"
do
echo $i
done

for i in "VAR1 1BIS" "VAR2 2BIS" ...    #boucle avec 2 variables
do
   set -- $i
....COMMAND $1 ; COMMAND $2
done

while FONCTION                          #boucle si vrai
   do
       COMMANDE1 $CONDITION
done

while true                              #boucle infinie
   do
       COMMANDE1
done

while  [ CONDITION != ETAT ]            #boucle si vrai(espaces !)
   do
       COMMANDE1
done

until  [ CONDITION != ETAT ]            #boucle si faux(espaces !)
   do
       COMMANDE1
done

done | sort >> "$FICHIER_DE_SORTIE"     #log de boucle