# disque ssd

sudo nano /etc/fstab

> ajouter discard ext4 ou discard,ssd btrfs

UUID=12345678-1234-1234-1234-123456789012 /      ext4    defaults,discard,noatime,nosuid,noexec,nodev        1 1
/dev/mapper/vg_localhost-lv_root            /       btrfs    defaults,discard,noatime,ssd     1 1

sudo nano /etc/lvm/lvm.conf
issue_discards = 1

echo noop | sudo tee /sys/block/sda/queue/scheduler
cat /sys/block/sda/queue/scheduler
