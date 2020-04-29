{
  allowUnfree = true;  
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        aria2
        ffmpeg
        git
        gnupg
        go
        htop
        neovim
        nodejs
        python
        ripgrep
        ruby
        starship
        tldr
        tmux
        youtube-dl
      ];
    };
  };
}
