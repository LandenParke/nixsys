{pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.kitty}/bin/kitty";
    modes = [
      "drun"
      "window"
      "combi"
      "filebrowser"
    ];
    theme = "./nixsys/home-manager/window-manager/squared-everforest.rasi";
    extraConfig = {
      combi-modes = "window,drun";
      icon-theme = "Papirus-Dark";
      show-icons = true;
    };
  };
}
