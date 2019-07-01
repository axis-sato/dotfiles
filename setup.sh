#!/usr/bin/env bash

echo "link dotfiles to $HOME"

for file in `\find . -maxdepth 1 -name "\.*" ! -path . ! -name ".git*" ! -name ".config*"` ; do
    ln -sf $PWD/$file $HOME/
    echo "symbolic link $PWD/$file <- $HOME/ was created"
done

# ~/.config/fishから.config/fishへのシンボリックリンクを貼る
mkdir -p $HOME/.config
ln -sf $PWD/.config/fish $HOME/.config/
echo "symbolic link $PWD/.config/fish <- $HOME/.config/ was created"