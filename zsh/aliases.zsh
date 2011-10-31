# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

# ls
alias ll='ls -lF'
alias l='ls -laF'

# mkdir
take() {
  mkdir "$1" && cd "$1"
}

alias _='sudo'

# Update and edit dotfiles
alias reload!='. ~/.zshrc'

# MIT-LICENCE
# Usage `license > MIT-LICENSE`
alias license='curl -fsSL http://git.io/license | sh'
