#! /bin/bash
# check new entry at scantrad-union.com and convert to rss
# in ~/.config/newsboat/urls add :
# exec:~/.config/newsboat/scantrad-union-rss.sh

url="https://scantrad-union.com/"
today=$(date +"%a %d %b %Y 01:00:00 +0000")

cd ~/.config/newsboat

# get the actuals published scans
curl -s $url | grep -v _blank | grep -A 1 text-truncate | sed ':a;N;$!ba;s/\n<a href//g' | grep -v "^--$" > raw-get

for publish in $(cat raw-get | sed 's/ /-/g')
do
    title=$(echo $publish | cut -d'>' -f2 | sed '1s/...$//' )
    epnum=$(echo $publish | cut -d'>' -f5 | sed '1s/......$//' )
    link=$(echo $publish | cut -d'"' -f4 )
    echo "$title£$epnum£$link" >> today-urls
done

entries=$(diff today-urls yesterday-urls | grep "<" | sed 's/^< //')

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
        titleentry=$(echo "$entry" | cut -d'£' -f1)
        epnumentry=$(echo "$entry" | cut -d'£' -f2)
        linkentry=$(echo "$entry" | cut -d'£' -f3)
        echo "    <item>"
        echo "      <title>$titleentry $epnumentry</title>"
        echo "      <link>$linkentry</link>"
        echo "      <pubDate>$today</puDate>"
        echo "    </item>"
done
echo "  </channel>"
echo "</rss>"
}

unset IFS

rm raw-get
rm yesterday-urls
mv today-urls yesterday-urls

cd ~/

