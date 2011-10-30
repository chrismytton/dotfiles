# rbenv
if [[ -d "$HOME/.rbenv/bin" ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  if command -v rbenv &>/dev/null; then
    eval "$(rbenv init -)"
  fi
fi
