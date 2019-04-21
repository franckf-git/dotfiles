# .zshrc

######################################################
# Oh my zsh configuration
######################################################

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.config/oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"
ZSH_THEME_RANDOM_CANDIDATES=(
"agnoster"
"bira"
"bureau"
"dieter"
"funky"
"gnzh"
"wezm"
)

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
battery
catimg
colored-man-pages
colorize
command-not-found
dnf
git
git-extras
man
sublime
systemadmin
systemd
themes
web-search
zsh-autosuggestions
zsh-navigation-tools
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
