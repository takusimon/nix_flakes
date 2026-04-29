{ self, inputs, ... }: {
  flake.nixosModules.boot = { config,pkgs, ... }: {
  boot = {
	loader = {
		grub = {
			enable = true;
			efisupport = true;
			device = "nodev";
			timeoutStyle = "menu";
			configurationLimit = 10;
			};
		efi = {
			efiSysMountPoint = "/boot";
			canTouchEfiVariables = true;
			};
		};
	};
  };
}

