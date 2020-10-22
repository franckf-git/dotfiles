#! /bin/sh
# check new entry at scantrad-union.com and convert to rss
# in ~/.config/newsboat/urls add :
# exec:~/.config/newsboat/scantrad-union-rss.sh
baseurl=""
url="https://scantrad-union.com/"
entries=$(curl $url | grep text-truncate)

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
    for news in $entries ; do
        title=$(echo "$news" | cut -d'"' -f5 | sed "s/[^A-Za-z0-9]/ /g" | sed "1s/^.//" | sed "1s/....$//")
        urlnews=$(echo "$news" | cut -d'"' -f4)
        echo "    <item>"
        echo "      <title>$title</title>"
        echo "      <link>$urlnews</link>"
        echo "    </item>"
    done
    echo "  </channel>"
    echo "</rss>"
}

unset IFS

# TODO
# add episode number
# manage others entries
