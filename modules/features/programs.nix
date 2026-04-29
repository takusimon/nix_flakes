{self, inputs, ...}: {
flake.nixosModules.programs = {config,pkgs,...}: {
	programs = {
		firefox.enable = true;
		fish.enable = true;
		dms-shell = {
			enable = true;
			
			systemd = { 
				enable = true;
				restartIfChanged = true;
			};
		};
		niri.enable = true;
		};
	};
}
