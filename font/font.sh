#!/bin/bash

# Exit on error
set -e

# Font URL (latest JetBrains Mono from GitHub)
FONT_URL="https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip"
TMP_DIR="/tmp/jetbrains-mono"
FONT_DIR="$HOME/.local/share/fonts"

# Create temp and font directories
mkdir -p "$TMP_DIR"
mkdir -p "$FONT_DIR"

echo "🔽 Downloading JetBrains Mono..."
wget -qO "$TMP_DIR/jetbrains-mono.zip" "$FONT_URL"

echo "📦 Extracting font files..."
unzip -q "$TMP_DIR/jetbrains-mono.zip" -d "$TMP_DIR"

echo "📁 Installing fonts to $FONT_DIR..."
cp "$TMP_DIR"/JetBrainsMono-*/ttf/*.ttf "$FONT_DIR"

echo "🔄 Updating font cache..."
fc-cache -f -v > /dev/null

# Set JetBrains Mono as default in GNOME Terminal
echo "🎨 Setting JetBrains Mono as the GNOME Terminal font..."

PROFILE_ID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')
PROFILE_PATH="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/"

# Enable custom font usage
gsettings set "$PROFILE_PATH" use-system-font false
gsettings set "$PROFILE_PATH" font 'JetBrains Mono 13'

echo "✅ JetBrains Mono installed and set as default terminal font."

