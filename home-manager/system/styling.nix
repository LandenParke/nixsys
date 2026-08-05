{
  qt.enable = true;
  qt.style.name = "adwaita-dark";
  gtk.enable = true;
  gtk.theme.name = "Adwaita-dark";
  dconf.settings {
    "org/gnome/desktop/interface" {
      color-scheme = "prefer-dark";
    };
  };
}
