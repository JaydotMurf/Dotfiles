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
