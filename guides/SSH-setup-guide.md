# GitHub SSH Setup for Personal and Work Accounts

This guide walks through setting up separate SSH keys for your personal and work GitHub accounts. It configures Git to use different keys based on the repository directory.

---

## Step 1: Generate Separate SSH Keys

First, generate unique SSH keys for each account using the `ed25519` algorithm:

```bash
# Work SSH key
ssh-keygen -t ed25519 -C "your_work_email@example.com" -f ~/.ssh/id_ed25519_work

# Personal SSH key
ssh-keygen -t ed25519 -C "your_personal_email@example.com" -f ~/.ssh/id_ed25519_personal
```

This creates two keys in the ~/.ssh directory:
* id_ed25519_work and id_ed25519_work.pub for work
* id_ed25519_personal and id_ed25519_personal.pub for personal

Step 2: Add SSH Keys to SSH Agent

To avoid re-entering the passphrase frequently, add the SSH keys to your SSH agent:

```bash
# Start the SSH agent in the background
eval "$(ssh-agent -s)"

# Add both keys to the agent
ssh-add ~/.ssh/id_ed25519_work
ssh-add ~/.ssh/id_ed25519_personal
```

## Step 3: Configure SSH for Each Account

Edit your SSH configuration file (~/.ssh/config) to specify which key to use for each GitHub account:

```bash
# Work account
Host github-work
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_work

# Personal account
Host github-personal
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_personal
```

Step 4: Add SSH Keys to GitHub

To add each public key to its respective GitHub account:

1. Display each public key:

```bash
# Work key
cat ~/.ssh/id_ed25519_work.pub

# Personal key
cat ~/.ssh/id_ed25519_personal.pub
```

2. Copy the key (from ssh-ed25519 to the end, including your email)
3. Go to GitHub:
   * Log into your work GitHub account
   * Go to Settings > SSH and GPG keys
   * Click New SSH key
   * Add a title (e.g., "Work Laptop") and paste the work key
   * Repeat for the personal GitHub account

## Step 5: Clone Repositories Using Aliases

When cloning repositories, use the correct alias based on your configuration in ~/.ssh/config:

```bash
# Clone a work repository
git clone git@github-work:your_work_username/repo_name.git

# Clone a personal repository
git clone git@github-personal:your_personal_username/repo_name.git
```

## Step 6: Configure Git Identity Per Repository

To keep work and personal configurations separate, set the Git user information for each repository.

1. Global Configuration (for personal account):

```bash
git config --global user.name "Your Personal Name"
git config --global user.email "your_personal_email@example.com"
```

2. Local Configuration (for each work repository):

```bash
# In each work project directory
git config user.name "Your Work Name"
git config user.email "your_work_email@example.com"
```

## Step 7: Testing the Setup

Test both SSH connections to verify your setup is working correctly:

```bash
# Test work GitHub connection
ssh -T git@github-work

# Test personal GitHub connection
ssh -T git@github-personal
```

You should see success messages like:
```
Hi username! You've successfully authenticated, but GitHub does not provide shell access.
```

## Step 8: Managing Existing Repositories

If you have existing repositories that need to use the new SSH configuration:

1. Navigate to the repository:
```bash
cd path/to/repo
```

2. Update the remote URL using the appropriate alias:
```bash
# For work repositories
git remote set-url origin git@github-work:your_work_username/repo_name.git

# For personal repositories
git remote set-url origin git@github-personal:your_personal_username/repo_name.git
```



