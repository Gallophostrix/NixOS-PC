{
  host,
  pkgs,
  config,
  lib,
  inputs,
  ...
}: {
  # Required packages for the interface and themes
  home.packages = with pkgs; [
    papirus-icon-theme
    bibata-cursors
  ];

  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  qt = {
    enable = true;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}
