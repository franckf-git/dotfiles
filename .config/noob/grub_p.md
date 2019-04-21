# grub

sudo nano /etc/default/grub
GRUB_DEFAULT=0
GRUB_HIDDEN_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT_QUIET=true
GRUB_TIMEOUT=10
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
GRUB_CMDLINE_LINUX=""
GRUB_TERMINAL=console

sudo rm /boot/grub/.background_cache.png

> BIOSS

sudo update-grub

> ou

grub2-mkconfig -o /boot/grub2/grub.cfg

> UEFI

grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
