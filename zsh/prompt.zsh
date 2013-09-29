# Load zsh colors
autoload -U colors && colors
setopt PROMPT_SUBST

# adds the current branch name in green
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[${ref#refs/heads/}]"
  fi
}

# For more information on the variables that can be used in the prompt,
# and using color, see the archlinux zsh guide.
#
# https://wiki.archlinux.org/index.php/Zsh#Customizing_your_prompt.
PROMPT='%~$(git_prompt_info)%(?..%{$fg[red]%})%#%{$reset_color%} '

# Show current user and host when using ssh.
if [ "$SSH_CONNECTION" ]; then
  PROMPT="%n@%m:$PROMPT"
fi
