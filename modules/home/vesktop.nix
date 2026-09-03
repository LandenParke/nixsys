{ ... }: {
  flake.homeModules.landenVesktop = { pkgs, ... }: {
    programs.vesktop = {
      enable = true;
    };
  };
}
