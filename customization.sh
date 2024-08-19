#!/bin/bash


# Start message
echo "Start customization"


# Update package lists
sudo apt update

#install gnome shell extension manager
sudo apt install gnome-shell-extension-manager


#install gnome tweak tool
sudo apt install gnome-tweaks


# gnome setting to open new window in center
# gsettings set org.gnome.mutter center-new-windows true
