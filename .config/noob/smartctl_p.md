# disques smart

sudo apt-get install smartmontools smart-notifier

> pour activer SMART sur un disque
sudo smartctl --smart=on --offlineauto=on --saveauto=on /dev/sdX

> infos sur le disque
sudo smartctl -H -i /dev/sdX
sudo smartctl -a /dev/sdX
sudo smartctl -l selftest /dev/sdX     #accéder aux résultats
sudo smartctl --scan | grep -i usb

> tests
sudo smartctl -t short /dev/sdX
sudo smartctl -t long /dev/sdX
sudo smartctl -l selftest /dev/sdX
sudo smartctl -a /dev/sdX
