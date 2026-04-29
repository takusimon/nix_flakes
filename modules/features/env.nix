{self, inputs, ...}: {
flake.nixosModules.env = {pkgs, ...}: {

	environment = { 
		systemPackages = with pkgs; [
			starship
			tree
			fastfetch
			btop
			tmux
			zip
			unzip
			trash-cli
			git
			wget
			vim
		];
		gnome.excludePackages = with pkgs; [
			epiphany
			gnome-tour
			gnome-maps
			gnome-contacts
			gnome-connections
		];
	};
}
