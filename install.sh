#!/bin/sh
set -e

DOTFILES=${DOTFILES:-"$HOME/.dotfiles"}

main() {
  # Run the script from the dotfiles directory
  check_gitconfig
  check_janus
  execute_remote_script https://github.com/hecticjeff/dotfiles/raw/master/bin/dotfiles-install
}

execute_remote_script() {
  sh -c "$(curl -fsSL $1)"
}

check_gitconfig() {
  if [ ! -f "$HOME/.gitconfig" ]; then
    echo "No ~/.gitconfig detected, configuring"
    execute_remote_script https://github.com/hecticjeff/dotfiles/raw/master/bin/git-create-config
  fi
}

check_janus() {
  if [ ! -f "$HOME/.vim/README.markdown" ]; then
    execute_remote_script https://github.com/carlhuda/janus/raw/master/bootstrap.sh
  fi
}

# Run the installer
main
