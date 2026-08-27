{ ... }: {
  flake.homeModules.landenGit = { pkgs, ... }: {
    programs.git = {
      enable = true;
      userName = "LandenParke";
      userEmail = "eddisonparke@gmail.com";
    };
    programs.gh = {
      enable = true;
    };
  };
}
