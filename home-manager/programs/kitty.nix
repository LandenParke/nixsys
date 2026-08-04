{ inputs, lib, config, pkgs, ... }: {
  programs.kitty = lib.mkForce {
    enable = true;
    font = ibm-plex;
    settings = {
      confirm_os_window_close = 0;
     };
  };
}
