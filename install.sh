#!/bin/sh
set -e

DOTFILES=${DOTFILES:-"$HOME/.dotfiles"}

main() {
  # Run the script from the dotfiles directory
  check_gitconfig
  clone_dotfiles
  check_janus
  exec $DOTFILES/bin/dotfiles install
}

check_gitconfig() {
  if [ ! -f "$HOME/.gitconfig" ]; then
    echo "No ~/.gitconfig detected, configuring"
    sh -c "$(curl -fsSL https://github.com/hecticjeff/dotfiles/raw/master/bin/git-create-config)"
  fi
}

clone_dotfiles() {
  if [ ! -d "$DOTFILES" ]; then
    git clone "https://github.com/hecticjeff/dotfiles" "$DOTFILES"
  fi
}

check_janus() {
  if [ ! -f "$HOME/.vim/README.markdown" ]; then
    sh -c "$(curl -fsSL https://github.com/carlhuda/janus/raw/master/bootstrap.sh)"
  fi
}

# Run the installer
main
