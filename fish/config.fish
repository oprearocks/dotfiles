source ~/.config/fish/functions/z.fish

thefuck --alias | source 

set -x EDITOR nvim
set -x GOPATH "$HOME/go-projects"
rvm default
rvm default

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
