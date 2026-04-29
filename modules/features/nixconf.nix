{ self, inputs, ... }: {
  flake.nixosModules.nixconf = { config,pkgs, ... }: {

	nixpkgs = {
		config = {
			allowUnfree = true;
			};
		}; 
	nix = {
		settings = {
			experimental-features = [ "nix-command" "flakes" ];
			};
		optimise = {
			automatic = true;
			};
		gc = {
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 7d";
			};
		};
	system = {
		autoUpgrade = {
			enable = true;
			allowReboot = true;
			};
		};
  };
}
