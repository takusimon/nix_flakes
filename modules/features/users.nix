{self, inputs, ...}:{
  flake.nixosModules.users = { config, pkgs, ...}:
{
   users.users.taku = {
	isNormalUser = true;
	extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
        packages = with pkgs; [
		discord
		libreoffice
		obsidian
		discord
		steam
		conda
		kdePackages.okular
		google-chrome
		anki
		vscode
        ];
   };
};
}
