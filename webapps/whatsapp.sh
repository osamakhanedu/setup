#!/bin/bash

# Create a desktop shortcut for WhatsApp Web
cat <<EOF > ~/Desktop/WhatsApp.desktop
[Desktop Entry]
Name=WhatsApp Web
Comment=WhatsApp Web
Exec=xdg-open https://web.whatsapp.com/
Icon=whatsapp
Terminal=false
Type=Application
Categories=Network;InstantMessaging;
EOF

# Download WhatsApp icon
wget -O ~/Desktop/whatsapp.png https://cdn.jsdelivr.net/npm/whatsapp-web@1.0.0/dist/assets/img/favicon.png

# Move the icon to the appropriate directory
sudo mv ~/Desktop/whatsapp.png /usr/share/icons/

# Update icon cache
sudo gtk-update-icon-cache /usr/share/icons
