{
  lib,
  hostVars,
  ...
}: {
  imports =
    [
      ./boot
      ./hardware
      ./network/network.nix
      ./network/ssh.nix
      ./shell/fish.nix
      ./devtools.nix
      ./flatpak.nix
      ./interface.nix
      ./monitoring.nix
      # ./sddm.nix
      ./greeter.nix
      ./security.nix
      ./system.nix
      ./users.nix
      ./virtualisation.nix
    ]
    ++ lib.optional (hostVars.vpn or false)
    ./network/vpn.nix;
}
