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


# Tab completion for dotfiles.
# Totally lifted from [rbenv](https://github.com/sstephenson/rbenv).
compctl -K _dotfiles dotfiles

_dotfiles() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(dotfiles commands)"
  else
    completions="$(dotfiles completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}

# Usage: httpserver [<port>]
httpserver() {
  python -m SimpleHTTPServer "$@"
}

find-replace () {
  ag -l $1 | xargs sed -i '' -e "s/$1/$2/g"
}
