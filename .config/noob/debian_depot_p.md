# debian depots

sudo nano /etc/apt/sources.list

# Debian stretch depot principal + paquets non libres
deb http://ftp.fr.debian.org/debian/ stretch main contrib non-free

# Debian stretch mises-a-jour de securite + paquets non libres
deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free

# Debian stretch mises-a-jour volatiles + paquets non libres
deb http://ftp.fr.debian.org/debian/ stretch-updates main contrib non-free

# Backports repository
deb http://ftp.fr.debian.org/debian/ stretch-backports main contrib non-free
