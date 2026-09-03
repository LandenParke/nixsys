{ pkgs, config, ... }: {
  flake.homeModules.landenPicom = { pkgs, ... }: {
    services.picom = {
      enable = true;
      settings = {
	backend = "xrender";
	vSync = true;
      };
    };
  };
}

