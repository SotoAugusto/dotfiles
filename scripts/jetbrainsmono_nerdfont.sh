#!/bin/bash

# Define variables
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
FONT_DIR="/usr/share/fonts/JetBrainsMono Nerd Font"

# Check if root privileges are required
if [[ $EUID -ne 0 ]]; then
  echo "This script requires root privileges. Please run with sudo."
  exit 1
fi

# Check if curl is installed
if ! command -v curl &> /dev/null; then
  echo "Error: curl is not installed. Please install curl and try again."
  exit 1
fi

# Download the font archive
echo "Downloading JetBrains Mono Nerd Font..."
curl -L -o "$FONT_DIR.zip" "$FONT_URL"

# Extract the archive
echo "Extracting archive..."
unzip -q "$FONT_DIR.zip" -d "$FONT_DIR"

# Remove the archive
echo "Removing archive..."
rm -f "$FONT_DIR.zip"

# Update font cache
echo "Updating font cache..."
fc-cache -vf "$FONT_DIR"

echo "JetBrains Mono Nerd Font installed successfully!"
