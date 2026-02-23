{
  pkgs,
  hostVars,
  ...
}: {
  networking = {
    hostName = hostVars.hostname;
    networkmanager.enable = true;

    firewall = {
      enable = true;
      allowedTCPPorts = [
        22 # SSH (Secure Shell) - remote access
        443 # HTTPS - encrypted web traffic
        59010 # Custom application port
      ];
      allowedUDPPorts = [
        59010 # Custom application port
        59011 # Custom application port
      ];
    };
  };

  networking.nftables.enable = true;

  systemd.services.NetworkManager-wait-online.enable = true;
}
