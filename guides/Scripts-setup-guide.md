# setup-scripts Guid

This guide provides an overview of the setup-scripts directory, explaining the purpose of each script and how to use them to automate the setup of your development environment. By using these scripts, you can quickly set up a consistent environment across multiple machines, making it easy to replicate configurations for Zsh, Git, and other tools.

## Why Use Setup Scripts?

Setting up a development environment manually can be time-consuming and error-prone. With automated setup scripts, you can:
* Ensure Consistency: Scripts allow you to apply the same configurations across different machines.
* Save Time: Once written, scripts automate repetitive tasks, reducing setup time.
* Easily Replicate Environments: Useful for new installations, remote work, or setting up multiple machines with the same configurations.
* Simplify Maintenance: When updating configurations, you can modify scripts rather than adjusting settings manually.

## Directory Structure

The setup-scripts directory contains three main scripts:
```
setup-scripts/
│   ├── install.sh       # Main setup script that calls other scripts
│   ├── zsh-setup.sh     # Script to configure Zsh, Powerlevel10k, and custom aliases
│   └── git-setup.sh     # Script to configure Git for personal and work accounts
```
## Script Details

### 1. install.sh: Main Setup Script

This is the main script that runs other scripts to configure both Zsh and Git. Running this script is the quickest way to set up everything at once.

- **Purpose**: Calls zsh-setup.sh and git-setup.sh to configure Zsh and Git
- **Usage**:
```bash
./setup-scripts/install.sh
```

### 2. zsh-setup.sh: Zsh Configuration Script

This script installs and configures Zsh with Oh My Zsh, sets up the Powerlevel10k theme, and adds custom aliases, functions, and plugins for productivity.

- **Purpose**: Automates the installation of Zsh customizations and configuration
- **What it Sets Up**:
  - Oh My Zsh: A framework for managing Zsh configurations
  - Powerlevel10k: A customizable prompt theme
  - Plugins and Aliases: Adds productivity-enhancing aliases and functions, such as quick Git commands, system shortcuts, and port management commands
- **Usage**:
```bash
./setup-scripts/zsh-setup.sh
```

### 3. git-setup.sh: Git Configuration Script

This script sets up global Git configuration and configures separate profiles for work and personal use, with conditional includes based on directory paths.

- **Purpose**: Ensures that Git is set up for both work and personal repositories with different identities
- **What it Sets Up**:
  - Global Configuration: Basic Git settings for editor and autocrlf
  - Work and Personal Configurations: Separate .gitconfig files for each profile, allowing you to use different names and emails based on the project directory
- **Usage**:
```bash
./setup-scripts/git-setup.sh
```

## How to Run the Setup Scripts

To get started with the setup scripts:

1. Make Scripts Executable: Ensure each script has the proper permissions to run.
```bash
chmod +x setup-scripts/install.sh
chmod +x setup-scripts/zsh-setup.sh
chmod +x setup-scripts/git-setup.sh
```

2. Run the Main Setup Script:
```bash
./setup-scripts/install.sh
```

This command will configure Zsh, apply your customizations, set up Git with personal and work configurations, and ensure your development environment is ready to use.

## FAQ

How can I update configurations after running the setup?

If you need to update specific settings in Zsh or Git, you can modify the zsh-setup.sh or git-setup.sh scripts and re-run them individually.

Can I add other tools to these scripts?

Yes! You can extend these scripts to install or configure additional tools, making them a central part of your environment setup.

What if I only want to configure Git or Zsh?

You can run zsh-setup.sh or git-setup.sh independently if you only need one of them:

# Only configure Zsh
./setup-scripts/zsh-setup.sh

# Only configure Git
./setup-scripts/git-setup.sh

## Conclusion

By using these setup scripts, you’re creating a streamlined, efficient, and repeatable way to set up your development environment across multiple machines. This approach saves time, reduces manual errors, and allows for consistent configurations, all of which contribute to a more productive workflow.

