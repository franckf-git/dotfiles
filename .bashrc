# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias backup="rsync --recursive --links --perms --times --owner --group --devices --specials --verbose --human-readable --copy-dirlinks --delete-before --stats --ignore-errors --exclude={"Vidéos/",".local/share/containers",".cache/",".var/app/org.gnome.Boxes/",".local/share/gnome-boxes/"} /home/$USER /run/media/$USER/BACKUP/"

alias vimdiff='nvim -d'
alias neovim='nvim -p'
alias vim='nvim -p'
alias vi='nvim -p'

alias ll="ls -lash"
alias ddg="web_search duckduckgo"
alias www="w3m https://franckf.gitlab.io/startpage/"

alias upg="sudo dnf upgrade-minimal --refresh && flatpak update -y"
alias upgf="sudo dnf upgrade --refresh && flatpak update -y"

# clean rename
renameclean () {
for i in $(ls)
  do
  mv $i $(echo $i | iconv --from-code=UTF-8 --to-code=ASCII//TRANSLIT)
done

prename 'y/A-Z\ /a-z-/' *
prename 's/\[//g' *
prename 's/[^a-z0-9-.]/-/g' *
prename 's/ajia-no-scantrad-//' *
prename 's/ajia-rs--//' *
prename 's/koneko-scantrad-//g' *
prename 's/mangaqc-franco-//' *
prename 's/mns--//' *
prename 's/mns-ps--//g' *
prename 's/mns-rs--//' *
prename 's/mns-tnt--//' *
prename 's/monster-no-scantrad-//' *
prename 's/rs--//' *
prename 's/ryozanpaku-//g' *
prename 's/schlag--//g' *
prename 's/shp--//g' *
prename 's/shp-//g' *
prename 's/stu--//' *
prename 's/yorokobe--//' *
}

alias fullgit="git add --all && git commit -v -a && git push -v"

alias toprod="git checkout master && git merge --no-ff developpement && git push -v && git checkout developpement"

feature () {
    case $1 in
          new)    git pull && \
                  sed -i 's/"version": ".*",/"version": "'"$3"'",/' package.json && \
                  git commit -am "ouverture feature $2 - $3" && \
                  git push origin master --tags && \
                  git checkout -b feature/"$2" master  ;;
          push)   git push -u origin feature/"$2"      ;;
          end)    git checkout master && \
                  git merge --no-ff feature/"$2" && \
                  git tag $(grep version package.json | cut -d'"' -f4) && \
                  git push origin master --tags && \
                  git branch -d feature/"$2" && \
                  git push origin :feature/"$2" ;;
          *) echo "usage: feature [new] BRANCH TAG or [push] BRANCH or [end] BRANCH" ;;
    esac
}

hotfix () {
    case $1 in
          new)    git pull && \
                  sed -i 's/"version": ".*",/"version": "'"$3"'",/' package.json && \
                  git commit -am "ouverture hotfix $2 - $3" && \
                  git push origin master --tags && \
                  git checkout -b hotfix/"$2" master  ;;
          push)   git push -u origin hotfix/"$2"      ;;
          end)    git checkout master && \
                  git merge --no-ff hotfix/"$2" && \
                  git tag $(grep version package.json | cut -d'"' -f4) && \
                  git push origin master --tags && \
                  git branch -d hotfix/"$2" && \
                  git push origin :hotfix/"$2" ;;
          *) echo "usage: hotfix [new] BRANCH TAG or [push] BRANCH or [end] BRANCH" ;;
    esac
}
