{self, inputs, ...}: {
flake.nixosModules.env = {pkgs, ...}: {

	environment = { 
		systemPackages = with pkgs; [
			starship
			tree
			fastfetch
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
			gnumake
			gcc
			ripgrep
			fd
			imagemagick
			fzf
			zoxide	
			ncdu
			cups-pk-helper
		];
	};
};
}
