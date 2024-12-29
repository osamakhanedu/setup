#!/bin/bash


# Start message
echo "Start customization"


# Update package lists
sudo apt update

#install gnome shell extension manager
sudo apt install gnome-shell-extension-manager


#install gnome tweak tool
sudo apt install gnome-tweaks


# minimize behavior on icon click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

