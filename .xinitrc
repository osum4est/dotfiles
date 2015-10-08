#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

xrdb -merge ~/.Xresources &
gnome-session
#exec sh ~/.fehbg &
#gnome-session
#exec xrdb -merge ~/.Xresources
#exec sxhkd &
#exec bspwm &
#exec i3 &
#exec compton -c
