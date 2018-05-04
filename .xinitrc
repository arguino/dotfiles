#! /bin/bash

#Set color theme and background
wal -i ~/Pictures/Wallpaper/Animal/wolfie.jpg -a 80
feh --bg-fill ~/Pictures/Wallpaper/Animal/wolfie.jpg --bg-fill  ~/Pictures/Wallpaper/City/brumeskyscraper.jpg

#Typematic delay and rate
xset r rate 200 30

#Mute xorg bepping sound
xset -b

#Update x resources db
xrdb -merge ~/.Xresources 

#Set media shortcuts
xbindkeys

#Make Caps-Lock act as Escape and Control
setxkbmap ca multi
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'

#Set environment variables
export DE="i3"
#export HOME="/home/alone"
export HOME="/home/calm"
export SHELL="/usr/bin/zsh"
export EDITOR="vim"
export VISUAL="vim"
export BROWSER="/bin/chromium"
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

#Set Monitor order
xrandr --output DP-1 --primary --right-of DVI-D-2

#Font directory
xset +fp ~/.fonts
xset fp rehash

#Start i3
exec i3

