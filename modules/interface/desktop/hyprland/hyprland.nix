{hostVars, ...}: let
  inherit
    (hostVars)
    browser
    shell
    terminal
    tuiFileManager
    editor
    kbdLayout
    kbdVariant
    ;
in {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      variables = ["--all"];
    };
    extraConfig = ''
      mainMod = "SUPER"
      CTRL    = "CTRL"
      shell   = "${shell}"
      term   = "${terminal}"
      editor  = "${editor}"
      fileManager = "${terminal} -e ${tuiFileManager}"
      browser = "${browser}"
      kbdLayout = "${kbdLayout}"
      kbdVariant = "${kbdVariant}"

      require("hyprland-noctalia")
    '';
  };

  home.file = builtins.listToAttrs (
    map (name: {
      name = ".config/hypr/configs/${name}";
      value.source = ./configs + "/${name}";
    }) (builtins.attrNames (builtins.readDir ./configs))
  );
}
