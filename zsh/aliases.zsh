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

# Usage: httpserver [<port>]
httpserver() {
  python -m SimpleHTTPServer "$@"
}

find-replace () {
  ag -l $1 | xargs sed -i '' -e "s/$1/$2/g"
}
