# serveur ntp france

sudo nano /etc/ntp.conf
server 0.fr.pool.ntp.org
server 1.fr.pool.ntp.org
server 2.fr.pool.ntp.org
server 3.fr.pool.ntp.org

ntpq -p
