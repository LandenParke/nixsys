{pkgs, config, ... }:
{
  services.wpaperd = {
    enable = true;
    settings = {
      eDP-1 = {
        duration = "5m";
        path = "${./../wallpapers}";
        sorting = "ascending";
        apply-shadow = false;
      };  
    };
  };
}
