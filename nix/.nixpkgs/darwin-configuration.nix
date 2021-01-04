{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  system.defaults.dock.autohide = true;
  system.defaults.dock.autohide-delay = "0";
  system.defaults.dock.autohide-time-modifier = "0";
  system.defaults.dock.expose-animation-duration = "0.1";
  system.defaults.dock.mineffect = "scale";
  system.defaults.dock.minimize-to-application = true;
  system.defaults.dock.mru-spaces = false;
  system.defaults.dock.showhidden = true;
  system.defaults.finder._FXShowPosixPathInTitle = true;
  system.defaults.finder.AppleShowAllExtensions = true;
  system.defaults.finder.FXEnableExtensionChangeWarning = false;
  system.defaults.finder.QuitMenuItem = true;
  system.defaults.LaunchServices.LSQuarantine = false;
  system.defaults.NSGlobalDomain.ApplePressAndHoldEnabled = false;
  system.defaults.NSGlobalDomain.AppleShowAllExtensions = true;
  system.defaults.NSGlobalDomain.InitialKeyRepeat = 10;
  system.defaults.NSGlobalDomain.KeyRepeat = 1;
  system.defaults.NSGlobalDomain.NSAutomaticSpellingCorrectionEnabled = false;
  system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode = true;
  system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode2 = true;
  system.defaults.NSGlobalDomain.NSWindowResizeTime = "0.001";
  system.defaults.screencapture.location = "~/Desktop";
  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToControl = true;

  # $ nix-env -qaP | grep wget
  environment.systemPackages = [
    pkgs._1password
    pkgs.aria2
    pkgs.cmake
    pkgs.entr
    pkgs.fd
    pkgs.ffmpeg
    pkgs.fzf
    pkgs.git
    pkgs.gitAndTools.gh
    pkgs.gitAndTools.git-extras
    pkgs.gnupg
    pkgs.go
    pkgs.htop
    pkgs.jq
    pkgs.neovim
    pkgs.nodejs
    pkgs.parallel
    pkgs.reattach-to-user-namespace
    pkgs.ripgrep
    (pkgs.python38.withPackages (ps: with ps; [ pip setuptools ]))
    pkgs.ruby
    pkgs.starship
    pkgs.stow
    pkgs.tldr
    pkgs.tmux
    pkgs.tree
    pkgs.vim
    pkgs.youtube-dl
    pkgs.zsh
  ];

  # Create /etc/bashrc that loads the nix-darwin environment.
  programs.bash.enable = true;
  programs.zsh.enable = true;
  programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
