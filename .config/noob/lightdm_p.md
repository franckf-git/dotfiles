# lightdm personnalisation

sudo nano  /etc/lightdm/lightdm-gtk-greeter.conf
background=/usr/share/images/desktop-base/wallpaper.png
font-name=monoscape

sudo apt-get install numlockx
sudo nano /etc/lightdm/lightdm.conf
greeter-setup-script=/usr/bin/numlockx on

# connexion sans login

sudo nano /etc/lightdm/lightdm.conf
[SeatDefaults]
pam-service=lightdm
pam-autologin-service=lightdm-autologin
autologin-user=USER
autologin-user-timeout=0

groupadd -r autologin
gpasswd -a USER autologin

> mettre fond d ecran dans /usr/share/images/desktop-base/
update-alternatives --config FICHIER.jpg

> ou
echo 'startx' >> .bashrc

# fenetre de connexion lightdm login deroulant

sudo nano /etc/lightdm/lightdm.conf
[SeatDefaults]
greeter-hide-users=false
