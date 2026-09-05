{ pkgs, config, ... }: {
  flake.homeModules.landenPicom = { pkgs, ... }: {
    services.picom = {
      enable = true;
      backend = "glx";
      vSync = true;
      
      fade = true;
      fadeDelta = 8;
      fadeSteps = [3.0e-2 3.0e-2];
      
      settings = {
	blur = {
	  method = "gaussian";
	  size = 12;
	  deviation = 8.0;
	};
      };
      opacityRule = [
	"95:class_g = 'Alacritty'"
      ];

      shadow = true;
      shadowOpacity = 0.5;
    };
  };
}

