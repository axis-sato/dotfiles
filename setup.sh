#!/usr/bin/env bash

# link dotfiles
echo "link dotfiles to $HOME"
for file in `\find . -maxdepth 1 -name "\.*" ! -path . ! -name ".git*"` ; do
    ln -sf $PWD/$file $HOME/
    echo "ln -sf $PWD/$file $HOME/"
done
