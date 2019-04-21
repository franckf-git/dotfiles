# proxmox depot communautaire

nano /etc/apt/sources.list

deb http://ftp.debian.org/debian stretch main contrib

# security updates
deb http://security.debian.org stretch/updates main contrib

# PVE pve-no-subscription repository provided by proxmox.com
# NOT recommended for production use
deb http://download.proxmox.com/debian/pve stretch pve-no-subscription

apt-get update
apt-get upgrade
