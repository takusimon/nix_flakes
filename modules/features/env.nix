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
			niri
			inputs.nirimod.packages.${pkgs.system}.default
			
		];
	};
};
}
