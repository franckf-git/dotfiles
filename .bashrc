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

export PS1="\n \A \w\n "
export MANPAGER="nvim -c 'set ft=man' - "

# vi mode
set -o vi
bind "set show-mode-in-prompt on"
bind "set vi-ins-mode-string \1\2\1\2"
bind "set vi-cmd-mode-string \1\2 [cmd]\1\2"

# User specific aliases and functions
alias backup="udisksctl mount -b /dev/sda1 ; gio trash --empty && rsync --recursive --links --perms --times --owner --group --devices --specials --verbose --human-readable --copy-dirlinks --delete-before --stats --ignore-errors --exclude={"Vidéos/",".local/share/containers",".cache/",".var/app/org.gnome.Boxes/",".local/share/gnome-boxes/",".config/Ankama","Sauvegardes/videos"} /home/$USER /run/media/$USER/BACKUP/"

alias vimdiff='nvim -d'
alias neovim='nvim -p'
alias vim='nvim -p'
alias vi='nvim -p'

alias :q='exit'

alias ydl='youtube-dl --write-auto-sub --add-metadata -ic -f "bestvideo[height<=720]+bestaudio/best[height<=720]"'
alias twitchdl='youtube-dl -ic -f "bestvideo[height<=480]+bestaudio/best[height<=480]"'

alias ll="ls -lash"
alias ddg="web_search duckduckgo"
alias www="w3m https://franckf.gitlab.io/startpage/"

alias upgm="sudo dnf upgrade-minimal --refresh && flatpak update -y"
alias upgs="sudo dnf upgrade --security --refresh && flatpak update -y"
alias upg="sudo dnf upgrade --refresh && flatpak update -y"

alias usbup="udisksctl mount -b /dev/sda1"
alias usbdown="udisksctl unmount -b /dev/sda1"

alias hdmiclone="xrandr --output HDMI-A-0 --same-as eDP --mode 1920x1080"

alias journal="nvim ~/Documents/journal/$(date +%F-%a)md"

alias ndone="notify-send --urgency=critical '⚠' 'commande terminée'"

alias mychromium="chromium-browser --password-store=basic --incognito https://franckf.gitlab.io/startpage/"
alias myvscodium="FLATPAK_ENABLE_SDK_EXT=node14,golang flatpak run com.vscodium.codium ."

renameclean () {
for i in $(ls)
  do
  mv $i $(echo $i | iconv --from-code=UTF-8 --to-code=ASCII//TRANSLIT)
done

prename 'y/A-Z\ /a-z-/' *
prename 's/\[//g' *
prename 's/\]//g' *
prename 's/ajia-no-scantrad-//' *
prename 's/ajia-rs--//' *
prename 's/koneko-scantrad-//g' *
prename 's/koneko-scantrad//g' *
prename 's/mangaqc-franco-//' *
prename 's/mns--//' *
prename 's/mns-//' *
prename 's/mns-ps--//g' *
prename 's/mns-rs--//' *
prename 's/mns-tnt--//' *
prename 's/monster-no-scantrad-//' *
prename 's/rs--//' *
prename 's/rs-//' *
prename 's/ryozanpaku-//g' *
prename 's/schlag--//g' *
prename 's/shp--//g' *
prename 's/shp-//g' *
prename 's/stu--//' *
prename 's/stu-//' *
prename 's/yorokobe--//' *
prename 's/neo-scantrad--partenaire--//g' *
prename 's/neo-scantrad-partenaire-//g' *
prename 's/gs-//g' *
prename 's/nation-//g' *
prename 's/-----/-/g' *
prename 's/----/-/g' *
prename 's/---/-/g' *
prename 's/--/-/g' *
prename 's/_/-/g' *
prename "s/'/-/g" *
prename 's/,//g' *
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

processing-scans () {

cd ~/Téléchargements
renameclean 2> /dev/null

nomdossier=$(date +%m%d-%H%M)
listescans=$(ls | egrep '*.zip')

mkdir $nomdossier
cd $nomdossier
mkdir faits

for scan in $listescans
do
    mv ~/Téléchargements/$scan faits/
    cd faits/
    unzip $scan
    nom=$(basename $scan .zip)
    mv $scan ~/Sauvegardes/scans-done
    renameclean 2> /dev/null

    for image in $(ls)
    do
        mv $image ../"$nom"_"$image"
    done
    cd ../
done

convert *.* "$nomdossier".pdf
mv "$nomdossier".pdf ~/Images
cd ~/Téléchargements
rm -Rf $nomdossier

echo "#####"
echo "$listescans"

}

dotfiler () {
list="
.bashrc
.urlview
.config/autostart/newsboat.desktop
.config/autostart/remap-keys.desktop
.config/autostart/private-chromium-browser.desktop
.config/autostart/ranger.desktop
.config/git/config
.config/mpv/mpv.conf
.config/newsboat/anime-ultime-rss.sh
.config/newsboat/config
.config/newsboat/dl.sh
.config/newsboat/scantrad-union-rss.sh
.config/newsboat/urls
.config/nvim/colors/dracula.vim
.config/nvim/colors/github.vim
.config/nvim/colors/gotham.vim
.config/nvim/colors/gruvbox.vim
.config/nvim/colors/monokai.vim
.config/nvim/colors/solarized.vim
.config/nvim/colors/spacevim.vim
.config/nvim/init.vim
.config/nvim/snippets.vim
.config/ranger/commands.py
.config/ranger/commands_full.py
.config/ranger/rc.conf
.config/ranger/rifle.conf
.config/ranger/scope.sh
.config/themes/wallpaper.png
.config/xfce4/terminal/terminalrc
"

listtab=($list)

for dotfile in ${listtab[@]}
    do
        cp "$HOME/$dotfile" "$HOME/Documents/Projects/dotfiles/$dotfile"
    done

cd ~/Documents/Projects/dotfiles/
git diff
}
