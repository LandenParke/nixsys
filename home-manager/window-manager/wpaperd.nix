{pkgs, config, ... }:
{
  services.wpaperd = {
    enable = true;
    settings = {
      default = {
        duration = "5m";
        path = "${./../wallpapers}";
        mode = "center";
        sorting = "random";
        apply-shadow = false;
      };  
    };
  };
}
