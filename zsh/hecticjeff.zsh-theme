ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[grey]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}*%{$reset_color%}"

# prompt
PROMPT='%~%(?..%{$fg[red]%})%# %{$reset_color%}'

if [ "$SSH_CLIENT" ]; then
  PROMPT="%n@%m:$PROMPT"
fi
PS2='%{$fg_bold[grey]%}%B>%{$reset_colors%}%b '
