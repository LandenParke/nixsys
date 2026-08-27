{ self, ... }: {
  flake.homeModules.landenModule = { pkgs, ... }: {
    imports = [
      self.homeModules.landenGit
    ];
    home.stateVersion = "26.05";
    home.packages = with pkgs; [];
  };
}
