{
  inputs,
  pkgs,
  ...
}: let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in {
  imports = [inputs.spicetify-nix.homeManagerModules.default];

  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
      spicyLyrics
      betterGenres
      copyLyrics
      shuffle # shuffle+ (special characters are sanitized out of ext names)
    ];
    enabledCustomApps = with spicePkgs.apps; [
      ncsVisualizer
    ];

    wayland = true;
  };

  xdg.desktopEntries.spotify = {
    name = "Spotify";
    exec = "spotify --force-device-scale-factor=1.25 %U";
    icon = "spotify";
    categories = ["Audio" "Music"];
  };
}
