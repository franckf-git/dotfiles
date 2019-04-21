# interaction entre les commandes

COMMAND &             #commande en arriere plan
nohup COMMANDE        #commande en arriere plan et hors console
bg COMMANDE           #commande en arriere plan
fg COMMANDE           #Reprend la main
'COMMAND'             #sans interpretation bash echo > $exemple
"COMMAND"             #interprete les cmd echo > EXEMPLE
COMMAND && COMMAND    #execute si la premiere est un success
COMMAND ; COMMAND     #execute toujours la seconde commande
COMMAND || COMMAND    #execute si la premiere est un echec
COMMAND !(*.FILE)     #execute la commande sauf pour les file
COMMAND | COMMAND     #la seconde commande execute le resultat de la premiere
(COMMAND1 && COMMAND2) || (COMMAND3 && COMMAND4)   #separe les commandes
TEST\(1\).txt         #pour les caracteres speciaux
COMMAND >> FILE.log   #rediriger les resultats a la fin d un fichier
COMMAND 2>> FILE.log  #rediriger les erreurs a la fin d un fichier
COMMAND >> FILE.log 2>&1   #rediriger les resultats et les erreurs
COMMANDE > FILE.log 2>&1   #rediriger à la fois la sortie standard et l erreur standard
COMMANDE < FILE.log        #rediriger l entrée standard de la commande vers le fichier
COMMANDE << DELIMITEUR     #rediriger l entrée standard de la commande vers les lignes
DELIMITEUR                 #+ suivantes jusqu à ce que le délimiteur soit rencontré
COMMAND && echo "OK" || echo "FAIL"       #exemples
COMMAND | COMMAND -   # - recupere la sortie de commande
VARIABLE=$(COMMAND)   #commande dans une variable
(REGEX)(REGEX)        #peut etre appeler avec $1,$2...
sudo !!               #exectue la derniere commande en root
xterm -geometry 170x60 -sb -rightbar -hold -e /home/SCRIPTS.sh                        #script auto dans fenetre pour logs
$_                    #le dernier argument final de la dernière commande
$?                    #code de sortie d une commande
diff <(ls -l) <(ls -al)

grep            #filtrer des donnees
sort            #trier les lignes
wc              #compter le nombre de lignes
uniq            #supprimer les doublons
cut             #couper une partie du fichier
sed             #remplacement de caracteres
du -ah          #taille de dossier
sleep           #pause dans l execution
usleep          #sleep en micro-secondes
ls ti*          #tito titi
ls ti?i         #timi titi
ls t[ia]*       #titi tata titi
ls t[a-m]*      #tata tete tme
