# firewalld

systemctl list-unit-files | grep firewall
systemctl enable firewalld
systemctl start firewalld
systemctl status firewalld
firewall-cmd --state

> les zones disponibles

firewall-cmd --get-zones
firewall-cmd --list-all-zones

> la zone active en cours

firewall-cmd --get-default-zone
firewall-cmd --get-active-zones
firewall-cmd --list-all
firewall-cmd --list-interfaces

> passer sur une nouvelle zone

firewall-cmd --set-default-zone=drop
firewall-cmd --zone=ZONE --list-all
firewall-cmd --reload
firewall-cmd --complete-reload

> les services disponibles

firewall-cmd --get-services
firewall-cmd --permanent --get-services
firewall-cmd --info-service=SERVICE

> modifications permanentes

firewall-offline-cmd

> editer un service

cp /usr/lib/firewalld/services/service.xml /etc/firewalld/services/service.xml

> mode panique

firewall-cmd --panic-on
firewall-cmd --panic-off
firewall-cmd --query-panic

nano /etc/firewalld/services/service.xml
firewall-cmd --reload

> ajouter un service à la zone active

firewall-cmd --add-service=rtmp

> bloquer les ping

firewall-cmd --zone=public --permanent --add-icmp-block=destination-unreachable
firewall-cmd --reload

> bloquer tous les ports sortants sauf le web

firewall-cmd --permanent --direct --add-rule ipv4 filter OUTPUT 2 -j DROP
firewall-cmd --permanent --direct --add-rule ipv4 filter OUTPUT 1 -p tcp -m tcp --dport 80 -j ACCEPT
firewall-cmd --permanent --direct --add-rule ipv4 filter OUTPUT 1 -p tcp -m tcp --dport 443 -j ACCEPT
firewall-cmd --permanent --direct --add-rule ipv4 filter OUTPUT 1 -p tcp -m tcp --dport 53 -j ACCEPT
firewall-cmd --permanent --direct --add-rule ipv4 filter OUTPUT 1 -p udp --dport 53 -j ACCEPT
