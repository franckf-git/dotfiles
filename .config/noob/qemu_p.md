# QEMU

sudo apt install qemu qemu-kvm qemu-launcher
sudo ln -s /usr/bin/qemu-system-x86_64 /usr/bin/qemu

> live-cd

qemu -cdrom IMAGE.iso -m 1024

> installation

qemu-img create -f qcow2 HDD.qcow2 5G
qemu -hda HDD.qcow2 -cdrom IMAGE.iso -boot d -m 256

> qcow pour disque dynamique
> ou

qemu-img create HDD.img 2G
qemu -k fr -cdrom IMAGE.iso -hda HDD.img -user-net -boot a

> demarrer le windows dualboot

qemu -boot c -hda /dev/hda

> demarrage

qemu -hda HDD.img -m 256
>> options : -enable-audio -soundhw all -full-screen -no-acpi 
-net nic -net user #reseau
--enable-kvm       #kvm rapidité
qemu-system-x86_64 -hda HDD.qcow2 -m 1024

> compression

tar c --sparse -f BACKUP.tar HDD.img

> monter image qemu

modprobe nbd max_part=8
kvm-nbd --connect=/dev/nbd0 HDD.qcow
fdisk -l /dev/nbd0
mount /dev/nbd0p1 /mnt

> ou

mount -o loop,offset=32256 /PATH/TO/HDD.img /mnt/MOUNTPOINT
