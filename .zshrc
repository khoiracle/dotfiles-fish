source ~/.antigen.zsh

# antigen setup
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle z

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

# History size
setopt HIST_IGNORE_SPACE # command without history when prefix with Space
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Editor
export EDITOR="vim"

# PATH
export PATH=~/.bin:$PATH

# Nvim
if type nvim > /dev/null; then
  alias vi="nvim"
  alias vim="nvim"
fi

# compass
if type compass > /dev/null; then
  eval "$(compass shell)"
fi

# fzf
if type fzf > /dev/null; then
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fi
