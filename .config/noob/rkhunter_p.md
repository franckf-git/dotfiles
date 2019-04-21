# rkhunter

sudo apt-get install rkhunter 
sudo rkhunter --update

sudo nano /etc/rkhunter.conf

> retirer les faux positifs ALLOWHIDDENDIR
> couper les update le temps de la correction de la faille

UPDATE_MIRRORS=0 --> UPDATE_MIRRORS=1
MIRRORS_MODE=1 --> MIRRORS_MODE=0
WEB_CMD="/bin/false" --> WEB_CMD=""

sudo rkhunter --propupd
sudo rkhunter -c --skip-keypress --pkgmgr dpkg
sudo rkhunter -c --rwo
