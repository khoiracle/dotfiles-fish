## Steps

- Clone dotfiles

```bash
git clone https://github.com/khoi/dotfiles.git ~/dotfiles && cd $_
```

- Install homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

- Start installing apps
    - Log in to AppStore first 

``` sh
brew bundle --file ~/dotfiles/darwin/Brewfile 
```

Grab some coffee when it's brewing


## Setup

I use [GNU Stow](https://www.gnu.org/software/stow/) to manage these dotfiles.

```bash
git clone git@github.com:khoi/dotfiles.git ~/dotfiles && cd $_
ls -d1 */ | xargs stow -t ~/
```

## Nix

```sh
nix-env -iA nixpkgs.myPackages --verbose
```
