#! /bin/bash

url=$1

domain=$(echo $1 | cut -d"." -f2)

if [[ $domain == "youtube" ]]
then
    cd ~/Vidéos  && youtube-dl --write-auto-sub --add-metadata -ic -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' $url
else
    cd ~/Musique && wget $url
fi
