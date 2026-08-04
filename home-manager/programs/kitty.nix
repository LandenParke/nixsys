{ inputs, lib, config, pkgs, ... }: {
  programs.kitty = lib.mkForce {
    enable = true;
    font = {
      family = "IBM Plex";
      size = 12;
    };
    settings = {
      confirm_os_window_close = 0;
     };
  };
}
