{ self, inputs, ... }: {
  flake.homeModules.landenAlacritty = { pkgs, ... }: {
    programs.alacritty = {
      enable = true;
      settings = {
	window.dimensions = {
	  lines = 52;
	  columns = 174;
	};
	font = {
	  size = 8;
	};
      };
    };
  };
}
