{ config, pkgs, ... }:

{
  # $ darwin-help to see what each option means
  system.defaults.NSGlobalDomain.NSWindowResizeTime = "0.01";
  system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode = true;
  system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode2 = true;
  system.defaults.NSGlobalDomain.NSAutomaticCapitalizationEnabled = false;
  system.defaults.NSGlobalDomain.NSAutomaticDashSubstitutionEnabled = false;
  system.defaults.NSGlobalDomain.NSAutomaticPeriodSubstitutionEnabled = false;
  system.defaults.NSGlobalDomain.NSAutomaticQuoteSubstitutionEnabled = false;
  system.defaults.NSGlobalDomain.NSAutomaticSpellingCorrectionEnabled = false;
  system.defaults.NSGlobalDomain.ApplePressAndHoldEnabled = false;
  system.defaults.NSGlobalDomain.InitialKeyRepeat = 10;
  system.defaults.NSGlobalDomain.KeyRepeat = 1;

  system.defaults.finder.AppleShowAllExtensions = true;
  system.defaults.finder.QuitMenuItem = true;
  system.defaults.finder.FXEnableExtensionChangeWarning = false;
  system.defaults.finder._FXShowPosixPathInTitle = true;

  system.defaults.dock.autohide = true;
  system.defaults.dock.autohide-delay = "0.0";
  system.defaults.dock.orientation = "bottom";
  system.defaults.dock.mru-spaces = false;
  system.defaults.dock.showhidden = true;

  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToControl = true;

  environment.systemPackages = [
    pkgs.aria2
    pkgs.coreutils
    pkgs.ffmpeg
    pkgs.fzf
    pkgs.git
    pkgs.gitAndTools.git-extras
    pkgs.gnupg
    pkgs.go
    pkgs.htop
    pkgs.neovim
    pkgs.nodejs
    pkgs.python3
    pkgs.ripgrep
    pkgs.ruby
    pkgs.starship
    pkgs.tldr
    pkgs.tmux
    pkgs.youtube-dl
    pkgs.zsh
    pkgs.hugo
    pkgs.jq
    pkgs.tree
  ];

  programs.zsh.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  # You should generally set this to the total number of logical cores in your system.
  # $ sysctl -n hw.ncpu
  nix.maxJobs = 1;
  nix.buildCores = 1;
}
