{ self, inputs, config, lib, ... }: {
flake.homeModules.landenGtk = { pkgs, config, ... }: {
    gtk = {
      enable = true;
      colorScheme = "dark";
      gtk3.extraConfig = {
	gtk-application-prefer-dark-theme = true;
      };
      gtk4.extraConfig = {
	gtk-application-prefer-dark-theme = true;
      };
    };
  };
}
