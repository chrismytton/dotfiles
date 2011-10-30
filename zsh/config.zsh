# Save lots of shell command history.
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export CLICOLOR=true # Make commands like ls use color.

# Changing directories
setopt AUTO_PUSHD # Make cd act like pushd.

# Completion
setopt NO_MENU_COMPLETE
unsetopt flowcontrol
setopt AUTO_MENU         # show completion menu on succesive tab press
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

setopt CORRECT # Spell checking for commands.
setopt NO_BG_NICE # Don't give background tasks a lower priority
setopt NO_HUP # Don't send HUP to processes when shell exits.
setopt PUSHD_IGNORE_DUPS # Ignore duplicates on the pushd stack.
setopt SHARE_HISTORY # Share history between tabs.

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
