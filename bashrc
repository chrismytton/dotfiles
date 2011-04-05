source ~/.bash/env
source ~/.bash/config
source ~/.bash/aliases
source ~/.gitrc

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

[[ -f $HOME/.work ]] && source $HOME/.work
