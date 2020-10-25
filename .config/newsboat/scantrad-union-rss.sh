#! /bin/bash
# check new entry at scantrad-union.com and convert to rss
# in ~/.config/newsboat/urls add :
# exec:~/.config/newsboat/scantrad-union-rss.sh

url="https://scantrad-union.com/"
today=$(date +"%a %d %b %Y 01:00:00 +0000")

cd ~/.config/newsboat

# get the actuals published scans
curl $url | sed -n '/<a class="text-truncate"/,/span>/p' | grep -v mangadex > today.html

# get tags of news scans
newsscans=$(diff today.html yesterday.html | grep '^< ' | sed 's/< </\n/g')

# uniques news scans
entries=$(echo "$newsscans" | grep "text-truncate")

# build rss XML
IFS=$'\n'
cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0">

<channel>
<title>scantrad-union</title>
<link>$url</link>
<description>mangas scans</description>

EOF
{
# get title - link and episode number for each news scans
for entry in $entries
do
    titles=$(echo $entry | cut -d'>' -f2 | sed '1s/...$//')
    for title in $titles
    do
        tag=$(echo "$newsscans" | sed -n "/$title/,/span>/p")
        link=$(echo "$tag" | grep "text-truncate" | cut -d'"' -f4)
        epnumber=$(echo "$tag" | grep "numerochapitre" | cut -d'>' -f3 | sed 's#</span##' )
        echo "    <item>"
        echo "      <title>$title $epnumber</title>"
        echo "      <link>$link</link>"
        echo "      <pubDate>$today</puDate>"
        echo "    </item>"
    done
done
echo "  </channel>"
echo "</rss>"
}

unset IFS

rm yesterday.html
mv today.html yesterday.html

cd ~/

