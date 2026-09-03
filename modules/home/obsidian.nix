{ ... }: {
  flake.homeModules.landenObsidian = { pkgs, ... }: {
    programs.obsidian = {
     enable = true;
    };
  };
}
