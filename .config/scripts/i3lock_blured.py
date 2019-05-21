#!/usr/bin/python3

from PIL import Image,ImageFilter,ImageDraw,ImageFont
import subprocess

# message to display
message = ""

# size of the screen
W, H = (1840,1080)

# take a screenshot
subprocess.run(["scrot", "/tmp/base.png"])

# open the image
original = Image.open("/tmp/base.png").convert('RGBA')

# blur the image
blurred = original.filter(ImageFilter.GaussianBlur(5))

# make a blank image for the text
txt = Image.new('RGBA', blurred.size, (255,255,255,0))
# get a font
font = ImageFont.truetype('/usr/share/fonts/dejavu/DejaVuSansMono-Bold.ttf', 40)
fonticon = ImageFont.truetype('/usr/share/fonts/fontawesome/fontawesome-webfont.ttf', 120)
# get a drawing context
d = ImageDraw.Draw(txt)
# size of the text
w,h = d.textsize(message)

# draw text - center text and screen
d.text(((W-w)/2,(H-h)/2), "", font=fonticon, fill=(255,255,255,128))
d.text(((W-w)/2,(H-h)/2), message, font=font, fill=(255,255,255,128))

# incrust the text
out = Image.alpha_composite(blurred, txt)

# save the new image
out.save("/tmp/locked.png")

# use the image for the lock
subprocess.run(["i3lock", "--ignore-empty-password", "--show-failed-attempts", "--color=2a1d17", "--image=/tmp/locked.png"])