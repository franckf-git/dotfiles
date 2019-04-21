# chiffrement disque dur externe

sudo apt-get install cryptsetup
sudo cryptsetup luksFormat -h sha256 /dev/XXX
sudo cryptsetup luksOpen /dev/XXX NOMDISQUE
sudo mkfs.ext4 /dev/mapper/NOMDISQUE
