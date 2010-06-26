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
