{ self, inputs, ... }:
{
  flake.nixosConfigurations.mouse = inputs.nixpkgs.lib.nixosSystem {
	  specialArgs = { inherit inputs self; };
    modules = [ 
      self.nixosModules.mouseConfiguration
      
      inputs.home-manager.nixosModules.default
      self.nixosModules.myHomeManager
      
      inputs.helium-flake.nixosModules.default
      self.nixosModules.helium

    ];
  };
}
