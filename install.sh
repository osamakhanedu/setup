#!/bin/bash

echo "Installation started."

# Update package lists
sudo apt update

# Install curl and wget
sudo apt install -y curl wget

# Install Zsh
sudo apt install -y zsh

# Install Oh My Zsh (unattended, so it doesn't switch shell)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install Snap packages
sudo snap install postman
sudo snap install vlc
sudo snap install intellij-idea-community --classic
sudo snap install pinta
sudo snap install dbeaver-ce
sudo snap install obsidian --classic
sudo snap install brave
sudo snap install xournalpp

# Set Zsh as the default shell (do this last)
chsh -s $(which zsh)

echo "Installation completed. Please restart your system."