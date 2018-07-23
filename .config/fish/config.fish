# conda
if command --search conda > /dev/null; and not command --search activate > /dev/null do
 source (conda info --root)/etc/fish/conf.d/conda.fish
end

# nodebrew
set nodebrew_path $HOME/.nodebrew/current/bin
if test -d $nodebrew_path
  set -U fish_user_paths $nodebrew_path $fish_user_paths
end

# swiftenv
if which swiftenv > /dev/null; status --is-interactive; and source (swiftenv init -|psub); end

# go
set go_path $HOME/go
if test -d $go_path
  set -x GOPATH $go_path
  set -U fish_user_paths $GOPATH/bin $fish_user_paths
end

# remove duplication
set -U fish_user_paths (echo $fish_user_paths | tr ' ' '\n' | sort -u)
