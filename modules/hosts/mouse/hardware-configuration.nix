{ self, inputs, ... }: 
{
  flake.nixosModules.mouseHardware = { config, lib, pkgs, modulesPath, ... }:
  {
    imports =
      [ (modulesPath + "/installer/scan/not-detected.nix")
      ];

		boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "thunderbolt" "usb_storage" "sd_mod" ];
		boot.initrd.kernelModules = [ ];
		boot.kernelModules = [ "kvm-amd" ];
		boot.extraModulePackages = [ ];

		fileSystems."/" =
		  { device = "/dev/disk/by-uuid/65311e33-5c6f-4db4-a76b-db3d462c1bcd";
		    fsType = "ext4";
		  };

		fileSystems."/boot" =
		  { device = "/dev/disk/by-uuid/A4E6-DF04";
		    fsType = "vfat";
		    options = [ "fmask=0077" "dmask=0077" ];
		  };

		swapDevices = [ ];

		nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
		hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  };
}
