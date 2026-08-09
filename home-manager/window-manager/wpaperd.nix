{pkgs, config, ... }:
{
  programs.wpaperd = {
    enable = true;
    settings = {
      default = {
        duration = "2m";
        path = "${./../wallpapers}";
        sorting = "ascending";
        apply-shadow = false;
      };  
    };
  };
}
