# gestion LED au demarrage

PWR (rouge) - la LED d alimentation
eteinte  : verifier l alimentation du Pi
clignote : regulateur 3.3 volts n a plus assez de tension

ACT (verte) - la LED d activite du Pi
eteinte  : probleme avec la carte SD, formatage, corruption, version
3 eclats : start.elf introuvable
4 eclats : start.elf pas lance
7 eclats : kernel.img introuvable

echo 0 >/sys/class/leds/led0/brightness      # Éteindre la LED verte (ACT)
echo 1 >/sys/class/leds/led0/brightness      # la rallumer
echo 0 >/sys/class/leds/led1/brightness      # Éteindre la LED rouge (PWR)
echo 1 >/sys/class/leds/led1/brightness      # la rallumer
