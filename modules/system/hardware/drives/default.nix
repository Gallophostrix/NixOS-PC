{
  hostVars,
  lib,
  ...
}: {
  imports =
    [
      ./syncthing.nix
    ]
    ++ lib.optional (hostVars.data == true) ./data.nix
    ++ lib.optional (hostVars.workload == true) ./workload.nix;
}
