
# File Name: /home/alan/bin/i3lock.sh
# Author: Alan Tse
# mail:xie2001012@gmail.com
# Created Time: 2016年02月29日 星期一 15时11分19秒
#########################################################################
#!/bin/sh -e

# Take a screenshot
scrot ~/Pictures/i3lock_pic.png

#Pixellate it 10x
mogrify -scale 10% -scale 1000% ~/Pictures/i3lock_pic.png

#Lock screen displaying this image.
i3lock -i ~/Pictures/i3lock_pic.png

# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off

