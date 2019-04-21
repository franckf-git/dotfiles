# imagemagick traitement image en cli

display IMAGE.png
identify IMAGE.jpg
animate IMAGES.gif
animate -delay 100 *.png

convert -quality 20 IMAGE.png IMAGE.jpg
convert IMAGES_*.png ANIME.gif
convert IMAGES.jpg -resize 50% -rotate 90 IMAGE.jpg
convert *.BMP -set filename:f '%t.png' +adjoin '%[filename:f]'
convert -background lightblue -fill blue -font FONT -pointsize 72 label:MESSAGE IMAGE.gif
convert IMAGE.gif label:'MESSAGE' -gravity Center -append IMAGE_FINAL.jpg

mogrify -resize 800x600 *.jpg
mogrify -fill white -pointsize 16 -annotate +10+26 'test' IMAGE.jpg
mogrify -font FONT -gravity Center -annotate 0 "%f" \

import IMAGE.png
import -window root IMAGE.png
import -pause 10 IMAGE.png

compare IMAGEA.png IMAGEB.png DIFFERENCE.png
composite -compose Over -gravity NorthEast IMAGE1.png IMAGE2.jpeg IMAGE_FINAL.jpeg
composite -watermark valeur_luminosite Premiere Deuxieme IMAGE_resultante
