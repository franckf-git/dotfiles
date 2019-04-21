# gestion webcam

> désactivation
sudo nano /etc/modprobe.d/blacklist.conf
blacklist uvcvideo

> désactivation et activation
sudo rmmod -f uvcvideo
sudo modprobe uvcvideo

> controle
sudo apt-get install v4l-utils
v4l2-ctl --info
v4l2-ctl --list-ctrls
