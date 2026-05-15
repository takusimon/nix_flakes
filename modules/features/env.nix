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
      sddm-astronaut
			git
			wget
			vim
			gnutar
			kitty
			yazi
			niri
			gnumake
			gcc
			ripgrep
			fd
			imagemagick
			fzf
			zoxide	
			ncdu
			cups-pk-helper
      btop
		];
	};
};
}
