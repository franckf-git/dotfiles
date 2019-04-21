# boot sur usb

> coucher une raspbian lite (2017_04_10 ou plus) sur carte sd

echo program_usb_boot_mode=1 | sudo tee -a /boot/config.txt
sudo reboot
vcgencmd otp_dump | grep 17:
>> 17:3020000a

> le OTP (One Time Programmable) memory est reprogramme pour l usb
> coucher une raspbian (2017_04_10 ou plus) sur cle usb
> retirer la carte sd brancher usb et redemmarer
