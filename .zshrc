# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/efydd/.oh-my-zsh"

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
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

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

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias backup='rsync --recursive --links --perms --times --owner --group --devices --specials --verbose --human-readable --copy-dirlinks --delete-before --stats --ignore-errors --exclude={"Vidéos/",".local/share/containers",".cache/",".local/share/gnome-boxes/"} /home/efydd /run/media/efydd/RSYNC/'
alias autogit='git commit -a -m "$(curl -sk http://whatthecommit.com/index.txt)" && git push'
alias devpod='podman start dev && podman exec --user=root --interactive --tty dev /bin/bash'
