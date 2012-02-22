# Make jumping between directories a bit less painful.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

# Shortcuts for long directory listing.
alias ll='ls -l'

# List all files.
alias l='ls -laF'

# Quick vim.
alias v='vim'
alias m='mvim'

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

alias html='curl -fsSL http://git.io/html5-mini-boilerplate'
