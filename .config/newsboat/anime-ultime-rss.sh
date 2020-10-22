#! /bin/sh
# check new entry at anime-ultime.net and convert to rss
# in ~/.config/newsboat/urls add :
# exec:~/.config/newsboat/anime-ultime-rss.sh
baseurl="http://www.anime-ultime.net"
url="$baseurl/index-0-1"
entries=$(curl $url | grep left | cut -d'"' -f6 | sed '$ d')
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
for news in $entries ; do
        echo "    <item>"
        echo "      <title>$news</title>"
        echo "      <link>$baseurl/$news</link>"
        echo "    </item>"
    done
    echo "  </channel>"
    echo "</rss>"
}

# TODO
# add genre (anime, drama, ...)
# add episode number
