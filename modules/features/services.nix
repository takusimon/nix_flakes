{self, inputs, ...}: {
flake.nixosModules.services = {config,pkgs,...}: {
	services = {
		displayManager = {
			gdm = {
				enable = true;
				wayland = true;
				};
			};
		xserver.enable = true;
		power-profiles-daemon.enable = true;
		openssh.enable = true;
		upower.enable = true;
	};
	hardware = {
		bluetooth.enable = true;
	};
};
}
