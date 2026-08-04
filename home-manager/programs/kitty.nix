{ inputs, lib, config, pkgs, ... }: {
  programs.kitty = lib.mkForce {
    enable = true;
    font = {
      package = pkgs.ibm-plex;
      size = 12;
      name = "IBM Plex";
    };
    settings = {
      confirm_os_window_close = 0;
     };
  };
}
