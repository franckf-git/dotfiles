# Conditions bash

test OPTION FICHIER   #verification
   -s                 #fichier non vide
   -f                 #fichier ordinaire
   -d                 #fichier répertoire
   -e                 #fichier existe

test CHAINE1-NB1 OPTION CHAINE2-NB2   #comparaison
   =                  #chaîne1 identique à chaîne2
   !=                 #chaîne1 différente de chaîne2
   -eq                #nb1 égal à nb2 (equal)
   -ne                #nb1 différent de nb2 (non equal)
   -lt                #nb1 inférieur à nb2 (less than)
   -le                #nb1 inférieur ou égal à nb2 (less or equal)
   -gt                #nb1 supérieur à nb2 (greater than)
   -ge                #nb1 supérieur ou égal à nb2 (greater or equal)
Comparaison arithmétique (( ... ))
>             Plus grand que
>=            Plus grand que ou égal à
<             Plus petit que
<=            Plus petit que ou égal à

[ -a FICHIER ]                 existe et est un fichier
[ -e FICHIER ]
[ -f FICHIER ]                 existe et est un fichier normal
[ -b BLOCKSPECIALFILE ]        existe et est de type bloc spécial
[ -c CHARACTERSPECIALFILE ]    existe et est de type caractère spécial
[ -d DOSSIER ]                 existe et est un dossier
[ -h LIEN_SYMBOLIQUE ]         existe et est un lien symbolique
[ -l LIEN_SYMBOLIQUE ]
[ -r FICHIER_LISIBLE ]         existe et est lisible par le script
[ -s FICHIER_NON_VIDE ]        existe et possède une taille non nulle
[ -w FICHIER_WRITABLE ]        existe et le script peut y écrire
[ -x EXECUTABLE ]              existe et est exécutable depuis le script
[ -n STRING_NON_VIDE ]
[ -z STRING_VIDE ]

if [ CONDITION1 ]                       #conditionnel
then
  COMMANDE1
  COMMANDE2
  COMMANDE3
elif [ CONDITION2 ]
then
  COMMANDE4
  COMMANDE5
else
  COMMANDE_PAR_DEFAUT
fi

if [ -x "$NOM_FICHIER" ]; then          #conditionnel sur une ligne

if [ -n "$1" ]                          #condition dossier
then
  REPERTOIRE=$1     # Si nom du répertoire donné en argument au script...
else
  REPERTOIRE=$PWD   # Sinon, utilise le répertoire courant.
fi


