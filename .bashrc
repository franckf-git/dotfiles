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

alias backup="udisksctl mount -b /dev/sda1 ; gio trash --empty && rsync --recursive --links --perms --times --owner --group --devices --specials --verbose --human-readable --copy-dirlinks --delete-before --stats --ignore-errors --exclude={".local/share/containers",".cache/",".var/app/org.gnome.Boxes/",".local/share/gnome-boxes/","Vidéos","Sauvegardes/videos","Images","Musique",".config/Ankama"} /home/$USER /run/media/$USER/BACKUP/"

alias vi="nvim -p"

alias ydl="yt-dlp --write-auto-sub --add-metadata -ic"
alias aydl="yt-dlp --extract-audio -f bestaudio/best"

alias ll="ls -lash"

alias www="w3m https://franckf.gitlab.io/startpage/"

alias upg="rpm-ostree upgrade && flatpak update -y"

alias newsboat="newsboat 2>> /dev/null"
alias fn="newsboat 2>> /dev/null"
alias fr="ranger"

alias current="cd ~/go/src/gitlab.com/franckf/reference-opendata/energy-vienne && vi ."
alias gitcomment='for i in $(ls) ; do echo "$i $(git log --oneline $i)" ; done'
alias fullgit="git add --all && git commit -v -a && git push && git push --tags"

alias fl="expr $RANDOM % $(ls |wc -l)"

fs () {
find ~/ -name *$1* 2> /dev/null
}

renameclean () {

if [[ $(pwd) = "/var/home/user" ]]
then
    echo "not in home - dummy"
    return
fi

for i in $(ls)
  do
  mv $i $(echo $i | iconv --from-code=UTF-8 --to-code=ASCII//TRANSLIT)
done

prename 'y/A-Z\ /a-z-/' *
prename 's/\[//g' *
prename 's/\]//g' *
prename 's/-----/-/g' *
prename 's/----/-/g' *
prename 's/---/-/g' *
prename 's/--/-/g' *
prename 's/_/-/g' *
prename "s/'/-/g" *
prename 's/,//g' *

for i in $(ls)
  do
  mv $i $(echo $i | iconv --from-code=UTF-8 --to-code=ASCII//TRANSLIT)
done

prename 'y/A-Z\ /a-z-/' *
prename 's/\[//g' *
prename 's/\]//g' *
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

