#!/bin/bash
gsettings set org.gnome.shell.ubuntu color-scheme prefer-dark
gsettings set org.gnome.desktop.interface gtk-theme Yaru-dark
gsettings set org.gnome.desktop.interface color-scheme prefer-dark 
read -p "Do you want to turn on night light: y/n " choice
if [ "$choice" = "y" ]; then
        gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
        echo "Switched to dark theme and turned on night light"
else 
        echo "Switched to dark theme" 
fi
