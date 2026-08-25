{ self, inputs, ...}:
{
  flake.nixosModules.mouseConfiguration =  { config, lib, pkgs, ... }:

{
  imports =
    [
      self.nixosModules.mouseHardware
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Hostname
  networking.hostName = "mouse";

  # Experimental Features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Timezone
  time.timeZone = "America/New_York";

  # environment.systemPackages = with pkgs; [
  #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #   wget
  # ];

  system.stateVersion = "26.05";

}


}