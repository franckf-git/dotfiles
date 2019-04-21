# PS1

export PS1="\\[\e[1;31m\]\$\[\e[1;31m\]>\[\e[m\]\A\[\e[34m\][\[\e[m\]\u\[\e[34m\]@\[\e[m\]\h\[\e[34m\]]\[\e[m\]\[\e[1;31m\]-\[\e[m\]\[\e[34m\][\[\e[m\]\W\[\e[34m\]]\[\e[m\]\[\e[1;31m\]:\[\e[m\] "

\u : nom de l utilisateur
\h : nom de la machine
\W : nom du dossier courant
\$ : affiche $ pour un utilisateur et # pour root
\w : chemin complet du répertoire de travail
\d : date format texte ("sam. janv. 31")
\A : heure format 24h sans secondes
\t : heure format 24h avec les secondes
\T : heure format 12h avec les secondes
\@ : heure format 12H sans secondes
\D{%d-%m-%Y %H:%M:%S%z} : Date et heure
\j : nombre de tache en cours dans le terminal
\# : le numéro de la commande
\v : version de bash
\n : nouvelle ligne

# Formatting
Bold='\e[1m'
Dim='\e[2m'
Underlined='\e[4m'
Blink='\e[5m'
Reverse='\e[7m'
Hidden='\e[8m'
Reset='\e[0m'
Combined='\e[1;4;34m'

# Foreground text
Default='\e[39m'
Black='\e[30m'
Red='\e[31m'
Green='\e[32m'
Yellow='\e[33m'
Blue='\e[34m'
Magenta='\e[35m'
Cyan='\e[36m'
Light_gray='\e[37m'
Dark_gray='\e[90m'
Light_red='\e[91m'
Light_green='\e[92m'
Light_yellow='\e[93m'
Light_blue='\e[94m'
Light_magenta='\e[95m'
Light_cyan='\e[96m'
White='\e[97m'

# Background
B_Default='\e[49m'
B_Black='\e[40m'
B_Red='\e[41m'
B_Green='\e[42m'
B_Yellow='\e[43m'
B_Blue='\e[44m'
B_Magenta='\e[45m'
B_Cyan='\e[46m'
B_Light_gray='\e[47m'
B_Dark_gray='\e[100m'
B_Light_red='\e[101m'
B_Light_green='\e[102m'
B_Light_yellow='\e[103m'
B_Light_blue='\e[104m'
B_Light_magenta='\e[105m'
B_Light_cyan='\e[106m'
B_White='\e[107m'

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White
