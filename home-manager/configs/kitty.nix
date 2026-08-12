{ inputs, lib, config, pkgs, ... }: 
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    font = {
      package = pkgs.ibm-plex;
      size = 12;
      name = "IBM Plex Mono";
    };
    extraConfig = builtins.readFile ./eclipse.conf;
    settings = {
      confirm_os_window_close = 0;
     };
  };
}
