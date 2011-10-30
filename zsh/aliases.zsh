# ls
alias ll='ls -lF'
alias l='ls -laF'

# Update and edit dotfiles
alias reload!='. ~/.zshrc'
alias zup='sh -c "$(curl -fsSL http://git.io/yS_hZw)"'
alias zedit='$EDITOR ~/.dotfiles'

# MIT-LICENCE
# Usage `license > MIT-LICENSE`
alias license='sh -c "$(curl -fsSL http://git.io/license)"'
