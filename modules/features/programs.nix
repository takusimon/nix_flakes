{self, inputs, ...}: {
flake.nixosModules.programs = {config,pkgs,...}: 
	{
	programs = {
		chromium.enable = true;
		vim = {
			enable = true;
			defaultEditor = true;
		};
		niri = {
			enable = true;
			};
		};
	};
}
