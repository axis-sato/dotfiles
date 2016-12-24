#!/bin/sh

# link dotfiles
for file in `\find . -maxdepth 1 -name "\.*" ! -path . ! -name ".git*"` ; do
    ln -sf $PWD/$file $HOME/
    echo "ln -sf $PWD/$file $HOME/"
done

zprezto_file_path="./.zprezto/runcoms"
for file in `\find $zprezto_file_path -maxdepth 1 -type file ! -path . ! -name README.md` ; do
    ln -sf $PWD/$file $HOME/.$(basename $file)
    echo "ln -sf $PWD/$file $HOME/.$(basename $file)"
done


# install dein.vim
dein_path=$HOME/Desktop/dein
mkdir $dein_path
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ${dein_path}/installer.sh
sh $dein_path/installer.sh $dein_path
