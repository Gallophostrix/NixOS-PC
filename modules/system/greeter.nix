{inputs, ...}: {
  imports = [inputs.noctalia-greeter.nixosModules.default];
  services.noctalia-greeter = {
    enable = true;
    defaultSession = "hyprland-uwsm";
    output = "eDP-1";
  };
}
