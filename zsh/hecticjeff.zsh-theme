ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[grey]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}*%{$reset_color%}"

# https://bbs.archlinux.org/viewtopic.php?id=50240
precmd() {
  print -rP '
[%n@%m:%~] $(git_prompt_info)'
}

# prompt
PROMPT='%(?..%{$fg[red]%})%# %{$reset_color%}'
PS2='%{$fg_bold[grey]%}%B>%{$reset_colors%}%b '
