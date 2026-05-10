{self, inputs, ...}: {
flake.nixosModules.services = {config,pkgs,...}: {
	services = {
		displayManager = {
			dms-greeter = {
				enable = true;
				compositor.name = "niri";
				configHome = "/home/taku";
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
