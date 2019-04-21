# gestion des utilisateurs

passwd                       #changer le mot de passe de l utilisateur courant
useradd                      #ajouter utilisateur
adduser                      #ajouter utilisateur interactif
adduser USER sudo            #passer un utilisateur en sudo
usermod -aG sudo USER        #ajout au groupe sudo
deluser                      #supprime un utilisateur
addgroup                     #ajoute un groupe
delgroup                     #supprime un groupe
chown -R USER:GROUP FOLDER/  #changement du proprietaire
sudo chmod -R 777 FOLDER/    #changement des droits
chmod -R u=rwx,g=rw,o=r /PATH
chmod -R u+x,g+wx,o-w /PATH
talk                         #conversation avec un autre utilisateur du système
echo "MESSAGE" | wall        #Envoyer un message à tous les utilisateurs du système
sudo cat /etc/passwd | awk -F: '{print $ 1}'   #liste des utilisateurs
grep bash /etc/passwd        #utilisateurs physiques du système
awk -F: '$3 > 999 {print $1}' /etc/passwd | sort
more /etc/group              #tous les groupes
id USER                      #details des ID et groupes
cat /etc/shells              #voir les shells disponibles

nano /etc/sudoers            #activer sudo
%sudo    #ALL=(ALL:ALL) ALL
