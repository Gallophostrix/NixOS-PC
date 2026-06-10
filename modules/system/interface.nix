{pkgs, ...}: {
  programs.hyprland = {
    enable = true;
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
      pkgs.xdg-desktop-portal-hyprland
    ];
    # Configuration packages for Hyprland
    configPackages = [pkgs.hyprland];
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
