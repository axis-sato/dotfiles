#!/bin/sh

for file in `\find . -maxdepth 1 -name "\.*" ! -path .` ; do
    ln -sf $file $Home/
    echo $file
done
