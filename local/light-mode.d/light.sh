#!/bin/bash

CURRENT=solarized
WALLPAPER=/home/justin/Images/"Louis Coyle/The 6th Station/day.png"

ln -sf "$WALLPAPER" ~/Images/.wallpaper

ln -sf ~/.local/share/styles/"$CURRENT"-light.css ~/.local/share/styles/colorscheme

sed -i 's/dark/light/g' ~/.config/btop/btop.conf 

for SOFT in sway zathura foot fuzzel mako
do
	ln -sf ~/.config/"$SOFT"/"$CURRENT"-light ~/.config/"$SOFT"/.colorscheme
done

gsettings set org.gnome.desktop.interface gtk-theme Adwaita
gsettings set org.gnome.desktop.interface icon-theme Papirus

sway reload
killall -SIGUSR2 waybar
makoctl reload
