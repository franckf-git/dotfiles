#!/bin/bash
i3status | while :
do
    #read the input of i3status
    read line
    #read and convert the title of the windows
    id=$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')
    name=$(xprop -id $id | awk '/_NET_WM_NAME/{$1=$2="";print}' | cut -d'"' -f2)
    #take the numbers of characters of the title
    characters_count=$(echo $name | wc -c)
    #divide by 2 to find the center
    center_title=$(echo $characters_count / 2 | bc)
    #i3bar = 248 characters long BUT depends on font and fontsize
    #so we ajust the center of the bar minus the center of the title
    nbr_spaces_for_center=$(echo 124 - $center_title | bc)
    #fill the difference with spaces to center the title
    spaces_for_center=$(for ((i=1;i<=$nbr_spaces_for_center;i++)) ; do echo " " ; done | tr -d '\n')
    echo "$name $spaces_for_center   $line    " || exit 1
done
