# Setup go
set -l go_path $HOME/go
if test -d $go_path
    set -x GOPATH $go_path
    set -x PATH $GOPATH/bin $PATH
end

# Setup flutter
set -l flutter_path $HOME/flutter/bin
if test -d $flutter_path
    set -x PATH $flutter_path $PATH
end

# Setup swiftenv
if command -s swiftenv >/dev/null
    set -x SWIFTENV_ROOT $HOME/.swiftenv
    set -x PATH $SWIFTENV_ROOT/bin $PATH
    status --is-interactive
    and source (swiftenv init -|psub)
end

# Setup asdf
set -l asdf_fish_path /usr/local/opt/asdf/asdf.fish
if test -f $asdf_fish_path
    source $asdf_fish_path
end

# Setup phpbrew
set -l phpbrew_config_path $HOME/.phpbrew/phpbrew.fish
if test -f $phpbrew_config_path
    source $phpbrew_config_path
end

# Setup fastlane
set -x TESTFLIGHT_USERNAME sato_m@mediaxis.jp
set -l fastlane_path $HOME/.fastlane/bin
if test -d $fastlane_path
    set -x PATH $fastlane_path $PATH
end

