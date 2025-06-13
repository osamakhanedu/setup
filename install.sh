#!/bin/bash


# Start message
echo "Installation started."


# Update package lists
sudo apt update

# install curl and wget 
#sudo apt install curl wget 

# Install Zsh and Oh My Zsh
#sudo apt install zsh
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Make Zsh the default shell
# chsh -s $(which zsh)


# Install Insomnia REST Client from Snap
sudo snap install postman


# Install VLC from Snap
sudo snap install vlc

# Install IntelliJ IDEA Community Edition
sudo snap install intellij-idea-community --classic


#  Get this out of snap
sudo snap install pinta

# install dbeaver ce
sudo snap install dbeaver-ce

sudo snap install obsidian --classic

# install brave 
sudo snap install brave

# install note taking app
sudo snap install xournalpp


# You may need to log out and back in for changes to take effect
echo "Installation completed. Please restart your system."
