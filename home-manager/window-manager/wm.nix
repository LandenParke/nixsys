{pkgs, config, ... }:
{
  imports = [
    ./swappy.nix
    ./sway.nix
    ./waybar.nix
    ./wofi.nix
  ];
}
