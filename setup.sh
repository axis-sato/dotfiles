#!/usr/bin/env bash

# link dotfiles
for file in `\find . -maxdepth 1 -name "\.*" ! -path . ! -name ".git*"` ; do
    ln -sf $PWD/$file $HOME/
    echo "ln -sf $PWD/$file $HOME/"
done

# install dein.vim
dein_path=$HOME/Desktop/dein
mkdir $dein_path
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ${dein_path}/installer.sh
sh $dein_path/installer.sh $dein_path
