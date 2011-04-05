source ~/.bash/env
source ~/.bash/config
source ~/.bash/aliases
source ~/.gitrc

# readline settings
bind "set completion-ignore-case on" 
bind "set bell-style none"
bind "set show-all-if-ambiguous On" # automatic completion without double tab

shopt -s checkwinsize
shopt -s histappend

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

[[ -f $HOME/.work ]] && source $HOME/.work
