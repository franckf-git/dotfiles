# reverse ssh

> sur client on autorise les tunnels
sudo nano /etc/ssh/sshd_config
AllowTcpForwarding yes

> on ouvre la connexion sur le serveur vers le client
> serveur
ssh -NR 22222:localhost:22 USER@IP_CLIENT

> client
ssh -p 22222 USER@127.0.0.1

ssh -R PORT_LOCAL:IP_SERVEUR_DISTANT:PORT_SERVEUR_DISTANT UTILISATEUR@IP_SERVEUR_SSH
