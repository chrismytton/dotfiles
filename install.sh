#!/bin/sh
set -e

DOTFILES=${DOTFILES:-"$HOME/.dotfiles"}

# Run the script from the dotfiles directory
cd $DOTFILES

# dotfiles
if [ ! -d "$DOTFILES" ]; then
  git clone "https://github.com/hecticjeff/dotfiles" "$DOTFILES"
else
  cd "$DOTFILES"
  git pull origin master
fi

# oh-my-zsh
# if there is a symlink there, remove it
if [ -L "$HOME/.oh-my-zsh" ]; then
  rm ~/.oh-my-zsh
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  git clone "https://github.com/robbyrussell/oh-my-zsh" ~/.oh-my-zsh
fi

ln -nfs "$DOTFILES/zsh" "$HOME/.oh-my-zsh/custom/plugins"
ln -nfs "$DOTFILES/zsh/hecticjeff.zsh-theme" "$HOME/.oh-my-zsh/themes/hecticjeff.zsh-theme"

# janus
if [ ! -f "$HOME/.vim/README.markdown" ]; then
  curl -sL https://raw.github.com/carlhuda/janus/master/bootstrap.sh | sh
fi
# global flags for installing dotfiles
skip_all=false
overwrite_all=false
backup_all=false

# loop over all the `.symlink` files
for linkable in *.symlink
do
  # reset these to false at the start of each loop
  overwrite=false
  backup=false
  skip=false

  # file that we are symlinking to
  file="`pwd`/$linkable"

  # the target for the symlink
  target="$HOME/.`basename $linkable .symlink`"

  # check if the target already exists
  if [ ! -L "$target" ]; then

    # check that we're not already on an *all* flag
    if ( ! $overwrite_all && ! $backup_all ); then

      if [ "$OVERWRITE_OPTION" ]; then
        confirm=$OVERWRITE_OPTION
      else
        # ask the user how they want to proceed
        /bin/echo -n "file exists $target [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all: "
        read confirm
      fi

      # check the user's choice
      case "$confirm" in
        o) overwrite=true ;;
        b) backup=true ;;
        s) skip=true ;;
        O) overwrite_all=true ;;
        B) backup_all=true ;;
        S) skip_all=true ;;
      esac
    fi

    # break out of the loop if we're skipping all
    if ( $skip_all ); then
      echo "skipping all"
      break
    fi

    # continue to the next file if we're skipping this one
    if ( $skip ); then
      echo "skipping $target"
      continue
    fi

    # move the file out of the way if the user wants to backup
    if ( $backup || $backup_all ); then
      echo "backing up $target"
      mv "$target" "$target.backup"
    elif ( $overwrite || $overwrite_all ); then
      echo "removing $target"
      rm -rf "$target"
    fi
  fi

  # finally link in the file
  ln -nfs "$file" "$target"

done

# upgrade janus
# TODO: this is a bit hit and miss at the moment due to gem permissions
/bin/echo -n "Upgrade janus? (y/n): "
read upgrade_janus
if [ "$upgrade_janus" = "y" ]; then
  cd ~/.vim
  rake upgrade
fi
