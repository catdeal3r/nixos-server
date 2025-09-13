{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    tmux
    git
    gh
    fastfetch
    tree
    fish
    flatpak
    ffmpeg
    zoxide
    tldr
    cbonsai
    playerctl
    udisks
    feh
    cava
    mlocate
    libgcc
    gnat15
    htop
    libinput
    unzip
    pkg-config
    jq
  ];
}
