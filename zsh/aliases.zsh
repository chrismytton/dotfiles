# Make jumping between directories a bit less painful.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

# Shortcuts for long directory listing.
alias ll='ls -l'

# List all files.
alias l='ls -laF'

# Create a new directory and `cd` into it.
take() {
  mkdir "$1" && cd "$1"
}

# Shorter way to `sudo` something.
alias _='sudo'

# Update and edit dotfiles.
alias reload!='. ~/.zshrc'

# Usage `license > MIT-LICENSE`
alias license='curl -fsSL http://git.io/license | sh'
