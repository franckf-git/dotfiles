# proxmox connexions web

nano /etc/networks/interfaces
#configuration pour machines virtuelles
auto lo
iface lo inet loopback

iface enp3s0 inet manual

auto vmbr0
iface vmbr0 inet static
        address 192.168.1.58
        netmask 255.255.255.0
        gateway 192.168.1.255
        bridge_ports enp3s0
        bridge_stp off
        bridge_fd 0

#configuration pour hyperviseur
auto lo
iface lo inet loopback

auto enp3s0
iface enp3s0 inet dhcp
