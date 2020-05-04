## dotfiles

- zsh
- tmux
- neovim 

The setup is documented on [My  macOS development setup](https://www.khoi.io/post/macos-development-setup/)

## Setup

I use [GNU Stow](https://www.gnu.org/software/stow/) to manage these dotfiles.

```bash
git clone git@github.com:khoi/dotfiles.git ~/dotfiles
stow bin git misc nix tmux vim xcode zsh
```
