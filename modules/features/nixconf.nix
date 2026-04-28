{ self, inputs, ... }: {
  flake.nixosModules.nixconf = { pkgs, ... }: {
  # Enable unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # periodic optimization of nix-store
  nix.optimise.automatic = true;

  # automatic garbage collection
  nix.gc = {
  automatic = true;
  dates = "weekly";
  options = "--delete-older-than 7d";
};
 
  # automatic upgrades
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = true;

  };
}
