# Statusbar loop
while true; do
   batterie=$(cat /sys/class/power_supply/BAT0/capacity)
   wifi=$(ip a | grep wlo1 | grep state | cut -d " " -f9)
   date=$(date +"%F %R")
   xsetroot -name "W: $wifi - B: $batterie % - $date"
   sleep 1m    # Update time every minute
done &

# Autostart section
#firefox &
xfce4-power-manager &

exec dwm
