#!/bin/bash

# Notion URL
notion_url="https://www.notion.so"

# Create a Notion.desktop file
cat <<EOF > ~/Desktop/Notion.desktop
[Desktop Entry]
Name=Notion
Comment=All-in-one workspace
Exec=xdg-open $notion_url
Icon=notion
Terminal=false
Type=Application
Categories=Utility;
EOF

# Download Notion icon
wget -O ~/Desktop/notion.png https://www.notion.so/images/favicon.ico

# Convert .ico to .png
sudo apt-get install -y icoutils
icotool -x -o ~/Desktop/notion.png ~/Desktop/notion.png

# Move the icon to the appropriate directory
sudo mv ~/Desktop/notion.png /usr/share/icons/

# Update icon cache
sudo gtk-update-icon-cache /usr/share/icons
