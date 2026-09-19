{pkgs, ...}: {
  home.pointerCursor = {
    enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 26;
    hyprcursor.enable = true;
    gtk.enable = true;
  };
}
