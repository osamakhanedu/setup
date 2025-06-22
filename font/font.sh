#!/bin/bash

# Exit on error
set -e

# Font URL (latest JetBrains Mono from GitHub)
FONT_URL="https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip"
TMP_DIR="/tmp/jetbrains-mono"
FONT_DIR="$HOME/.local/share/fonts"
FONT_SIZE=13

# Check for required commands
for cmd in wget unzip fc-cache gsettings; do
    if ! command -v "$cmd" &> /dev/null; then
        echo "❌ Required command '$cmd' not found. Please install it."
        exit 1
    fi
done

# Create temp and font directories
mkdir -p "$TMP_DIR"
mkdir -p "$FONT_DIR"

echo "🔽 Downloading JetBrains Mono..."
wget -qO "$TMP_DIR/jetbrains-mono.zip" "$FONT_URL"

echo "📦 Extracting font files..."
unzip -q "$TMP_DIR/jetbrains-mono.zip" -d "$TMP_DIR"

echo "📁 Installing fonts to $FONT_DIR..."
find "$TMP_DIR" -type f -path "*/ttf/*.ttf" -exec cp {} "$FONT_DIR" \;

echo "🔄 Updating font cache..."
fc-cache -f -v > /dev/null

# Set JetBrains Mono as default in GNOME Terminal
if command -v gsettings &> /dev/null; then
    echo "🎨 Setting JetBrains Mono as the GNOME Terminal font..."

    PROFILE_ID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')
    PROFILE_PATH="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/"

    # Enable custom font usage
    gsettings set "$PROFILE_PATH" use-system-font false
    gsettings set "$PROFILE_PATH" font "JetBrains Mono $FONT_SIZE"
else
    echo "⚠️  gsettings not found. Skipping GNOME Terminal font configuration."
fi

# Clean up
rm -rf "$TMP_DIR"

echo "✅ JetBrains Mono installed and set
