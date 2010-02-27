. ~/.exports
. ~/.aliases
. ~/.gitrc

# bash_completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
  
  # Homebrew bash_completion
  source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi

# -- start rip config -- #
RIPDIR="~/.rip"
RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"
PATH="$PATH:$RIPDIR/active/bin"
export RIPDIR RUBYLIB PATH
# -- end rip config -- #

# Set prompt format
export PS1=' [`pwd`$(__git_ps1 " \[${COLOR_RED}\](%s)\[${COLOR_NC}\]")]\n$ '

# readline settings
bind "set completion-ignore-case on" 
bind "set bell-style none"
bind "set show-all-if-ambiguous On" # automatic completion without double tab

shopt -s checkwinsize
shopt -s histappend
