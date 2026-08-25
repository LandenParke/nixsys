{ self, inputs, ... }: {
  perSystem = { pkgs, ... }: {
    packages.myNiri = inputs,wrapper-modules.wrappers.niri.wrap {
      settings = {
        input.keyboard = {
          xkb.layout = "us,ua";
        };

        layout.gaps = 5;

        binds = {
          "Mod+Return".spawn-sh = lib.getExe pkgs.alacritty;
          "Mod+Q".close-window = null;
        }
      }  
    };

  };
}