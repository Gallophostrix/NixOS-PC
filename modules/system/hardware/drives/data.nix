{lib, ...}: {
  fileSystems."/mnt/data" = lib.mkForce {
    device = "/dev/disk/by-uuid/5068984B68983228";
    fsType = "ntfs3";
    options = [
      "uid=1000"
      "gid=100"
      "umask=0022"
      "nofail"
      "x-gvfs-show"
      "x-systemd.mount-timeout=5s"
      "x-mount.mkdir"
      # On-demand auto-mount + umount if unused
      # "x-systemd.automount"
      # "x-systemd.idle-timeout=30s"
    ];
  };
}
