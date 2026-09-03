{ self, ... }: {
  flake.homeModules.landenModule = { pkgs, ... }: {
    imports = [
      self.homeModules.landenGit
      self.homeModules.landenObsidian
      self.homeModules.landenNvim
      self.homeModules.landenVesktop
      self.homeModules.landenAlacritty
      self.homeModules.landenPicom
    ];
    home.stateVersion = "26.05";
    home.packages = with pkgs; [];
  };
}
