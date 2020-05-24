# Statusbar loop
while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

# Autostart section
firefox & 
xfce4-power-manager &

exec dwm
