#!/bin/bash


# Start message
echo "Installation started."


# Update package lists
sudo apt update

# install curl and wget 
sudo apt install curl wget 

# Install VSCode
#wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
#sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
#sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode #stable main" > /etc/apt/sources.list.d/vscode.list'
#sudo apt-get update
#sudo apt-get install code -y

#install snap package vscode
sudo snap install code --classic



# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
rm google-chrome-stable_current_amd64.deb


# Install Zsh and Oh My Zsh
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Make Zsh the default shell
chsh -s $(which zsh)

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# # Load NVM
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"



# Install Insomnia REST Client from Snap
sudo snap install insomnia

# Install VLC from Snap
sudo snap install vlc

# Install IntelliJ IDEA Community Edition
sudo snap install intellij-idea-community --classic


#  Get this out of snap
sudo snap install pinta

# install dbeaver ce
sudo snap install dbeaver-ce


# install brave 
sudo snap install brave

# You may need to log out and back in for changes to take effect
echo "Installation completed. Please restart your system."
