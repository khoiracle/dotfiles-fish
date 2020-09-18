{
  allowUnfree = true;  
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        aria2
        cmake
        fd
        ffmpeg
        fzf
        git
        gitAndTools.git-extras
        gitAndTools.hub
        gitAndTools.gh
        gnupg
        go
        htop
        jq
        m-cli
        neovim
        nodejs
        parallel
        (python38.withPackages (ps: with ps; [ pip setuptools ]))
        reattach-to-user-namespace
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
