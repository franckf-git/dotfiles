    sudo ufw enable
    sudo ufw reload
    sudo ufw status verbose

> /etc/default/ufw
IP6=no

    sudo ufw default deny incoming
    sudo ufw default deny outgoing
> http
    sudo ufw allow out 80/tcp
> https
    sudo ufw allow out 443/tcp
> dns
    sudo ufw allow out 53/udp
> samba
    sudo ufw allow out proto tcp to any port 139445
    sudo ufw allow out proto udp to any port 137138
> steam
    sudo ufw allow out proto tcp to any port 27000:27030
    sudo ufw allow out proto udp to any port 27000:27030
> port ssh 12122
    sudo ufw allow out 12122
> port ntp
    sudo ufw allow out 123
> Autoriser le port du whois
    sudo ufw allow out 43/tcp
    sudo ufw reload
    sudo ufw status verbose

> authoriser toutes les connexions entrantes du port 12122 sur le reseau local
    sudo ufw allow from 192.168.1.0/24 proto tcp to any port 12122 

> seulement a partir d une machine
    sudo ufw allow from IP proto tcp to any port 12122

> autoriser les ping / ok icmp codes output
    sudo nano /etc/ufw/before.rules
-A ufw-before-output -p icmp --icmp-type destination-unreachable -j ACCEPT
-A ufw-before-output -p icmp --icmp-type source-quench -j ACCEPT
-A ufw-before-output -p icmp --icmp-type time-exceeded -j ACCEPT
-A ufw-before-output -p icmp --icmp-type parameter-problem -j ACCEPT
-A ufw-before-output -p icmp --icmp-type echo-request -j ACCEPT

