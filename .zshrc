source ~/.antigen.zsh

source ~/.zsh_local # local configs, private envs

# lang
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# antigen setup
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle z
antigen bundle bundler

antigen bundle zsh-users/zsh-completions

antigen bundle mafredri/zsh-async
antigen bundle wfxr/forgit

antigen apply

# Aliases
alias o="open"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

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

# homebrew no update
export HOMEBREW_NO_AUTO_UPDATE=1

# starship
eval "$(starship init zsh)"
