{pkgs, ...}: {
  imports = [
    ./hyprland.nix
    ./noctalia.nix
    ./programs/cursor
  ];

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
    documents = "$HOME/Documents";
    download = "$HOME/Downloads";
    music = "$HOME/Music";
    pictures = "$HOME/Pictures";
    videos = "$HOME/Videos";
  };

  home.packages = with pkgs; [
    # quickshell dependencies
    imagemagick
    python3
    gpu-screen-recorder

    hyprpicker
    grimblast
    slurp

    # audio
    pamixer
    pavucontrol
    playerctl
    hyprshot
  ];

  home.file.".local/share/fonts/Winter_Draw.ttf" = {
    source = ../../fonts/Winter_Draw.ttf;
  };
}
