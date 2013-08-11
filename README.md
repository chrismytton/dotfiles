# dotfiles

My dotfiles.

## Quick start

Paste this into the nearest terminal.

    sh <(curl -fsSL git.io/~hecticjeff)

## Install

There are some dependencies you'll need before starting.

* curl
* git
* zsh

On os x curl and zsh are already there, so you just need git, I
recommend [homebrew](https://github.com/mxcl/homebrew).

    brew install git

On Linux you will need to install curl, git and zsh from your distro's
package manager.

### Automated install

Running the following command will clone this repository into
`~/.dotfiles` then symlink any `*.symlink` files and directories into
`~`.

    sh <(curl -fsSL git.io/~hecticjeff)

### From source

To install the dotfiles from source run the following.

    git clone https://github.com/hecticjeff/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    bin/dotfiles-install

### Post install

Finally you need to change your shell to zsh.

    chsh -s $(which zsh)

If that all sounds a bit too scary for you then take a look at
`bin/dotfiles-install` to get an idea for what this script does.

## How does it work?

Each top level directory (except for `bin/`) is named after the
command that it augments with functionality.

There are two types of files that go in these directories, `.symlink`
and `.zsh` files.

* `.symlink` - Generally used for "rc" files (like .zshrc).
* `.zsh` - adds functionality to zsh.

When installing all of the `.symlink` files get linked into the
`$HOME` directory, all of the `.zsh` files get sourced by `~/.zshrc`.

## Author

[Chris Mytton](http://hecticjeff.net/) -
[@hecticjeff](https://twitter.com/hecticjeff)
