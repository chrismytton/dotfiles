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

```bash
brew install git
```

For linux you will need to get curl, git and zsh from your distro's
package manager.

Run the following to get the dotfiles you are looking at, this
will also install oh-my-zsh and janus, and set your default shell to
be `zsh`.

``` bash
sh -c "$(curl -fsSL https://github.com/hecticjeff/dotfiles/raw/master/install.sh)"
chsh -s /bin/zsh
```

If that all sounds a bit too
scary for you then take a look at `install.sh` to get an idea for what
this script does.

## Upgrading

``` bash
~/.dotfiles/install.sh
```

## gitconfig

To install a custom gitconfig which includes your github credentials:

``` bash
sh -c "$(curl -fsSL https://github.com/hecticjeff/dotfiles/raw/master/gitconfig.sh)"
```

Copyright (c) Chris Mytton
