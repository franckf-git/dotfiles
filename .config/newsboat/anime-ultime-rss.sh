#! /bin/bash
# check new entry at anime-ultime.net and convert to rss
# in ~/.config/newsboat/urls add :
# exec:~/.config/newsboat/anime-ultime-rss.sh

baseurl="http://www.anime-ultime.net"
url="$baseurl/index-0-1"
today=$(date +"%a %d %b %Y 01:00:00 +0000")

cd ~/.config/newsboat

# get the actuals published animes
curl $url | sed -n '/<table/,/table>/p' > today-anime.html

news=$(diff today-anime.html yesterday-anime.html)

entries=$(echo "$news" | grep "left")

# build rss XML
IFS=$'\n'
cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0">

<channel>
<title>anime-ultime</title>
<link>$url</link>
<description>animes</description>

EOF
{
for entry in $entries
do
    titles=$(echo $entry | cut -d'/' -f3 | cut -d'"' -f1)
    for title in $titles
    do
        tag=$(echo "$news" | sed -n "/$title/,/charger/p")
        link=$(echo "$tag" | grep "left" | cut -d'"' -f6)
        epnumber=$(echo "$tag" | sed '2!d' | cut -d'>' -f2 | sed '1s/....$//' )
        echo "    <item>"
        echo "      <title>$title $epnumber</title>"
        echo "      <link>$baseurl/$link</link>"
        echo "      <pubDate>$today</puDate>"
        echo "    </item>"
    done
done
echo "  </channel>"
echo "</rss>"
}

unset IFS

rm yesterday-anime.html
mv today-anime.html yesterday-anime.html

cd ~/

