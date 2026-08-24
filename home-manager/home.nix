{ config, pkgs, inputs, lib, ... }:

{
  home.username = "landen";
  home.homeDirectory = "/home/landen";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "26.05"; # Please read the comment before changing.

  # Includes
  imports = [
    ./window-manager/wm.nix
    ./configs/conf.nix
    ./programs/programs.nix
  ];

  home.packages = [
    # Icons
    pkgs.gruvbox-plus-icons
    pkgs.papirus-icon-theme
    # Tools
    pkgs.fastfetch
    pkgs.grim
    pkgs.slurp
    pkgs.swappy
    pkgs.wl-clipboard
    pkgs.tree
    pkgs.peazip
    pkgs.clang
    pkgs.pavucontrol
    # Applications
    pkgs.kitty
    pkgs.vscode
    pkgs.vesktop
    pkgs.prismlauncher
    pkgs.networkmanagerapplet
    pkgs.onlyoffice-desktopeditors
    pkgs.quartus-prime-lite
    inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    package = lib.mkForce pkgs.hackneyed;
    name = "Hackneyed";
    size = 24;
  };
  
  gtk = {
    enable = true;
    colorScheme = "dark";
    iconTheme = {
      package = pkgs.gruvbox-plus-icons;
      name = "Gruvbox-Plus-Dark";
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
