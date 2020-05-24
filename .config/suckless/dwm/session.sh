# Statusbar loop
while true; do
   batterie=$(upower -i /sys/class/power_supply/BAT0)
   #upower -i /org/freedesktop/UPower/devices/battery_BAT0
   #cat /sys/class/power_supply/BAT0/capacity
   wifi=$(ip a | grep wlp0 | grep state | cut -d " " -f9)
   date=$( date +"%F %R" )
   xsetroot -name "$date"
   sleep 1m    # Update time every minute
done &

# Autostart section
firefox & 
xfce4-power-manager &

exec dwm
