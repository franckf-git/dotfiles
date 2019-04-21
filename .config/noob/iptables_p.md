# iptables

dnf install iptables-services
_gui firestarter_
systemctl enable iptables.service
systemctl enable ip6tables.service
systemctl start iptables.service
systemctl start ip6tables.service

sudo iptables -F
sudo iptables -X
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT DROP
sudo iptables -A OUTPUT -p TCP --dport http -j ACCEPT         # Port 80   (Http)
sudo iptables -A OUTPUT -p TCP --dport https -j ACCEPT        # Port 443  (Https)
sudo iptables -A OUTPUT -p TCP --dport dns -j ACCEPT          # Port 53  (dns)
sudo iptables -A FORWARD -j LOG_DROP
sudo iptables -A INPUT -j LOG_DROP
sudo iptables -A OUTPUT -j LOG_DROP

iptables -nvL --line-numbers # suppresion iptable
iptables -D INPUT {{num}}

> Pings

sudo iptables -A INPUT -p icmp -j DROP
iptables -A OUTPUT -p icmp -m conntrack --ctstate NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT
iptables -A INPUT -p icmp --icmp-type time-exceeded -j ACCEPT
iptables -A INPUT -p icmp --icmp-type destination-unreachable \
  -j ACCEPT

> accepter le reseau local

iptables -A INPUT -s 192.168.1.0/24 -j ACCEPT
iptables -A OUTPUT -d 192.168.1.0/24 -j ACCEPT
iptables -A FORWARD -s 192.168.1.0/24 -j ACCEPT

> autoriser les paquets entrants sur la boucle locale

iptables -A INPUT -i lo -j ACCEPT

iptables -vL
sudo iptables-save
systemctl list-unit-files | grep iptables
systemctl start iptables
systemctl enable iptables
service iptables save

iptables -S

> Persisting Rules through Reboots (Debian/Ubuntu)

sudo apt-get install -y iptables-persistent
sudo service iptables-persistent start
sudo iptables-save > /etc/iptables/rules.v4
sudo service iptables-persistent restart

> Persisting Rules through Reboots (CentOS/RedHat)

sudo chkconfig iptables on
sudo service iptables save
sudo service iptables start
