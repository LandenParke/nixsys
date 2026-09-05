{ ... }: {
  flake.homeModules.landenGit = { pkgs, ... }: {
    programs.git = {
      enable = true;
      settings.user = {
        name = "LandenParke";
	email = "eddisonparke@gmail.com";
      };
    };
    programs.gh = {
      enable = true;
    };
  };
}
