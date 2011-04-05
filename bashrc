source ~/.bash/env
source ~/.bash/config
source ~/.bash/aliases
source ~/.gitrc

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

[[ -f $HOME/.work ]] && source $HOME/.work
