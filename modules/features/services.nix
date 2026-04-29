{self, inputs, ...}: {
flake.nixosModules.services = {config,pkgs,...}: {
	services = {
		displayManager = {
			gdm = {
				enable = true;
				wayland = true;
				};
			};
		desktopManager = {
			gnome.enable = true;
			};
		xserver.enable = true;
		power-profiles-daemon.enable = true;
		openssh.enable = true;
		};
};
}
