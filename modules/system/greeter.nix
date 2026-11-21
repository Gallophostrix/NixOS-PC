{
  inputs,
  pkgs,
  ...
}: {
  imports = [inputs.noctalia-greeter.nixosModules.default];

  services.displayManager.noctalia-greeter = {
    enable = true;
    settings = {
      session.default = "Hyprland (uwsm-managed)";
      cursor = {
        theme = "Bibata-Modern-Classic";
        size = 26;
        path = "${pkgs.bibata-cursors}/share/icons";
      };
      appearance = {
        password_style = "random";
        font_family = "Winter Draw";
      };
      output = {
        scales = {
          "eDP-1" = 1.333;
          "DP-1" = 1.0;
        };
      };
      keyboard = {
        layout = "fr";
        numlock = true;
      };
      auth = {
        allow_empty_password = true;
      };
      clock = {
        enabled = true;
        position = "above-panel";
        time_format = "{:%H:%M}";
        date_format = "%A, %d %B %Y";
      };
    };
  };
}
