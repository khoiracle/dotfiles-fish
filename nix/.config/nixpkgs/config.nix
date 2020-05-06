{
  allowUnfree = true;  
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        aria2
        ffmpeg
        fzf
        git
        gitAndTools.git-extras
        gnupg
        go
        htop
        jq
        neovim
        nodejs
        parallel
        python38
        python38Packages.pip
        ripgrep
        ruby
        starship
        stow
        tldr
        tmux
        tree
        youtube-dl
        zsh
      ];
    };
  };
}
