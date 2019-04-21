# .bashrc

######################################################
# Source global definitions
######################################################

# Get the aliases and functions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

######################################################
# Optimize Configuration
######################################################

# display prompt
PS1="\[\e[1;31m\]| > | \A | \W | \\$\[\e[m\] "

# Get the environnement variables
. /home/$USER/.config/scripts/profile

# Get the aliases and functions for the work
if [ -f /home/$USER/.config/scripts/bashrcwork ]; then
  . /home/$USER/.config/scripts/bashrcwork
fi

# Get the parsonnal aliases and functions
. /home/$USER/.config/scripts/aliasrc
