# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias le='ls -ltra'

# Update repo and distro
alias update='sudo apt update -y'
alias upgrade='sudo apt upgrade -y'

# Sort by file size
alias lt='ls --human-readable --size -1 -S --classify'

# View only mounted drive
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# Find a command in history
alias gh='history|grep'

# Sort by modification time
alias left='ls -t -1'

# Count files
alias count='find . -type f | wc -l'

# Create a Python virual environment
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'

# Add a copy progress bar
alias cpv='rsync -ah --info=progress2'

# Protect from file removal accidents
alias tcn='mv --force -t ~/.local/share/Trash'

# Return to the Git project’s top level
alias cg='cd `git rev-parse --show-toplevel`'

# Basic Aliases
alias g='git'
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gb='git branch'
alias gcheckout='git checkout'
alias gm='git merge'
alias gpull='git pull'
alias gpush='git push'

# Log and Show Aliases
alias gl='git log --oneline --graph --decorate --all'
alias gd='git diff'
alias gg='git grep'

# Stash Aliases
alias gstash='git stash'

# Remote Aliases
alias gremote='git remote'

# Interactive Rebase Aliases
alias grebase='git rebase'

# Git Configuration Aliases
alias gconfig-name='git config --global user.name "Your Name"'
alias gconfig-email='git config --global user.email "your.email@example.com"'
