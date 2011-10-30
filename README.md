dotfiles
========

Simplistic dotfiles inspired by the directory structure in
[@holman's](https://github.com/holman/dotfiles) dotfiles. These use a
pure shell approach to installing the dotfiles.

## Installation

You need to make sure you have the following tools before starting

* curl
* git
* zsh

On os x curl and zsh are already there, so you just need git, I
recommend [homebrew](https://github.com/mxcl/homebrew).

    brew install git

For linux you will need to get curl, git and zsh from your distro's
package manager.

Run the following to get the dotfiles you are looking at, this
will also install and janus.

    sh -c "$(curl -fsSL http://git.io/yS_hZw)"

Then change your shell to zsh.

    chsh -s /bin/zsh

If that all sounds a bit too scary for you then take a look at
`install.sh` to get an idea for what this script does.

## Upgrading

    dotfiles update

## gitconfig

To install a custom gitconfig which includes your github credentials:

    git create-config

Copyright (c) Chris Mytton
