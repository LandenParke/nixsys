{pkgs, config, ... }:
{
  imports = [
    ./git.nix
    ./kitty.nix
    ./zsh.nix
  ];
}
