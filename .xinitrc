#! /bin/bash

#Set color theme and background
#feh --bg-fill ~/Pictures/Wallpaper/Animal/wolfie.jpg --bg-fill  ~/Pictures/Wallpaper/City/brumeskyscraper.jpg

#Typematic delay and rate
xset r rate 200 30

#Mute xorg bepping sound
xset -b

#Update x resources db
xrdb -merge ~/.Xresources 

#Set media shortcuts
xbindkeys

#Make Caps-Lock act as Escape and Control
#setxkbmap ca multi
#setxkbmap -option ctrl:nocaps
#xcape -e 'Control_L=Escape'

#Set environment variables
export DE="i3"
export SHELL="/usr/bin/zsh"
export EDITOR="vim"
export VISUAL="vim"
export BROWSER="/bin/chromium"
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8


#Font directory
xset +fp ~/.fonts
xset fp rehash

#Desktop specifics
if [ "$(whoami)" == 'calm' ]; then
	export HOME="/home/calm"
	#Set Monitor order
	xrandr --output DisplayPort-0 --primary --right-of DVI-D-1
	wal -i ~/Pictures/Wallpaper/Weebo/dreamyscape.png -a 80
fi

#Laptop specifics
if [ "$(whoami)" == 'alone' ]; then
	xinput --set-prop 11 "libinput Natural Scrolling Enabled" 1
	export HOME="/home/alone"
	wal -i ~/Pictures/Wallpaper/Weebo/splash.jpg -a 80
fi


#Start i3
exec i3

