#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

#urxvtd -q -f -o &
#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

setxkbmap -layout us,ca
setxkbmap -option grp:alt_shift_toggle

synclient TapButton1=1
synclient VertTwoFingerScroll=1
#synclient HorizTwoFingerScroll=1

pactl set-sink-mute 1 0
amixer set Master 15%

numlockx on

#xsetwacom --set "Wacom Bamboo 16FG 4x5 Finger pad" ScrollDistance 150
#xsetwacom --set "Wacom Bamboo 16FG 4x5 Finger pad" Button 1 "key shift"
#xsetwacom --set "Wacom Bamboo 16FG 4x5 Finger pad" Button 2 "key alt"
#xsetwacom --set "Wacom Bamboo 16FG 4x5 Finger pad" Button 3 "key control"
#xsetwacom --set "Wacom Bamboo 16FG 4x5 Finger pad" Button 4 "key space"


#exec xterm
exec ck-launch-session dbus-launch i3
