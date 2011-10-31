# Load zsh colors
autoload -U colors && colors
setopt PROMPT_SUBST

# For more information on the variables that can be used in the prompt,
# and using color, see the archlinux zsh guide.
#
# https://wiki.archlinux.org/index.php/Zsh#Customizing_your_prompt.
PROMPT='%~%(?..%{$fg[red]%})%#%{$reset_color%} '

# Show current user and host when using ssh.
if [ "$SSH_CONNECTION" ]; then
  PROMPT="%n@%m:$PROMPT"
fi
