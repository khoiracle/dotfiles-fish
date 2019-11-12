source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle z

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply
