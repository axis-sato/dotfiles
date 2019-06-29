# Setup swiftenv
if command -s swiftenv > /dev/null
  set -x SWIFTENV_ROOT $HOME/.swiftenv
  set -x PATH $SWIFTENV_ROOT/bin $PATH
  status --is-interactive; and source (swiftenv init -|psub)
end

# Setup asdf
set -l asdf_fish_path /usr/local/opt/asdf/asdf.fish
if test -f $asdf_fish_path
  source $asdf_fish_path
end
