# date

%H     heure (00..23)
%I     heure (01..12)
%k     heure ( 0..23)
%l     heure ( 1..12)
%M     minute (00..59)
%p     notation locale pour AM ou PM
%r     heure actuelle (sur 12 heures) (hh:mm:ss [AP]M)
%s     secondes ecoulees depuis le 01-01-1970  a  00:00:00
%S     secondes (00..61)
%T     heure actuelle (sur 24 heures) (hh:mm:ss)
%X     representation locale de l heure (%H:%M:%S)
%Z     fuseau  horaire
%a     abreviation locale du jour de la semaine (Sun..Sat)
%A     nom local du jour de la semaine (Sunday..Saturday)
%b     abreviation locale du nom du mois (Jan..Dec)
%B     nom local du mois (January..December)
%c     date  et  heure  locales EST
%d     jour du mois (01..31)
%D     date (mm/jj/aa)
%j     jour de l annee (001..366)
%m     mois (01..12)
%w     Jour  de  la  semaine  (0..6). 0=Dimanche
%W     numero de semaine dans l annee (00..53)
%x     representation locale de la date (mm/jj/aa)
%y     deux derniers chiffres de l annee (00..99)
%Y     annee (1970...)

> retrouver le samedi précédent

date -d last-saturday

> retrouver le samedi précédent à partir d une date

date -d "AAAA-MM-JJ -$(date -d AAAA-MM-JJ +%w) days + $(date -d 'saturday' +%u) day - 1 week"

> si on est samedi

if [ $(date +%w) = 6 ]; then
