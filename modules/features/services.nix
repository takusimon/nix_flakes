{self, inputs, ...}: {
flake.nixosModules.services = {config,pkgs,...}: {
	services = {
		displayManager = {
			sddm = {
				enable = true;
				wayland.enable = true;
				};
			};
		desktopManager = {
			plasma6.enable = true;
			};
		xserver.enable = true;
		power-profiles-daemon.enable = true;
		openssh.enable = true;
		};
};
}
