{ self, inputs, ... }: {
  flake.nixosModules.services = { pkgs, ... }: {
  services.openssh.enable = true;
  services.ntp.enable = true;
  services.power-profiles-daemon.enable = true;
  };
}
