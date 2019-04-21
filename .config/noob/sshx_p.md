# ssh-X affichage gui server X

> server
sudo nano /etc/ssh/sshd_config
X11Forwarding yes

> client
xhost +IP_SERVEUR
ssh -X USER@IP_SERVEUR

ssh -Y IP_SERVEUR -p PORT -i /CHEMIN/CLE_PRIVEE
COMMANDE &

> server
export DISPLAY=:10.0
> outils grahiques accessibles
