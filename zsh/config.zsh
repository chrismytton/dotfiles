# Save lots of shell command history.
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export EDITOR='vim' # default editor

export CLICOLOR=true # Make commands like ls use color.

# Autocomplete with highlighting.
# See https://wiki.archlinux.org/index.php/Zsh#Command_Completion
zstyle ':completion:*' menu select

# See `man zshoptions` for a full explaination of these options.
setopt AUTO_PUSHD # Make cd act like pushd.
setopt CORRECT # Spell checking for commands.
setopt NO_BG_NICE # Don't give background tasks a lower priority
setopt NO_HUP # Don't send HUP to processes when shell exits.
setopt PUSHD_IGNORE_DUPS # Ignore duplicates on the pushd stack.
setopt SHARE_HISTORY # Share history between tabs.

# Search history when you have typed a command and press up.
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
