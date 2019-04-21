# ecran waveshare

> Turn on the "backlight" switch then connect the LCD to your Pi (HDMI Port of LCD -> HDMI Port of Pi; USB Port of LCD -> USB Port of Pi; 5V~2A power supply). Download the Raspbian image from Raspberry Pi web site. Write the image to a TF card and append the following lines to the config.txt file which is located in the root of your TF card:

sudo nano /boot/config.txt
max_usb_current=1
hdmi_group=2
hdmi_mode=87
hdmi_cvt 1024 600 60 6 0 0 0
hdmi_drive=1
