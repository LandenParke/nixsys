{ self, inputs, ... }: {
  flake.nixosModules.i3 = { pkgs, ... }: {
    services.xserver = {
      enable = true;
      videoDrivers = ["amdgpu"];
      enableTearFree = true;
      windowManager.i3 = {
	enable = true;
      };
    };
  };

}
