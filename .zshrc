# .zshrc

######################################################
# Oh my zsh configuration
######################################################

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.config/oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME_RANDOM_CANDIDATES=(
"agnoster"
"bira"
"bureau"
"dieter"
"funky"
"gnzh"
"wezm"
)

# powerlevel9k config for prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host time dir vcs newline user)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_HOST_LOCAL_BACKGROUND='deepskyblue4'
POWERLEVEL9K_HOST_LOCAL_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='deepskyblue3'
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_DIR_HOME_BACKGROUND='deepskyblue4'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='deepskyblue4'
POWERLEVEL9K_DIR_ETC_BACKGROUND='deepskyblue4'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='deepskyblue4'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='deepskyblue4'
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='black'

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
colored-man-pages
git
git-extras
systemadmin
web-search
zsh-autosuggestions
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

######################################################
# Optimize Configuration
######################################################

# Get the environnement variables
. /home/$USER/.config/scripts/profile

# Get the aliases and functions for the work
if [ -f /home/$USER/.config/scripts/bashrcwork ]; then
  . /home/$USER/.config/scripts/bashrcwork
fi

# Get the parsonnal aliases and functions
. /home/$USER/.config/scripts/aliasrc
