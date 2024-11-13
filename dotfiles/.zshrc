# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git sudo web-search zsh-autosuggestions zsh-syntax-highlighting)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# History settings
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt share_history hist_expire_dups_first hist_ignore_dups hist_verify

# Key bindings for history search
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Aliases
alias ls="eza --icons=always"
alias c="clear"

# Basic Git aliases
alias gs="git status"
alias ga="git add ."
alias gaa="git add --all"
alias gc="git commit -m"
alias gca="git commit --amend"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gp="git push"
alias gpu="git push -u origin HEAD"
alias gl="git log --oneline --graph --decorate --all"
alias gd="git diff"
alias gds="git diff --staged"
alias gss="git status -s"
alias gfix="git commit --fixup"
alias grc="git rebase --continue"
alias gundo="git reset --soft HEAD~1"
alias gpl="git pull --rebase"
alias gcmftw="git commit -m 'fixes everything 🚀'"
alias nope="git reset --hard HEAD"

# Navigation Aliases
alias ..="cd .."
alias ...="cd ../.."
alias home="cd ~"
alias cdt="cd ~/Desktop"
alias cdl="cd ~/Downloads"
alias lsd="ls -l | grep '^d'"

# System Info
alias ip="ipconfig getifaddr en0"
alias pubip="curl ifconfig.me"
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias df="df -h"
alias topcpu="ps -A -o %cpu,%mem,comm | sort -nr | head -n 10"
alias battery="pmset -g batt"

# Application Shortcuts
alias chrome="open -a 'Google Chrome'"
alias cursor="open -a 'Cursor'"
alias finder="open -a 'Finder'"

# File Manipulation
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -i"
alias mkdir="mkdir -pv"
alias zipf="zip -r"
alias untar="tar -xvf"

# Productivity
alias updatebrew="brew update && brew upgrade && brew cleanup"
alias pbc="pbcopy"
alias pbp="pbpaste"
alias weather="curl wttr.in"