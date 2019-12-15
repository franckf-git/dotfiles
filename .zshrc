# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/efydd/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
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

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
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

alias enterpod="podman start $(grep name package.json | cut -d'"' -f4) && podman exec --user=node --interactive --tty $(grep name package.json | cut -d'"' -f4) /bin/bash"

alias ll="ls -lash"
alias ddg="web_search duckduckgo"

alias backup="rsync --recursive --links --perms --times --owner --group --devices --specials --verbose --human-readable --copy-dirlinks --delete-before --stats --ignore-errors --exclude={"Vidéos/",".local/share/containers",".cache/",".local/share/gnome-boxes/"} /home/$USER /run/media/$USER/RSYNC/"

alias autogit="git commit -a -m '$(curl -sk http://whatthecommit.com/index.txt)' && git push"
alias gaa="git add --all"
alias gca="git commit -v -a"
alias gl="git pull"
alias glgga="git log --graph --decorate --all"
alias glgp="git log --stat -p"
alias glo="git log --oneline --decorate"
alias gm="git merge"
alias gpv="git push -v"
alias gss="git status -s"

feature () {
    case $1 in
          new)    sed -i 's/"version": ".*",/"version": "'"$3"'",/' package.json && \
                  git commit -am "ouverture feature $2 - $3" && \
                  git push origin master --tags && \
                  git checkout -b feature/"$2" master  ;;
          push)   git push -u origin feature/"$2"      ;;
          end)    git checkout master && \
                  git merge --no-ff feature/"$2" && \
                  git tag "$3" && \
                  git push origin master --tags && \
                  git branch -d feature/"$2" && \
                  git push origin :feature/"$2" ;;
          *) echo "usage: feature [new] BRANCH TAG or [push] BRANCH or [end] BRANCH TAG" ;;
    esac
}

hotfix () {
    case $1 in
          new)    sed -i 's/"version": ".*",/"version": "'"$3"'",/' package.json && \
                  git commit -am "ouverture hotfix $2 - $3" && \
                  git push origin master --tags && \
                  git checkout -b hotfix/"$2" master  ;;
          push)   git push -u origin hotfix/"$2"      ;;
          end)    git checkout master && \
                  git merge --no-ff hotfix/"$2" && \
                  git tag "$3" && \
                  git push origin master --tags && \
                  git branch -d hotfix/"$2" && \
                  git push origin :hotfix/"$2" ;;
          *) echo "usage: hotfix [new] BRANCH TAG or [push] BRANCH or [end] BRANCH TAG" ;;
    esac
}
