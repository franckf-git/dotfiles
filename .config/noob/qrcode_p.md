# QR code

> generation

sudo apt-get install qrencode
qrencode -t EPS -o IMAGE.png 'MESSAGE'
qrencode -t ASCII -o QR.txt 'MESSAGE'
qrencode -o IMAGE.png URL
qrencode -o IMAGE.png 'BEGIN:VCARD VERSION:4.0 FN: N:NOM;PRENOM;;; ADR:;;ADRESS. NBR;VILLE;;POSTAL; END:VCARD'

> lecture

sudo apt-get install libdecodeqr-examples
libdecodeqr-simpletest IMAGE.png
