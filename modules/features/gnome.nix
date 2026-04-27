{ self, inputs, ... }: {
  flake.nixosModules.gnome = { pkgs, ... }: {
    services.desktopManager.gnome.enable = true;
    services.displayManager.gdm.enable = false;
    services.xserver.enable = true;
    environment.gnome.excludePackages = with pkgs; [epiphany gnome-tour gnome-maps gnome-contacts gnome-console gnome-connections];
  };
}
