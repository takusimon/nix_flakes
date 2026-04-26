{ self, inputs, ... }: {
  flake.nixosModules.gnome = { pkgs, ... }: {
    services.desktopManager.gnome.enable = true;
    services.displayManager.gdm.enable = true;
    services.xserver.enable = true;
    services.displayManager.gdm.wayland = true;
    environment.gnome.excludePackages = with pkgs; [epiphany gnome-tour gnome-maps gnome-contacts gnome-console gnome-connections];
  };
}
