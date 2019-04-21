# snap

> Activer snap

sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap
sudo systemctl start snapd.service # opt ??
sudo systemctl enable snapd.service

snap search NAME           # search an apps
snap find                  # search an apps in the repos
snap list NAME             # search an apps
sudo snap install NAME     # install an apps
snap info NAME
snap list                  # list all installed apps
sudo snap refresh NAME     # update an installed snap app
sudo snap remove NAME      # remove a snap
snap services              # list enabled services
