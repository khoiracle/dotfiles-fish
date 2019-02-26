## dotfiles

my personal nvim, tmux, fish configs. 

the setup is documented on [My  macOS development setup](https://www.khoi.io/post/macos-development-setup/)

## Setup

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:khoi/dotfiles.git $HOME/.cfg  
config checkout
```

## References

- https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
