#!/usr/bin/env bash

# link dotfiles
for file in `\find . -maxdepth 1 -name "\.*" ! -path . ! -name ".git*"` ; do
    ln -sf $PWD/$file $HOME/
    echo "ln -sf $PWD/$file $HOME/"
done
