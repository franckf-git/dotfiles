# tor en cli

sudo apt-get install tor

sudo nano /etc/tor/torrc 
SocksPort 9050
ControlPort 9051
CookieAuthentication 0

sudo systemctl restart tor.service
tor --verify-config
torify wget http://checkip.dyndns.org -O - -o /dev/null | cut -d : -f 2 | cut -d \< -f 1

sudo apt-get install privoxy

sudo nano /etc/privoxy/config
listen-address   localhost:8118
forward-socks5   /   localhost:9050
forward-socks4a   /   localhost:9050

sudo systemctl restart privoxy.service
/usr/bin/chromium --proxy-server="socks5://127.0.0.1:8118"
