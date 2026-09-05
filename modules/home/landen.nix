{ self, inputs, ... }: {
  flake.homeModules.landenModule = { pkgs, inputs, ... }: {
    imports = [
      self.homeModules.landenGit
      self.homeModules.landenObsidian
      self.homeModules.landenNvim
      self.homeModules.landenVesktop
      self.homeModules.landenAlacritty
      self.homeModules.landenPicom
      self.homeModules.landenGtk
      self.homeModules.landenPolybar
      self.homeModules.landeni3
      self.homeModules.landenBackground
    ];
    home.stateVersion = "26.05";
    home.packages = with pkgs; [
      fastfetch
      tree
    ];
    programs.home-manager.enable = true;
  };
}
