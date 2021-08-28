# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:$HOME/go/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME/go/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export PS1="\n \A \w\n "
export MANPAGER="nvim -c 'set ft=man' - "

# User specific aliases and functions
alias backup="udisksctl mount -b /dev/sda1 ; gio trash --empty && rsync --recursive --links --perms --times --owner --group --devices --specials --verbose --human-readable --copy-dirlinks --delete-before --stats --ignore-errors --exclude={".local/share/containers",".cache/",".var/app/org.gnome.Boxes/",".local/share/gnome-boxes/"} /home/$USER /run/media/$USER/BACKUP/"

alias vi="nvim -p"

alias ydl="youtube-dl --write-auto-sub --add-metadata -ic"
alias ydla="youtube-dl --extract-audio -f bestaudio/best"

alias ll="ls -lash"

alias upg="flatpak update --assumeyes && sudo rpm-ostree upgrade"

alias mpv="flatpak run io.mpv.Mpv"
alias pdf="flatpak run org.gnome.Evince"
alias eog="flatpak run org.gnome.eog"
alias codium="FLATPAK_ENABLE_SDK_EXT=golang /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/codium --file-forwarding com.vscodium.codium --no-sandbox --new-window ."

alias gitcomment='for i in $(ls) ; do echo "$i $(git log --oneline $i)" ; done'
alias fullgit="git add --all && git commit -v -a && git push -v"

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

processing-scans () {
cd ~/Downloads
renameclean 2> /dev/null

nomdossier=$(date +%m%d-%H%M)
listescans=$(ls | egrep '*.zip')

mkdir $nomdossier
cd $nomdossier
mkdir faits

for scan in $listescans
do
    mv ~/Downloads/$scan faits/
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
mv "$nomdossier".pdf ~/Pictures
cd ~/Downloads
rm -Rf $nomdossier
echo "#####"
echo "$listescans"
}

