{ inputs, lib, config, pkgs, ... }: {
  programs.kitty = lib.mkForce {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    font = {
      package = pkgs.ibm-plex;
      size = 12;
      name = "IBM Plex Mono";
    };
    settings = {
      confirm_os_window_close = 0;
     };
  };
}
