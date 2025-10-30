#!/bin/bash

CURRENT=solarized
WALLPAPER=/home/justin/Images/"Louis Coyle/The 6th Station/night.png"

ln -sf "$WALLPAPER" ~/Images/.wallpaper

ln -sf ~/.local/share/styles/"$CURRENT"-dark.css ~/.local/share/styles/colorscheme

sed -i 's/light/dark/g' ~/.config/btop/btop.conf 

for SOFT in sway zathura foot fuzzel mako
do
	ln -sf ~/.config/"$SOFT"/"$CURRENT"-dark ~/.config/"$SOFT"/.colorscheme
done

gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark
gsettings set org.gnome.desktop.interface icon-theme Papirus-Dark

sway reload
killall -SIGUSR2 waybar
makoctl reload
