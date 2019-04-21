# protection basique contre attaques classiques

echo "1" > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts          #anti smurf (attaque par rebond via ping)
echo "0" > /proc/sys/net/ipv4/conf/all/accept_source_route         #source routing
echo "1" > /proc/sys/net/ipv4/tcp_syncookies                       #anti syn flood (déni de service)
echo "1024" > /proc/sys/net/ipv4/tcp_max_syn_backlog
echo "1" > /proc/sys/net/ipv4/conf/all/rp_filter
echo "1" > /proc/sys/net/ipv4/icmp_ignore_bogus_error_responses    #pas de log pour les mauvais icmp
echo "0" > /proc/sys/net/ipv4/conf/all/accept_redirects            #desactive redirections icmp
echo "0" > /proc/sys/net/ipv4/conf/all/secure_redirects
