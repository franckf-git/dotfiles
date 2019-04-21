# OSI 3

> IPv4
192.168.0.67
Bloc                   Usage    
0.0.0.0/8              Ce réseau
10.0.0.0/8             Adresses privées 15
100.64.0.0/10          Espace partagé pour Carrier Grade NAT
127.0.0.0/8            adresse de bouclage (localhost)
169.254.0.0/16         adresses locales autoconfigurées (APIPA)
172.16.0.0/12          Adresses privées
192.0.0.0/24           Réservé par l IETF
192.0.2.0/24           Réseau de test TEST-NET-1
192.88.99.0/24         6to4 anycast    RFC 306824
192.168.0.0/16         Adresses privées
198.18.0.0/15          Tests de performance
198.51.100.0/24        Réseau de test TEST-NET-2
203.0.113.0/24         Réseau de test TEST-NET-3
224.0.0.0/4            Multicast Multidiffusion
240.0.0.0/4            Réservé à un usage ultérieur non précisé
255.255.255.255/32     broadcast limité

> IPv6
2001:0db8:0000:85a3:0000:0000:ac1f:8001
Bloc            Usage
::/128          Adresse non spécifiée
::1/128         Adresse de bouclage
::ffff:0:0/96   Adresse IPv6 mappant IPv4
0100::/64       sollicitation de trou noir
2000::/3        Adresses unicast routables sur Internet
2001::/32       Teredo
2001:2::/48     Tests de performance
2001:10::/28    Orchid
2001:db8::/32   documentation
2002::/16       6to4
fc00::/7        Adresses locales uniques
fe80::/10       Adresses locales lien
ff00::/8        Adresses multicast
