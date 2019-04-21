# message of the day ssh custom

nano ON_LOGIN.sh
#! /usr/bin/env bash

# Basic info
HOSTNAME=`uname -n`
ROOT=`df -Ph | grep root | awk '{print $4}'`
HOME=`df -Ph | grep home | awk '{print $4}'`

# System load
MEMORY1=`free -t -m | grep Total | awk '{print $3" MB";}'`
MEMORY2=`free -t -m | grep "Mem" | awk '{print $2" MB";}'`
LOAD1=`cat /proc/loadavg | awk {'print $1'}`
LOAD5=`cat /proc/loadavg | awk {'print $2'}`
LOAD15=`cat /proc/loadavg | awk {'print $3'}`

echo "
===============================================
 - Hostname............: $HOSTNAME
 - Disk Space..........: $ROOT remaining
 - Disk Home...........: $HOME remaining
===============================================
 - CPU usage...........: $LOAD1, $LOAD5, $LOAD15 (1, 5, 15 min)
 - Memory used.........: $MEMORY1 / $MEMORY2
 - Swap in use.........: `free -m | tail -n 1 | awk '{print $3}'` MB
===============================================
"

sudo mv ON_LOGIN.sh /etc/update-motd.d/05-info
sudo chmod +x /etc/update-motd.d/05-info
sudo echo "" > /etc/motd
