{ self, inputs, ... }: {

  flake.nixosModules.helium = { pkgs, lib, ... }: {
    programs.helium = {
      enable = true;
      flags = [
        "--ozone-platform-hint=auto"
      ];
      policies = {
        "BrowserSignin" = 0;
        "PasswordManagerEnabled" = false;
        "SyncDisabled" = true;
        "HomepageLocation" = "https://nixos.org";
        "DefaultSearchProviderEnabled" = true;
        "DefaultSearchProviderSearchURL" = "https://duckduckgo.com/?q={searchTerms}";
        "ExtensionInstallForcelist" = [
          "nngceckbapebfimnlniiiahkandclblb" # bitwarden
        ];
      };
    };
  };
}
