# recuperation web

wget -r -k -T 5 -t 2 http://URL    #aspirer un site web
wget ‐‐input URL-LIST.TXT          #depuis une liste
wget http://remote.com/filenumber{1..10}.ext               #incremental
wget -nd -H -p -A jpg,jpeg,png,gif -e robots=off URL       #recuperer les images
curl https://URL.fr                #get classique
curl https://URL.fr -D -           #headers
curl -X HEAD https://URL.fr        #requête de type X (HEAD, POST, PUT, PATCH, DELETE…)
curl                               #more protocols
wget                               #recursive
sha256sum -c DOWNLOAD.sha256       #comparaison sha256sum
scp USER@SERVER:CHEMIN/SOURCE.FICHIER USER@SERVER:CHEMIN/DESTINATION.FICHIER

chromium-browser --headless --disable-gpu --print-to-pdf URL #export pdf de site en cli
chromium-browser --headless --disable-gpu --screenshot URL   #export img de site en cli

links2 -dump          #convertisseur HTML vers texte avec la commande
antiword              #convertir des fichiers MSWord en texte brut ou en ps
pstotext              #extraire du texte depuis des fichiers PostScript et PDF
unhtml                #supprimer les balise d un fichier HTML
odt2txt               #convertisseur du texte OpenDocument vers texte
txt2html              #convertisseur de texte vers HTML
