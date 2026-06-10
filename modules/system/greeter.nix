{inputs, ...}: {
  imports = [inputs.noctalia-greeter.nixosModules.default];
  services.noctalia-greeter.enable = true;
}
