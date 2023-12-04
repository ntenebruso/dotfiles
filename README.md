# Dotfiles

This is a collection of the dotfiles I use for my personal machines. Feel free to use for your own use. These files set up programs including QTile, Vim, and Picom.

## Installation

You can use multiple methods to sync this repo to your dotfiles, including symlinks, but the method I typically use is the "bare-repo" method, outlined below:

```sh
git clone --bare https://github.com/ntenebruso/dotfiles.git $HOME/.cfg
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'"
config checkout
```

You can then use git like normal by using the alias `config` again, eg.:

```sh
config add ~/.vimrc
```
