# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="hecticjeff"
plugins=(git git-flow rails3 vagrant bundler)
source $ZSH/oh-my-zsh.sh

# paths
PATH="/usr/bin:/bin:/usr/sbin:/sbin"

if [[ -d "/usr/local" ]]; then
  PATH="/usr/local/bin:/usr/local/sbin:$PATH"
fi

if [[ -d "$HOME/local" ]]; then
  PATH="$HOME/local/bin:$HOME/local/sbin:$PATH"
fi

if [[ -d "$HOME/.bin" ]]; then
  PATH="$HOME/.bin:$PATH"
fi

MANPATH="/usr/share/man:/usr/local/share/man"

export PATH MANPATH

# linux
if [[ $OSTYPE == 'linux-gnu' ]]; then
  alias o=gnome-open
  alias gx=gitg
fi

export EDITOR='vim -f'

unsetopt auto_name_dirs

# secureme example.com 8888
secureme () {
  echo "[$1:$2] Switching to secure ssh connection...remember to change proxy settings"
  ssh -CND $2 $1
}

# node
export NODE_PATH=/usr/local/lib/node

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
