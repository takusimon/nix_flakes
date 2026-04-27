{ self, inputs, ... }: {
  flake.nixosModules.sysenv = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
     vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     wget
	git
	zip
	unzip
	gnumake
	gcc
	fish
	trash-cli
   ];
  };
}
