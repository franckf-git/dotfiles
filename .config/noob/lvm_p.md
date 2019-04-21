# LVM

> Shrinking a root volume

vgchange -a y

> Shrinking a non-root volume

umount /MONTAGE/
e2fsck -fy /MONTAGE/
resize2fs /MONTAGE/ 5G

> ou

lvreduce -L 5G /dev/vg/DISK_NAME
resize2fs /MONTAGE/

mount /MONTAGE/ /mnt

> Increase LVM

lvgdisplay | grep free
lvextend -L+5G /MONTAGE/
resize2fs /MONTAGE/
