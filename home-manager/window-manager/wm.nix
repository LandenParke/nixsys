{pkgs, config, ... }:
{
  imports = [
    ./swappy.nix
    ./sway.nix
    ./waybar.nix
    ./rofi.nix
    ./mako.nix
    ./swayidle.nix
    ./hyprlock.nix
    ./wpaperd.nix
  ];
}
