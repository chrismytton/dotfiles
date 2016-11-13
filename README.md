# dotfiles

My dotfiles.

## Install

    git clone https://github.com/chrismytton/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    ./script/setup

### Post install

Finally you need to change your shell to zsh.

    chsh -s $(which zsh)

## How does it work?

There are a bunch of `.symlink` files in the repo. When `./script/setup` gets run they are symlinked into the users' home directory.

## Author

[Chris Mytton](https://www.chrismytton.uk/) -
[@chrismytton](https://twitter.com/chrismytton)
