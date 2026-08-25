{ self, inputs, ... }:
{
  flake.nixosConfigurations.mouse = inputs.nixpkgs.lib.nixosSystem {
    modules = [ 
      self.nixosModules.mouseConfiguration
    ];
  };
}