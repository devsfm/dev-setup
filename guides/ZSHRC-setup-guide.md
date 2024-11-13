# `.zshrc` Setup Guide

This guide explains how to set up a custom Zsh shell environment using `.zshrc`, with themes, plugins, and useful aliases for an optimized development workflow. The `.zshrc` configuration file is located in the `dotfiles` folder of this repository.

## Prerequisites

To replicate this `.zshrc` setup, make sure you have the following tools installed:

### 1. Oh My Zsh

Oh My Zsh is a popular Zsh framework that provides easy theme and plugin management.

To install Oh My Zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

2. Powerlevel10k Theme

This setup uses Powerlevel10k, a highly customizable prompt theme for Zsh. Powerlevel10k can display Git status, battery life, and other information directly in your terminal prompt.

To install Powerlevel10k:

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH/custom/themes/powerlevel10k

After installation, set ZSH_THEME="powerlevel10k/powerlevel10k" in your .zshrc file. Then run:

p10k configure

This command will guide you through customizing your prompt.

3. Plugins

The following plugins enhance Zsh functionality, providing command suggestions, syntax highlighting, and useful Git shortcuts. Here’s how to install them:
	•	zsh-autosuggestions: Suggests commands based on your history.

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

	•	zsh-syntax-highlighting: Highlights syntax as you type commands.

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

	•	git: Provides useful Git aliases and shortcuts.

Troubleshooting

If you encounter issues with the .zshrc setup, here are some common fixes:
	•	Reload Configuration: After making changes to .zshrc, reload it with:

source ~/.zshrc

	•	Check Plugin Installation: Ensure that plugins are installed in $ZSH_CUSTOM/plugins/. Run ls $ZSH_CUSTOM/plugins/ to verify.
	•	Powerlevel10k Issues: If the prompt looks incorrect, try running p10k configure again or check that Powerlevel10k is correctly installed in $ZSH/custom/themes/powerlevel10k.
	•	Command Not Found: If an alias like weather isn’t working, ensure curl is installed and that the alias is correctly set in .zshrc.

Happy customizing!

