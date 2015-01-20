# dotfiles

My dotfiles.

## Install

    git clone https://github.com/chrismytton/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    ./script/install

### Post install

Finally you need to change your shell to zsh.

    chsh -s $(which zsh)

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

[Chris Mytton](https://www.chrismytton.uk/) -
[@chrismytton](https://twitter.com/chrismytton)
