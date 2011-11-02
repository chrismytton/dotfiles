dotfiles
========

My awesome dotfiles, directory structure is stolen from [@holman's
dotfiles](https://github.com/holman/dotfiles). Installing and management
is all done in shell.

## The One Liner

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

For linux you will need to get curl, git and zsh from your distro's
package manager.

### Automated install

Run the following to get the dotfiles you are looking at, this
will also install a gitconfig if it's missing and janus.

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

## Usage

The dotfiles are managed by the `dotfiles(1)` command. For more
information see `dotfiles help [<command>]`.

## Author

[Chris Mytton](http://hecticjeff.net/) -
[@hecticjeff](http://twitter.com/hecticjeff)
