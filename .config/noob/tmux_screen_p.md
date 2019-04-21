# multi-fenetre terminal

> tmux

[CTRL+b] ,                #Renommer le terminal courant
[CTRL+b] "                #Split vertical du terminal
[CTRL+b] %                #Split horizontal du terminal
[CTRL+b] [SPACE]          #Passer à l'autre split
[CTRL+b] [ALT+flèches]    #Redimmensionner le panel
[CTRL+b] o                #Aller au panel suivant
[CTRL+b] q                #Afficher les numéros
[CTRL+b] [flèches]        #Aller au prochain panel
[CTRL+b] ;                #Basculer dans le dernier panel actif
[CTRL+b] !                #Créer un nouveau terminal
[CTRL+b] x                #Fermer le panel courant
[CTRL+b] c                #Créer un nouveau terminal
[CTRL+b] &                #Terminer le terminal actuel
[CTRL+b] n                #Aller au terminal suivant
[CTRL+b] p                #Aller au terminal précédent
[CTRL+b] w                #Afficher la liste des terminaux
[CTRL+b] 0-9              #Choisir terminal
[CTRL+b] d                #Détacher tmux
[CTRL+b] :                #Ouvrir l'invite de commande
[CTRL+b] (                #Aller à la session précédente
[CTRL+b] )                #Aller à la session suivante
[CTRL+b] s                #Lister les sessions disponibles
[CTRL+b] t                #Horloge
[CTRL+b] ?                #Liste de tous les raccourcis
[CTRL+b] {                #Déplacer le panel vers précédent
[CTRL+b] }                #Déplacer le panel vers suivant

> changer la clé d'ouverture en CTRL + A

nano ~/.tmux.conf
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix
set -g mouse on
set -g status-position bottom
set -g status-bg colour237
set -g status-fg colour137
set -g status-right-length 100
set -g status-left-length 70

> screen

screen -S NOM                #creer un terminal NOM [[CRTL+a d]] pour quitter
screen -dmS "NOM" COMMAND    #screen detache avec command
screen -r NOM                #revenir au terminal NOM ou numero
screen -x NOM                #syncro du terminal NOM
screen -ls                   #liste des terminaux
screen -X -S NOM kill        #kill NOM

[CTRL+a] |                #Split vertical du terminal
[CTRL+a] [SHIFT+s]        #Split horizontal du terminal
[CTRL+a] [TAB]            #Aller au panel suivant
[CTRL+a] c                #Créer un nouveau terminal
[CTRL+a] [SPACE]          #Aller au terminal suivant
[CTRL+a] [BACKSPACE]      #Aller au terminal précédent
[CTRL+a] "                #Afficher et sélectionner les terminaux
[CTRL+a] 0-9              #Choisir terminal
[CTRL+a] [SHIFT+x]        #Fermer le panel courant
[CTRL+a] \                #Tout fermer
[CTRL+a] p                #Aller au panel précedent
[CTRL+a] n                #Aller au panel suivant
