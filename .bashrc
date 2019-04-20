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

# Get the aliases and functions for the work
if [ -f ~/.bashrcwork ]; then
  . ~/.bashrcwork
fi

# Get the parsonnal aliases and functions
if [ -f ~/.aliasrc ]; then
  . ~/.aliasrc
fi