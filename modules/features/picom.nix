{ self, inputs, ... }: {
  flake.nixosModules.picom = { pkgs, ... }: {
      services.picom = {
	enable = true;
	settings = {
	  vSync = "drm";
	  type = "xrender";
	};
      };
  };
  
}
