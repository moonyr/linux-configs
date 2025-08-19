# Change umask to make directory sharing easier
umask 0002

# Ignore duplicates in command history and increase
# history size to 1000 lines
export HISTCONTROL=ignoredups
export HISTSIZE=1000

# Shell options
set -o vi # Enable vi-style command line editing in Bash

# Update $PATH
export PATH='$PATH:$HOME/bin'

# Add some helpful aliases
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias c='clear'

# Add some helpful functions
mkcd () {
  mkdir -p "$1" && cd "$1"
}

# Enable Starship prompt
eval "$(starship init bash)"
