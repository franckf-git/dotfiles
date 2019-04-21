# desactiver ipv6

###>>>redhat
sysctl -w net.ipv6.conf.all.disable_ipv6=1
sysctl -w net.ipv6.conf.default.disable_ipv6=1

###>>>debian
sudo nano /etc/sysctl.conf
#ajouter a la fin
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

###>>>fedora desactive ipv6
sudo vi /etc/sysconfig/network
NETWORKING_IPV6=no

sudo vi /etc/modprobe.d/ipv6.conf
blacklist ipv6

su -c "sysctl -w net.ipv6.conf.all.disable_ipv6=1"
su -c 'echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf'
su -c 'sysctl -p'
