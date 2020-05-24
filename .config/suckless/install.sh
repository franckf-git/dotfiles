#! /bin/sh

# sur une installation avec un environnement déjà présent
sudo dnf install make gcc libX11-devel libXinerama-devel libXft-devel

sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop 

cd dwm
sudo make clean install

# sur installation minimum
sudo systemctl enable lightdm
sudo systemctl set-default lightdm.target
sudo yum groupinstall -y "X Window System"
sudo yum install -y lightdm epel-release

#git clone git://git.suckless.org/dwm
#git clone git://git.suckless.org/st
#git clone git://git.suckless.org/dmenu
#cd dwm && make
