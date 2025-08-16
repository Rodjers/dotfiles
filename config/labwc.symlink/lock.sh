#!/bin/sh
# create temporary image file
image=$(mktemp --suffix=.png)
# put text into image
text="Enter password:"
convert -size 1920x1080 xc:'#24273a' -fill '#8aadf4' -font "Source-Code-Pro-Light-for-Powerline" -pointsize 128 -gravity center -annotate +0+0 "$text" $image
# lock screen
swaylock --show-failed-attempts --indicator-caps-lock --image $image
# remove image
rm $image
