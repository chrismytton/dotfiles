source ~/.exports
source ~/.aliases
source ~/.gitrc

# bash_completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
  
  # Homebrew bash_completion
  source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi

# readline settings
bind "set completion-ignore-case on" 
bind "set bell-style none"
bind "set show-all-if-ambiguous On" # automatic completion without double tab

shopt -s checkwinsize
shopt -s histappend

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

[[ -f $HOME/.work ]] && source $HOME/.work

# Google Go Compat
export GOROOT=`brew --cellar`/go/HEAD
export GOBIN=/usr/local/bin
export GOARCH=amd64
export GOOS=darwin
