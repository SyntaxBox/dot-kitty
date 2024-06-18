#!/bin/bash
# Install kitty
echo "Installing kitty..."
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Copy configuration files
echo "Copying configuration files..."
cp current-theme.conf kitty.conf "$KITTY_CONFIG_DIR/"

# Verify the installation
echo "Verifying the installation..."
if command_exists kitty; then
  echo "Kitty installation complete! Version: $(kitty --version)"
else
  echo "Kitty installation failed."
fi

echo "Installation Completed!"
