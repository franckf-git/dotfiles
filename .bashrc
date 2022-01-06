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

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias backup="udisksctl mount -b /dev/sda1 ; gio trash --empty && rsync --recursive --links --perms --times --owner --group --devices --specials --verbose --human-readable --copy-dirlinks --delete-before --stats --ignore-errors --exclude={".local/share/containers",".cache/",".var/app/org.gnome.Boxes/",".local/share/gnome-boxes/","Vidéos","Sauvegardes/videos"} /home/$USER /run/media/$USER/BACKUP/"

alias vi="nvim -p"

alias ydl="yt-dlp --write-auto-sub --add-metadata -ic"
alias aydl="yt-dlp --extract-audio -f bestaudio/best"

alias ll="ls -lash"

alias upg="rpm-ostree upgrade && flatpak -y update"

alias newsboat="newsboat 2>> /dev/null"

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

