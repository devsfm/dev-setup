#!/bin/bash
# git-setup.sh - Git configuration for personal and work accounts

# Create global .gitconfig with conditional includes
cat << 'EOF' > ~/.gitconfig
[user]
    name = Your Name
    email = your_default_email@example.com

[core]
    editor = vim
    autocrlf = input

[includeIf "gitdir:~/path/to/work/"]
    path = ~/.gitconfig-work

[includeIf "gitdir:~/path/to/personal/"]
    path = ~/.gitconfig-personal
EOF

# Create personal Git configuration
cat << 'EOF' > ~/.gitconfig-personal
[user]
    name = Your Personal Name
    email = your_personal_email@example.com
EOF

# Create work Git configuration
cat << 'EOF' > ~/.gitconfig-work
[user]
    name = Your Work Name
    email = your_work_email@example.com
EOF

echo "Git configuration complete!"