{pkgs, config, ... }:
{
  services.wpaperd = {
    enable = true;
    settings = {
      default = {
        duration = "5m";
        path = "${./../wallpapers}";
        sorting = "ascending";
        apply-shadow = false;
      };  
    };
  };
}
