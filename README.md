dotfiles
========

For use with linux or os x, has a strong preference towards zsh and vim.
This is mostly just some custom settings for some excellent tools.

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) provides the
  base for zsh.
* [janus](https://github.com/carlhuda/janus) provides the vim framework.

## Installation

You need to make sure you have the following tools before starting

* curl
* git
* zsh

On os x curl and zsh are already there, so you just need git, I
recommend [homebrew](https://github.com/mxcl/homebrew).

For linux you will need to do this before starting:

``` bash
sudo apt-get install curl git zsh
```

This will get you installed with the dotfiles you are looking at, and
will also install oh-my-zsh and janus.

``` bash
curl -fsSL https://github.com/hecticjeff/dotfiles/raw/master/install.sh | sh
chsh -s /bin/zsh
```

If that all sounds a bit too
scary for you then take a look at `install.sh` to get an idea for what
this script does.

## Upgrading

``` bash
cd ~/.dotfiles
./install.sh
```

## gitconfig

To install a custom gitconfig which includes your github credentials:

``` bash
cd ~/.dotfiles
./gitconfig.sh
```

Copyright (c) Chris Mytton
