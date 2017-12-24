#! /bin/bash

#Set color theme and background
wal -i ~/Pictures/Wallpaper/Winter/wallhaven-313222.jpg -a 80

#Mute xorg bepping sound
xset -b

#Update x resources db
xrdb -merge ~/.Xresources 

#Set media shortcuts
xbindkeys

#Make Caps-Lock act as Escape and Control
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'

#Set environment variables
export DE="i3"
export HOME="/home/alone"
export SHELL="/bin/zsh"
export EDITOR="/bin/vim/"
export VISUAL="/bin/vim/"
export BROWSER="/bin/google-chrome-stable"

#Start i3
exec i3
