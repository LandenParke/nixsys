{ self, inputs, ... }: {
  flake.homeModules.landenAlacritty = { pkgs, ... }: {
    programs.alacritty = {
      enable = true;
      settings = {
	window.dimensions = {
	  lines = 3;
	  columns = 200;
	};
      };

    };
  };
}
