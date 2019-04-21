# screensaver CLI

> set the console blanking in seconds

cat /sys/module/kernel/parameters/consoleblank

> to turn screen blanking off or set the number of seconds of inactivity

sudo nano /boot/cmdline.txt
consoleblank=0
