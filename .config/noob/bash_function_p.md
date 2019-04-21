# Fonctions bash

#! /bin/bash          #en debut de script
0                     #TRUE
1                     #FALSE
exit $?               #en fin de script
/usr/local/bin        #emplacement des scripts personnels
caller 0              #débogage si dans une fonction
echo -e '\E[37;44m'"\033[1mMESSAGE\033[0m"             #colorisation du code

TMOUT=SEC             #en début de script arret dans SEC secondes

set -x                #Activation du débogage
set +x                #Désactivation du débogage

sh -n SCRIPT          #vérifie les erreurs de syntaxe sans exécuter
sh -v SCRIPT          #affiche chaque commande avant de l exécuter
sh -nv SCRIPT         #permet une vérification verbeuse de la syntaxe
sh -x SCRIPT          #affiche le résultat abrégée de chaque commande

FONCTION()                              #creation de fonction
   {
       COMMANDE1
   }

FONCTION ()                             #appel de fonction
{
  if [ $CONDITION ]
  then
   return 0 # true
  else
   return 1 # false
  fi
}

(                                       #sous-shell dédié
VARIABLES
COMMANDE
...
exit
)

FONCTION ()                             #fonction
{
COMMANDE $1
...
}