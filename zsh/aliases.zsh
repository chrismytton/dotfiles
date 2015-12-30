# Make jumping between directories a bit less painful.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

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

# Reload dotfiles.
alias reload!='. ~/.zshrc'

find-replace () {
  ag -l $1 | xargs sed -i '' -e "s/$1/$2/g"
}

# Quick vim.
alias v='vim'
alias m='mvim'

# From http://coderwall.com/p/7wvx0g
pretty() { pygmentize -f terminal "$1" | less -R }

alias urlencode='ruby -r uri -e "puts URI.encode_www_form_component(ARGV[0])"'
alias urldecode='ruby -r uri -e "puts URI.decode_www_form_component(ARGV[0])"'
