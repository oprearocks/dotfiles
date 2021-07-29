source ~/.config/fish/functions/z.fish

set -x EDITOR nvim
set -x GOPATH "$HOME/go-projects"
rvm default
rvm default

set PATH /opt/homebrew/bin $PATH

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish