# hdd et partitions

photorec                                 #recuperation disque dur
dd if=/dev/zero of=/dev/sdc              #effacement disque dur
sudo tune2fs -l /dev/sda2                #afficher les infos de la partition ext
sudo tune2fs -c 50 /dev/hda1             #modifie la fréquence des vérif au reboot
sudo tune2fs -j /dev/hda1                #ajoute la possibilité de journalisation
cat /proc/partitions                     #affiche les partitions montees
sudo fdisk -l                            #details partitions
sudo fdisk /dev/sdb                      #table de partition disque
sudo cfdisk                              #fdisk simple
fsck.ext4 -f /dev/sda2                   #verifier le systeme de fichier
tune2fs -c 30 /dev/sda2                  #tout les 30 montages
mkfs.bfs       #/dev/sdb1                #formatage
mkfs.ext2      #/dev/sdb1
mkfs.ext4      #/dev/sdb1
mkfs.minix     #/dev/sdb1
mkfs.ntfs      #/dev/sdb1
mkfs.cramfs    #/dev/sdb1
mkfs.ext3      #/dev/sdb1
mkfs.ext4dev   #/dev/sdb1
mkfs.msdos     #/dev/sdb1
mkfs.vfat      #/dev/sdb1
mkfs.fat -I -F 32 /dev/sdb               #réparer une clé USB
mount -o remount,rw /                    #remonter une partition en lecture/ecriture
sudo blkid                               #UUID des partitions
mount -t TYPE /dev/sda3 /media/MOUNT     #monter un systeme de fichier inconnu
umount -l                                #forcer le demontage
pvdisplay                                #afficher les volumes physiques
pvdisplay -C                             #sous forme de liste
pvcreate /dev/sd2                        #creer un volume physique
vgdisplay                                #afficher les groupes de volumes
vgcreate name /dev/sda1 /dev/sdb3        #creer un groupe de volume
lvdisplay                                #afficher les disques virtuels
lvcreate -n LV_FILES -L 5G NAME_VG       #creer un disque virtuel
shutdown -F -r now                       #forcer la verification du systeme au reboot
sudo mlabel -i /dev/sdb2 ::NOUVEAUNOM    #Changer le label clé USB type FAT32
sudo e2label /dev/sdb2 "NOUVEAUNOM"      #Changer le label clé USB type EXT2/3/4
badblocks -s -v -w /dev/hda              #test en lecture et écriture, effacement !
mount -o remount,size=6G,... /TMP        #resize the tmpfs volume
badblocks -v /dev/sdb                    #Test des blocs des filesystems
2fsck -cfp /dev/sdb1                     #Marquer les secteurs défectueux

>  montage automatique
/dev/sda1 /MNT/POINT auto defaults,noatime,auto,nofail 0 2

>> ou pour un element precis
LABEL=MY_USB_DRIVE /MNT/POINT auto defaults,auto,nofail 0 2
sudo systemctl daemon-reload
