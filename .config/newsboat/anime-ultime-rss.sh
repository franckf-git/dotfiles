#! /bin/sh
# check new entry at anime-ultime.net and convert to rss
# in ~/.config/newsboat/urls add :
# filter:~/.config/newsboat/anime-ultime-rss.sh:http://anime-ultime.net

url="http://www.anime-ultime.net/index-0-1"
entries=$(curl $url | grep left | cut -d'"' -f6)
# -f11 for title

cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0">

<channel>
<title>anime ultime</title>
<link>$url</link>
<description>animes</description>

EOF
{
    for i in "${entries[@]}"; do
        echo "    <item>"
        echo "      <title>$i</title>"
        echo "      <link>$url/$i</link>"
        echo "    </item>"
    done
    echo '  </channel>'
    echo '</rss>'
}

