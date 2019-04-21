# protonvpn

> inscription sur ProtonVPN.com
> Account > OpenVPN Login > OpenVPN Login | OpenVPN Password

sudo apt-get install openvpn
wget https://protonvpn.com/support/wp-content/uploads/2017/06/ProtonVPN_config_linux.zip

> ou Download > Download All configurations

mkdir .protonvpn
unzip ProtonVPN_config_linux.zip -d .protonvpn
cd .protonvpn
sudo openvpn PAYS-00.protonvpn.com.udp1194.ovpn

> insérez identifiants de connexion : OpenVPN Login | OpenVPN Password
