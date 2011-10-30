#!/bin/sh
set -e

if [ ! -f "$HOME/.gitconfig" -o "$1" = "--force" ]; then
  echo "configuring ~/.gitconfig"
  /bin/echo -n "user.name (your full name): "
  read user_name
  /bin/echo -n "user.email (your email): "
  read user_email
  /bin/echo -n "github.user (your github username): "
  read github_user
  echo "Get your API Token from https://github.com/account/admin"
  /bin/echo -n "github.token (your github API Token): "
  read github_token

  cat > "$HOME/.gitconfig" <<GITCONFIG
[user]
  name = $user_name
  email = $user_email
[github]
  user = $github_user
  token = $github_token
[color]
  branch = auto
  diff = auto
  grep = auto
  interactive = auto
  pager = true
  showbranch = auto
  status = auto
  ui = auto
[core]
  excludesfile = $HOME/.gitignore
[instaweb]
  httpd = webrick
[push]
  default = current
GITCONFIG
else
  echo "existing ~/.gitconfig found, use --force to override"
fi
