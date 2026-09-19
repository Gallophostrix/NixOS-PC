{pkgs, ...}: {
  home.packages = [pkgs.udiskie];

  services.udiskie = {
    enable = true;
    tray = "auto";
    automount = true;
    notify = true;
  };
}
