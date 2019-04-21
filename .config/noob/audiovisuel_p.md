# audiovisuel

arecord -f cd STEREO.wav                         #capture audio
aplay STEREO.wav                                 #lire audio
ffmpeg -f video4linux2 -s 320x240 -i /dev/video0 VIDEO.mpg             #capture webcam
mpv /dev/video0                                  #voir webcam
HandBrakeCLI -i /media/DVD -t 3 -s 6 --subtitle-burned -o TEST.m4v     #handbrake
HandBrakeCLI -i /dev/sr0 -Z "Fast 576p25" -t 23 -s 5 --subtitle-burned -o TITLE.m4v #avec preset
youtube-dl -o "%(title)s.%(ext)s" -x --audio-format mp3 --audio-quality 0  URL         #extraire en MP3 d une video externe
mpv --vid=no https://www.youtube.com/URL         #music youtube terminal
convert -density 600 *.pdf *.jpg                 #Convertir des fichiers pdf en jpg
convert *.jpg FICHIER.pdf  -limit memory 1mb -limit map 1mb            #jpg en pdf
aplay /dev/urandom                               #bruit rose
cat LIST | gnuplot -p -e 'plot "-"'              #afficher un graphique de nombre
nano /home/$USER/.mpv/config                     #mpv reprise
save-position-on-quit

mpv --no-audio --start=00:01:30 --frames=1 /path/to/video/file --o=/path/to/screenshot.png    #mpv capture ecran
