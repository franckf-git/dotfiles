#! /bin/sh

# colors
RED="\033[1;31m"
GREEN="\033[1;32m"
COLOR_OFF="\033[0m"

REPO="rtfm quick_scripts"

for i in $REPO ; do
    cd /home/$USER/Files/InProgress/$i
    echo "################################################################"
    echo -e "In the repository ${RED} "$i" ${COLOR_OFF} your status is : "
    echo "################################################################"
    echo ""
    git status
    echo ""
    echo ""
done

cd /home/$USER/
echo "################################################################"
echo -e "In the repository ${RED} dotfiles ${COLOR_OFF} your status is : "
echo "################################################################"
echo ""
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME status
echo ""
echo ""

echo "################################################################"
echo "You can work on :"
echo "1 - rtfm"
echo "2 - dotfiles"
echo "3 - quick_scripts"
echo "9 - radio"
echo "0 - push everybody to remote git"
echo "################################################################"
echo ""

read -n 1 -r -p "So ? Don't push me: " response

case "$response" in
    "0")
echo ""
cd /home/$USER/Files/InProgress/rtfm
echo "################################################################"
git push
echo "################################################################"
echo ""
cd /home/$USER/
echo "################################################################"
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME diff --color-words push
echo "################################################################"
echo ""
cd /home/$USER/Files/InProgress/quick_scripts
echo "################################################################"
git push
echo "################################################################"
echo ""
cd /home/$USER/
exec zsh
;;
    "1")
echo ""
cd /home/$USER/Files/InProgress/rtfm
echo "################################################################"
git diff --color-words
echo "################################################################"
echo ""
exec zsh
;;
    "2")
echo ""
cd /home/$USER/
echo "################################################################"
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME diff --color-words
echo "################################################################"
echo ""
exec zsh
;;
    "3")
echo ""
cd /home/$USER/Files/InProgress/quick_scripts
echo "################################################################"
git diff --color-words
echo "################################################################"
echo ""
exec zsh
;;
    "9")
echo ""
mpv --no-video https://chai5she.cdn.dvmr.fr/fip-webradio1.mp3?ID=radiofrance
exit
;;
    *)
echo ""
echo "################################################################"
echo "Bye !"
echo "################################################################"
echo ""
exit
;;
esac
