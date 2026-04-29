{self, inputs, ...}: {
flake.nixosModules.programs = {config,pkgs,...}: {
	programs = {
		firefox.enable = true;
		fish.enable = true;
		};
	};
}
