#!/bin/bash
gsettings set org.gnome.shell.ubuntu color-scheme prefer-light
gsettings set org.gnome.desktop.interface gtk-theme Yaru
gsettings set org.gnome.desktop.interface color-scheme prefer-light
read -p "Do you want to turn off night light: y/n " choice
if [ "$choice" = "y" ]; then
        gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
        echo "Switched to light theme and turned of night light"
else 
        echo "Switched to light theme" 
fi
