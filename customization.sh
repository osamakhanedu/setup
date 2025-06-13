#!/bin/bash


# Start message
echo "Start customization"


# Update package lists
sudo apt update

#install gnome shell extension manager
sudo apt install gnome-shell-extension-manager


#install gnome tweak tool
sudo apt install gnome-tweaks


# on icon click minimize the app if it is open 
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# open window in center instead of top left corner 
gsettings set org.gnome.mutter center-new-windows true


