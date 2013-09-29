alias g=git
alias gst='git status -sb'
alias gp='git push'
alias gpo='gp origin master'
alias gps='gp stage'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gcl='git config --list'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gx=gitx
alias gl='git l'
alias gpl='git pl'
alias gr='git remote -v'
alias gfp='git fetch --all --prune'

# hub
if which hub > /dev/null; then function git(){hub "$@"} fi
