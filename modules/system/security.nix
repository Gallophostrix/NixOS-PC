{pkgs, ...}: {
  security = {
    rtkit.enable = true;
    polkit.enable = true;
    apparmor = {
      enable = true;
      killUnconfinedConfinables = true;
      packages = [pkgs.apparmor-profiles];
    };
    # pam.services = {
    #   greetd = {
    #     enableGnomeKeyring = true;
    #     gnupg.enable = true;
    #   };
    #   login.enableGnomeKeyring = true;
    # };
  };

  services.fprintd = {
    enable = true;
    tod = {
      enable = true;
      driver = pkgs.libfprint-2-tod1-goodix;
    };
  };

  programs.ssh.startAgent = true;

  services.gnome = {
    gnome-keyring.enable = true;
    gcr-ssh-agent.enable = false;
  };

  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    age.sshKeyPaths = ["/home/mik/.ssh/id_ed25519"];
    secrets."tailscale/preauth_key" = {};
    secrets.github_ssh_key = {
      sopsFile = ../../secrets/secrets.yaml;
      key = "ssh/github_private_key";
      path = "/home/mik/.ssh/id_ed25519_github";
      owner = "mik";
    };
  };
}
