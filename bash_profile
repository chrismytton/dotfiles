if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion