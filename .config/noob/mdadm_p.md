# raid logiciel mdadm

su
apt-get install mdadm
systemctl enable mdmonitor
systemctl start mdmonitor

> raid1 aka mirroring

mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb /dev/sdc

> raid5

mdadm --create /dev/md0 --level=5 --raid-devices=4 /dev/sdb /dev/sdc /dev/sdb /dev/sde

> processus en cours

cat /proc/mdstat

> infos raid

mdadm --detail /dev/md0

mkfs.ext4 /dev/md0
mount /dev/md0 on /mnt type ext4 (rwrelatimedata=ordered)

> [attention au restart]

> ajouter un disque

mdadm --manage /dev/md0 --add /dev/sdd

> supprimer un disque

mdadm --manage /dev/md0 --fail /dev/sdc --remove /dev/sdc

> stopper un raid

mdadm --stop /dev/md0
