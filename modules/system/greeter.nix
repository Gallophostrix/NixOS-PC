{inputs, pkgs, ...}: {
  imports = [inputs.noctalia-greeter.nixosModules.default];

  services.displayManager.noctalia-greeter = {
      enable = true;
      cursorTheme.package = pkgs.bibata-cursors;
      settings = {
        session.default = "Hyprland (uwsm-managed)";
        appearance = {
          password_style = "random";
          font_family = "Winter Draw";
        };
        output = {
          scales = {
            "eDP-1" = 1.5;
            "DP-1" = 1.0;
          };
        };
        cursor = {
          theme = "Bibata-Modern-Classic";
          size = 26;
        };
        keyboard = {
          layout = "fr";
          numlock = true;
        };
        auth = {
          allow_empty_password = true;
        };
      };
    };
  }
