# Dev Setup

This repository contains my personalized development environment setup, including configuration files (dotfiles), SSH setup instructions, and scripts to automate setup on any new machine. It ensures a consistent environment across devices, making it easy to get started with development quickly.

## Overview

This repository includes:
- Dotfiles: Custom configurations for Zsh, Git, SSH, Vim, etc.
- Setup Scripts: Automated scripts to configure and set up the development environment.
- Guides: Detailed instructions for SSH, Vim, and other tools.
- Additional Configurations: Custom settings for IDEs and tools like Cursor AI and Vim.

## Table of Contents

- [Getting Started](#getting-started)
- [Repository Structure](#repository-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Guides](#guides)
- [Contributing](#contributing)

---

## Getting Started

To use this setup on a new machine:

1. **Clone the Repository**:
   Clone this repository to a location on your machine, such as `~/Dev` or `~/Projects`.

   ```bash
   git clone git@github-personal:devsfm/dev-setup.git
   cd dev-setup

2. Run the Setup Script:
The main setup script will symlink your dotfiles, set up Zsh and Git configurations, and install any required tools.

./setup-scripts/install.sh

This script will configure your environment and apply your custom settings.

## Repository Structure

```
dev-setup/
├── dotfiles/                # Directory for all dotfiles
│   ├── .zshrc               # Zsh configuration
│   ├── .gitconfig           # Global Git configuration
│   ├── .ssh/config          # SSH configuration for multiple GitHub accounts
│   └── .vimrc               # Vim configuration
├── setup-scripts/           # Automated setup scripts
│   ├── install.sh           # Main setup script
│   ├── zsh-setup.sh         # Zsh setup, including Oh My Zsh installation
│   └── git-setup.sh         # Git configuration setup script
├── guides/                  # Directory for detailed setup guides
│   ├── SSH-setup-guide.md   # Guide for setting up SSH for multiple GitHub accounts
│   ├── Vim-setup-guide.md   # Guide for setting up Vim
│   └── other-guides.md      # Other guides (e.g., IDE, Zsh)
├── config/                  # Additional configurations for tools
│   ├── cursor/              # Settings for Cursor AI IDE
│   └── other-tools/         # Other tool configurations
└── README.md                # Project overview and setup instructions
```

## Installation

1. Cloning and Running the Main Setup Script

   To set up this repository on any new machine, clone the repository and run the main install.sh script:

   ```bash
   git clone git@github-personal:devsfm/dev-setup.git
   cd dev-setup
   ./setup-scripts/install.sh
   ```

   The script will:
   - Install Oh My Zsh (if not already installed)
   - Configure Git with global user settings
   - Symlink all dotfiles to your home directory

2. SSH Configuration

   To set up separate SSH keys for work and personal GitHub accounts, refer to the SSH Setup Guide included in this repository. It details generating SSH keys, configuring SSH for multiple accounts, and adding keys to GitHub.

## Usage

- Zsh Configuration: Customize your `.zshrc` with aliases, themes, and plugins. The `zsh-setup.sh` script will install Oh My Zsh and apply your `.zshrc` settings.
- Git Configuration: The `git-setup.sh` script will set up your global Git configuration (name, email). For work-specific Git settings, configure local Git settings in individual repositories as needed.
- Vim Configuration: The `.vimrc` file in `dotfiles/` contains custom Vim settings. Modify it to add plugins and configurations as needed.

## Guides

The `guides` folder contains detailed instructions for setting up various tools:

### Core Setup Guides
- [SSH Setup Guide](./guides/SSH-setup-guide.md): Guide for configuring multiple GitHub accounts with SSH keys, including:
  - Generating separate SSH keys for work and personal accounts
  - Configuring SSH agent and config file
  - Setting up repository-specific Git configurations
  
- [Zsh Setup Guide](./guides/ZSHRC-setup-guide.md): Guide for customizing your Zsh environment, covering:
  - Oh My Zsh installation and configuration
  - Powerlevel10k theme setup
  - Essential plugins for development
  - Troubleshooting common issues

### Additional Resources
- Additional guides for tools like Vim and other configurations
- IDE-specific setup instructions

Refer to these guides for detailed setup instructions for each component of your development environment.

## Contributing

Feel free to fork this repository and add your customizations or improvements. Contributions can include:
- Additional scripts for setup automation
- New configurations for different tools or IDEs
- Improvements to the SSH setup guide or other documentation

