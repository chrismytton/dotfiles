#!/bin/sh
set -e

DOTFILE_DIR=${DOTFILE_DIR:-"$HOME/Dropbox/.dotfiles"}

# dotfiles
if [ ! -d "$DOTFILE_DIR" ]; then
  echo "installing dotfiles"
  git clone "https://github.com/hecticjeff/dotfiles" "$DOTFILE_DIR"
fi

# gitconfig
. "$DOTFILE_DIR/gitconfig.sh"

# oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "installing oh-my-zsh"
  git clone "https://github.com/hecticjeff/oh-my-zsh" ~/.oh-my-zsh
fi

# janus
if [ ! -f "$HOME/.vim/README.markdown" ]; then
  echo "installing janus"
  for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done
  git clone "https://github.com/hecticjeff/janus" ~/.vim
fi

# bin
INSTALL_PREFIX="$HOME/local/shared/bin"
if [ ! -d $INSTALL_PREFIX ]; then
  mkdir -p $INSTALL_PREFIX
fi

# e.g `remote_install hub http://defunkt.io/hub/standalone`
remote_install () {
  echo "installing $1"
  curl $2 -sL > "$INSTALL_PREFIX/$1"
  chmod +x "$INSTALL_PREFIX/$1"
}

# hub
remote_install hub http://defunkt.io/hub/standalone

# ack
remote_install ack http://betterthangrep.com/ack-standalone

# licence
remote_install licence https://gist.github.com/raw/767068/ff15d3d44e54cbd0ad5ac72dc832e4c7193f5193/license

# upgrade
. "$DOTFILE_DIR/upgrade.sh"
