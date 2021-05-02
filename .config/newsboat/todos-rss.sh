#! /bin/bash

todos=$(ls ~/Documents)

cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0">

<channel>
<title>todo list</title>
<link>home</link>
<description>todo list</description>

EOF
{
    for todo in $todos
    do
        echo "    <item>"
        echo "      <title>$todo</title>"
        echo "    </item>"
    done
    echo "  </channel>"
    echo "</rss>"
}

