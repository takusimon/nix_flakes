{ self, inputs, ... }: {
  flake.nixosModules.boot = { pkgs, ... }: {
  # Use Grub 
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.timeoutStyle = "menu";
  boot.loader.efi.efiSysMountPoint = "/boot";
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.configurationLimit = 5;
  };
}

