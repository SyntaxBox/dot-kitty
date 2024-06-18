#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Install dependencies
echo "Installing dependencies..."
sudo apt install -y curl libxcb1 libxcb-render0 libxcb-shape0 libxcb-xfixes0

# Define the latest version URL and installation directory
KITTY_URL="https://sw.kovidgoyal.net/kitty/installer.sh"
INSTALL_DIR="$HOME/.local/kitty"

# Download and install Kitty
echo "Downloading and installing Kitty..."
curl -L "$KITTY_URL" | sh /dev/stdin installer=$INSTALL_DIR

# Create a symbolic link to make Kitty accessible globally
echo "Creating symbolic link..."
mkdir -p "$HOME/.local/bin"
ln -sf "$INSTALL_DIR/bin/kitty" "$HOME/.local/bin/kitty"
ln -sf "$INSTALL_DIR/bin/kitten" "$HOME/.local/bin/kitten"

# Add Kitty to the PATH if not already present
if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
  echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
  echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc
fi

# Apply the changes
echo "Applying changes..."
source ~/.bashrc || true
source ~/.zshrc || true

# Create the Kitty configuration directory
KITTY_CONFIG_DIR="$HOME/.config/kitty"
mkdir -p "$KITTY_CONFIG_DIR"

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
