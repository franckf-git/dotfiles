# ssh

ssh -p PORT USER@IP
sudo apt-get install ssh

sudo nano /etc/ssh/sshd_config
ListenAddress 192.168.0.1 #(client)
ListenAddress 192.168.0.2 #(serveur)
Port PORT
PermitRootLogin no
PermitEmptyPasswords no
Protocole 2
AllowUsers USERS
Banner /etc/banner

sudo systemctl restart ssh
sudo systemctl status ssh

> monter un partage ssh sur le client
sshfs USER@MACHINE:/home/SERVER mnt/CLIENT
