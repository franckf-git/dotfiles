#!/bin/bash
#add with
#sudo crontab -e
#00 07 * * 0 /home/$USER/config/scripts/security_scan.sh

#define user and user home
MYUSER=$(cat /etc/passwd | grep home | cut -d ":" -f 1)
MYHOME=/home/$MYUSER

if [ -f /usr/bin/freshclam ]
    then
        /usr/bin/freshclam -v
fi

{
#root kit
    /usr/sbin/chkrootkit | grep -v "! ;3,17,3553;4"
    rkhunter --update
    rkhunter --propupd
    rkhunter -c --rwo
    lynis audit system
} >> $MYHOME/log_security_$(date +\%F).log 2>&1

#change owner
chown $MYUSER:$MYUSER $MYHOME/log_security_$(date +\%F).log

# notify the user
sudo -u $MYUSER notify-send " The security check is over." "Please check log_security_$(date +\%F).log"

exit 0
