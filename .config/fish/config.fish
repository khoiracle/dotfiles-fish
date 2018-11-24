source ~/.config/fish/.fish_aliases
source ~/.config/fish/.fish_variable

# Y u no English
set -x LANG 'en_US.UTF-8'
set -x LC_ALL 'en_US.UTF-8'

# Editor
set -x EDITOR nvim

# FZF Setup 
set -U FZF_FIND_FILE_COMMAND 'pt --hidden -g ""'
set -U FZF_COMPLETE 1
set -U FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"

# Tmux
function fs -d "Switch Tmux session"
  tmux list-sessions -F "#{session_name}" | fzf --reverse | xargs tmux switch-client -t
end

# Convenience PATH
set -x WORKSPACE "$HOME/Documents/Workspaces"

# Golang
set -x GOPATH "$WORKSPACE/go"
set -x PATH $GOPATH/bin $PATH
set -x PATH $HOME/.bin $PATH
set -x PATH $HOME/bin $PATH

# https://github.com/khoi/go-git-get
set -x GITPATH $WORKSPACE/Repositories/

# Remap vim to nvim
if type -q nvim > /dev/null 2>&1
  alias vi "nvim"
  alias vim "nvim"
end

# Rbenv
if type -q rbenv
  status --is-interactive; and source (rbenv init -|psub)
end

# compass
if type -q compass
  status --is-interactive; and source (compass shell --type fish --bind-to s -|psub)
end
