# Variables et Arguments bash

read VARIABLE         #entree de données
read -p "Press enter to continue"               #pause
read -n 1 -s -r -p "Press any key to continue"
let "VARIABLE++"      #opérations arithmétiques
$(COMMANDE)           #variable venant d une commande
$VARIABLE             #reformatage la variable
"$VARIABLE"           #conserve les espaces et retour a la ligne
'$VARIABLE'           #interprétation littérale pas de variable
VARIABLE${1:-VALEUR}  #prend valeur par default si arg non defini
VARIABLE${1:MESSAGE DERREUR}   #affiche un message d erreur si arg non defini

VARIABLE1=`<FICHIER1`
>> plus rapide que
VARIABLE2=`cat FICHIER2`

./SCRIPT.sh ARGUMENT1 ARGUMENT2       #ajouter des aguments
$0                    #appeler le nom du script
$1                    #appeler l agument1
$2                    #appeler l agument2
MINPARAMS=            #declarer un nbr min
${10}                 #appeler l agument sup à 9
$*                    #tous les paramètres
$#                    #nbr de paramètres
${!#}                 #tout dernier paramètres
echo $?               #verification code erreur

LISTE="UN DEUX TROIS"                   #creation d une liste
TAB=( UN DEUX "TROIS" )                 #creation d un tableau
TAB=([0]=UN [1]=DEUX [2]="TROIS")
TAB[0]=ELEMENT1
TAB[1]=ELEMENT2
TAB[2]=ELEMENT3
TAB[${#TAB[*]}]="NOUVEL ELEMENT"        #ajouter un élément
LEN=${#TAB[*]}                          #compter les elements du tableau
echo ${TAB[2]}                          #afficher un élément
echo ${TAB[@]}                          #afficher tous les éléments
for i in ${!TAB[@]}; do COMMANDE done   #utiliser le tableau

echo "Voulez faire cela (Y/N)?"         #choix et interaction
read ENTREE
if [$ENTREE = "N"]
  then
    COMMAND
fi

COMMANDE <<EOF                          #document intégré macro
...
EOF

cat $NOMFICHIER |                       #lire et agir sur les lignes d un fichier
while read LIGNE
do
  ...
done

case "$VARIABLE" in                     #bloc conditionnel (if/then/else)
"$CONDITION1" ) COMMANDE... ;;
"$CONDITION2" ) COMMANDE... ;;
esac

> si un argument est manquant
E_SANSARGS=65
if [ -z "$1" ]
then
  echo "Usage: `basename $0` [ARGUMENT]"
  exit $E_SANSARGS
fi

(( a = NBR ))                #Initialise une valeur
(( a++ ))                    #Post-incrémente a
(( a-- ))                    #Post-décrémente a
(( ++a ))                    #Pre-incrémente a
(( --a ))                    #Pre-décrémente a

let "TOTAL = A *-+%/ B" ; echo $TOTAL     #entier
let "m += 15"                             #equiv. "m = m + 15"
echo "32.0 + 1.4" | bc                    #flottant