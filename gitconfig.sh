if [ ! -f "$HOME/.gitconfig" ]; then
  echo "configuring ~/.gitconfig"
  echo -n "your full name: "
  read user_name
  echo -n "your email: "
  read user_email
  echo -n "your github username: "
  read github_user
  echo -n "your github token: "
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
  default = tracking
GITCONFIG
else
  echo "existing ~/.gitconfig found, skipping"
fi
