#!/bin/bash
# install.sh - Main setup script

echo "Starting main setup..."

# Run Zsh setup
echo "Configuring Zsh..."
./setup-scripts/zsh-setup.sh

# Run Git setup
echo "Configuring Git..."
./setup-scripts/git-setup.sh

echo "Setup complete!"