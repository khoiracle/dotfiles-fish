source ~/.config/fish/.fish_aliases
source ~/.config/fish/.fish_variable

set -U FZF_FIND_FILE_COMMAND 'pt --hidden -g ""'
set -U FZF_COMPLETE 1

# Convenience PATH
set -x WORKSPACE "$HOME/Workspace"

# Golang
set -x GOPATH "$WORKSPACE/go"
set -x PATH $GOPATH/bin $PATH

# Remap vim to nvim
if type -q nvim > /dev/null 2>&1
  alias vi "nvim"
  alias vim "nvim"
end

# Rbenv
status --is-interactive; and source (rbenv init -|psub)
