{
  pkgs,
  inputs,
  ...
}: let
  HyprPkgs = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system};
in {
  programs.hyprland = {
    enable = true;
    package = HyprPkgs.hyprland;
    portalPackage = HyprPkgs.xdg-desktop-portal-hyprland;
    withUWSM = true;
    xwayland.enable = true;
  };

  # XDG Portals
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = false;
    # Extra portals for Hyprland and GTK
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      HyprPkgs.xdg-desktop-portal-hyprland
    ];
    # Configuration packages for Hyprland
    configPackages = [HyprPkgs.hyprland];
  };

  # Icons and foreign characters
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts-cjk-sans
    fira-mono
    fira-code
    # winter-draw
  ];
}
