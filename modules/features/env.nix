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
			gnutar
			kitty
			yazi
			sddm-astronaut
			kdePackages.qtmultimedia
			
		];
		plasma6.excludePackages = with pkgs; [
			kdePackages.konsole
		];
	};
};
}
