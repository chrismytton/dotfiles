# Load zsh colors
autoload -U colors && colors
setopt PROMPT_SUBST

# prompt
PROMPT='%~%(?..%{$fg[red]%})%#%{$reset_color%} '

# extended ssh prompt
if [ "$SSH_CONNECTION" ]; then
  PROMPT="%n@%m:$PROMPT"
fi
