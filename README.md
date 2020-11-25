## dotfiles

- zsh
- tmux
- emacs

## Setup

I use [GNU Stow](https://www.gnu.org/software/stow/) to manage these dotfiles.

```bash
git clone git@github.com:khoi/dotfiles.git ~/dotfiles && cd $_
ls -d1 */ | xargs stow
```

## Nix

```sh
nix-env -iA nixpkgs.myPackages --verbose
```
