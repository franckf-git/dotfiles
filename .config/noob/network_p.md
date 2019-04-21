# infos reseau

hostname                  #affiche le nom d hote de la machine
/etc/hosts                #liste des résolutions IP
hostname -I               #Display all the ip address
hostname -d               #Display the domain name
hostname -s               #Display the short name
hostname -f               #Display with FQDN format
ping MACHINE              #envoie un ping a une machine
traceroute MACHINE        #fait un traceroute vers machine
mtr SITE                  #fait un traceroute
sudo nmap -sn IP          #scanner le reseau local
nmap -sS -sU -sV IP       #scan TCP SYN + un scan UDP + logiciel et version
nmap -sO IP               #protocoles ouverts
nmap -sP 192.168.0.0/24   #decouvrir le reseau local
dhclient -r INTERFACE     #demander une nouvelle IP
dhclient -1
ifdown INTERFACE ; ifup INTERFACE
netstat                   #affiche l usage du reseau pas les processus
netstat -a                #netstat avec l affichage des processus serveurs
sudo netstat -ntplou      #lister les ports ouverts sur la machine
sudo netstat -lp --inet   #liste des programmes utilisant le reseau
netstat -antp             #liste des connexions ouvertes
sudo netstat -lapute      #Connexions Internet actives
ss -ona                   #toutes les connexions
ss -lnptu                 #lister uniquement les connexions ayant letat LISTENNING
ss -lpt                   #afficher le nom du processus lie et son pid
ss -s                     #afficher des statistiques
netstat -pan -A inet,inet6 | grep -v ESTABLISHED
netstat -tlnw
ss -tlw
ss -plno -A tcp,udp,sctp
netstat -plnS
netstat -nl -A inet,inet6
cat /etc/hosts            #resolution ip
resolveip IP
nslookup IP
host -a IP
dig IP -ANY
nmblookup -A IP_LOCAL
nbtscan IP
lsof -i                   #liste detaillee de l usage des fichiers et du reseau

ifconfig                  #afficher l état et l adresse du lien des interfaces actives
ifconfig INTERFACE IP MASQUE           #configure une interface reseau
ip a                      #affiche la configuration des interfaces reseaux
ip addr show              #afficher l état et l adresse du lien des interfaces actives
route -n                  #afficher toutes les tables de routage
ip route show             #afficher toutes les tables de routage
arp                       #afficher le contenu actuel des tables de cache d ARP
ip neigh                  #afficher le contenu actuel des tables de cache d ARP
sudo ip addr add IP/MASQUE dev enp0s3                 #assign IP address
sudo ip addr add broadcast IP_BROADCAST dev enp0s3    #set broadcast address
sudo ip addr del IP/MASQUE dev enp0s3                 #removing IP address
sudo ip link set enp0s3 up                            #enabling a network interface
sudo ip link set enp0s3 down                          #disabling a network interface
ip route show                                         #checking route
ip -s link                                            #checking network statistics

plog                      #afficher le journal du démon ppp
ping SITE.COM             #vérifier la connexion internet vers site.com
whois SITE.COM            #vérifier qui a enregistré site.com
curl -Is SITE.COM -L | grep HTTP/ #vérifier si un site est tombé
traceroute SITE.COM       #tracer la connexion Internet vers site.com
tracepath SITE.COM        #tracer la connexion Internet vers site.com
mtr SITE.COM              #tracer la connexion Internet vers site.com (répétitive)
dig [@DNS-SRV.COM] SITE.COM [{a|mx|any}]       #vérifier DNS de example par dns-srv
dig @x.y.z.t SOA fr       #flag ra = serveur DNS récursif
iptables -L -n            #vérifier le filtre de paquets
dlint SITE.COM            #vérifier les informations de zone DNS de example.com
route                     #affiche la table de routage
curl ifconfig.me          #IP publique
nl /etc/resolv.conf       #liste des serveurs DNS utilises
ifup -a                   #relance toutes les connexions reseaux
tshark -q -i _eth0 -w DISTANT.cap \ -a filesize:4096 tcp and ! host
curl freegeoip.net/xml/IP                      #localisation ip externe
geoiplookup IP            #sudo apt-get install geoip-bin geoip-database
cat IP.LIST | xargs -n 1 geoiplookup { }
curl ipinfo.io/IP
nc URL/IP PORT                    #test connexions reseaux
nc -zv IP PORT | PORT PORT | PORT-PORT         #test ouverture port

ssh USER@IP COMMAND       #lancer une commande distante sans connexion ssh
ssh -o "PubkeyAuthentication=no" USER@HOSTNAME              #sans clé disponible
iftop -i                  #afficher l utilisation de la bande passante
iperf                     #outil de mesure de la bande passante du protocole Internet
ifstat                    #InterFace STATistics Monitoring
iptraf
sysstat
bmon                      #surveillance portable de la bande passante
bing                      #testeur de bande passante empirique et stochastique
bwm-ng                    #moniteur de bande passante simple en mode console
ethstatus                 #moniteur de statistiques Ethernet en mode console
iptraf-ng

apt-get install tcpdump
tcpdump -D                #Visualiser les interfaces
tcpdump -v                #Capturer le trafic
tcpdump -A                #Afficher le contenu des paquets
tcpdump -n                #Afficher les adresses IP plutôt que les résolutions DNS
tcpdump -w CAPTURE.dump   #Envoi du résultat de la capture dans un fichier
tcpdump -r CAPTURE.dump   #Lecture du fichier
tcpdump -i                #Capturer le trafic d une interface spécifique
tcpdump host SITE.COM     #Capturer le trafic d un hôte spécifié
tcpdump port http         #Capturer le trafic HTTP
tcpdump -i eth0 PROTOCOL  #Filtrage par protocole tcp,udp,arp,icmp
tcpdump -A src IPS and dst IPD and port ftp    #Capturer le trafic FTP
tcpdump -c 50             #Capturer seulement 50 paquets
tcpdump -q                #capture legere
tcpdump -lA -i any -n "dst host IPMACHINE1 and src host IPMACHINE2" # ecouter le traffic entre deux machines