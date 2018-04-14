source ~/.config/fish/.fish_aliases
source ~/.config/fish/.fish_variable

# FZF Setup 
set -U FZF_FIND_FILE_COMMAND 'pt --hidden -g ""'
set -U FZF_COMPLETE 1
set -U FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"

# Tmux
function fs -d "Switch Tmux session"
  tmux list-sessions -F "#{session_name}" | fzf --reverse | xargs tmux switch-client -t
end

# Convenience PATH
set -x WORKSPACE "$HOME/Workspace"

# Golang
set -x GOPATH "$WORKSPACE/go"
set -x PATH $GOPATH/bin $PATH
set -x PATH $HOME/.bin $PATH

# Remap vim to nvim
if type -q nvim > /dev/null 2>&1
  alias vi "nvim"
  alias vim "nvim"
end

# Rbenv
status --is-interactive; and source (rbenv init -|psub)

# sextant
if type -q sextant
  status --is-interactive; and source (sextant shell --type fish --bind-to s -|psub)
end
