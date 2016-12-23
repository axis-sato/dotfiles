#!/bin/sh

for file in `\find . -maxdepth 1 -name "\.*" ! -path . ! -name ".git*"` ; do
    ln -sf $PWD/$file $HOME/
    echo "ln -sf $PWD/$file $HOME/"
done

zprezto_file_path="./.zprezto/runcoms"
for file in `\find $zprezto_file_path -maxdepth 1 -type file ! -path . ! -name README.md` ; do
    ln -sf $PWD/$file $HOME/.$(basename $file)
    echo "ln -sf $PWD/$file $HOME/.$(basename $file)"
done
