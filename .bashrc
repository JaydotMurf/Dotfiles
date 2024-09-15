# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, exit early
case $- in
    *i*) ;;
    *) return ;;
esac

# ----------------------------
# History settings for Bash
# ----------------------------
# Control history file and command behavior:
HISTCONTROL=ignoreboth       # Don't store duplicate commands or those starting with a space
HISTSIZE=1000                # Number of commands to store in history
HISTFILESIZE=2000            # Number of lines stored in the history file
shopt -s histappend          # Append to history, don't overwrite it

# Check the window size after each command
shopt -s checkwinsize

# ----------------------------
# Bash prompt and terminal settings
# ----------------------------
# Detect if terminal supports color
if [ -x /usr/bin/tput ] && tput setaf 1 &>/dev/null; then
    color_prompt=yes
fi

# ----------------------------
# Function for sourcing config files (aliases, functions, etc.)
# ----------------------------
source_if_exists() {
    if [ -r "$1" ]; then
	source "$1"
    else
	echo "Warning: $1 not found or not readable"
    fi
}

# Load custom bash functions, aliases, and others
source_if_exists "$HOME/.bash_prompt"
source_if_exists "$HOME/.bash_functions"
source_if_exists "$HOME/.bash_aliases"

# ----------------------------
# Enable ls color support
# ----------------------------
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b ${HOME}/.dircolors 2>/dev/null || dircolors -b)"
    alias ls='ls --color=auto'
fi

# ----------------------------
# Load bash completion (if available)
# ----------------------------
if ! shopt -oq posix; then
    source_if_exists /usr/share/bash-completion/bash_completion
    source_if_exists /etc/bash_completion
fi

# ----------------------------
# Chroot settings (for prompts)
# ----------------------------
# Set variable to identify chroot (used in the prompt)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_ch)
fi
