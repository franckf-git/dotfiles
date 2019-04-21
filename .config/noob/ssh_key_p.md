# ssh echange de cle

> client

cd $HOME/.ssh
ssh-keygen -t rsa -b 4096
ssh-keygen -o -a 100 -t ed25519 -f id_ed -C "COMMENTAIRES"

> clé privée (id_rsa)
> clé publique (id_rsa.pub)

ssh -i ~/.ssh/id_ed -o "IdentitiesOnly=yes" USER_SERVER@SERVER

> Envoyer votre clé publique vers le serveur

ssh-copy-id -i ~/.ssh/id_rsa.pub root@SERVER
cat id-rsa.pub | ssh USER@SERVER 'cat >> .ssh/authorized_keys'

> serveur

sudo apt-get install openssh-server
sudo service ssh start

> ou pour la clé publique

mkdir ~/.ssh
chmod 0700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 0644 ~/.ssh/authorized_keys
cat id_rsa.pub >> $HOME/.ssh/authorized_keys

sudo nano /etc/ssh/sshd_config
HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_ed25519_key
PermitRootLogin no
PubkeyAuthentication yes
AuthorizedKeysFile .ssh/authorized_keys
PasswordAuthentication no
PermitEmptyPasswords no
X11Forwarding yes
PrintMotd yes
UsePAM no

sudo systemctl restart sshd

> client simplification

nano ~/.ssh/config
Host *
    UseKeychain yes

Host NOM_CONNEXION
    HostName IP_SERVER
    User USER_SERVER
    Port 1234
    IdentityFile ~/.ssh/id_KEY
    IdentitiesOnly yes

ssh NOM_CONNEXION

> ou

ssh USER@IP_DISTANTE -p NUMERO_PORT -i /CHEMIN/CLE_PRIVEE

> ou

ssh-add /CHEMIN/CLE_PRIVEE
echo "IdentityFile /CHEMIN/CLE_PRIVEE" > ~/.ssh/config
chmod 600 ~/.ssh/config
ssh USER@IP_DISTANTE -p NUMERO_PORT

> supprimer les clés

ssh-add -d ~/.ssh/id_rsa

> supprimer une entrée known_hosts

ssh-keygen -R NOMDUSERVEUR
