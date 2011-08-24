#!/bin/sh
set -e

DOTFILE_DIR=${DOTFILE_DIR:-"$HOME/.dotfiles"}

# dotfiles
if [ ! -d "$DOTFILE_DIR" ]; then
  echo "installing dotfiles"
  git clone "https://github.com/hecticjeff/dotfiles" "$DOTFILE_DIR"
else
  cd "$DOTFILE_DIR"
  git pull origin master
fi

# oh-my-zsh
# if there is a symlink there, remove it
if [ -L "$HOME/.oh-my-zsh" ]; then
  rm ~/.oh-my-zsh
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "installing oh-my-zsh"
  git clone "https://github.com/robbyrussell/oh-my-zsh" ~/.oh-my-zsh
fi

ln -nfs "$DOTFILE_DIR/zsh" "$HOME/.oh-my-zsh/custom/plugins"
ln -nfs "$DOTFILE_DIR/zsh/hecticjeff.zsh-theme" "$HOME/.oh-my-zsh/themes/hecticjeff.zsh-theme"

# janus
if [ ! -f "$HOME/.vim/README.markdown" ]; then
  echo "installing janus"
  for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done
  git clone "https://github.com/hecticjeff/janus" ~/.vim
fi

# upgrade
. "$DOTFILE_DIR/upgrade.sh"
