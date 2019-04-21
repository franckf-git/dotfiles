# gestion batterie

sudo powertop
sudo powertop --calibrate
sudo powertop --auto-tune          #appliquer
sudo powertop --calibrate          #permanent

sudo nano /etc/systemd/system/powertop.service
[Unit]
Description=Powertop tunings

[Service]
Type=oneshot
ExecStart=/usr/bin/powertop --auto-tune

[Install]
WantedBy=multi-user.target

sudo systemctl enable powertop

> ou
dnf install tlp tlp-rdw
sudo tlp stat
sudo tlp start
