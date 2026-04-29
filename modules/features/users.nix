{self, inputs, ...}:{
  flake.nixosModules.users = { config, pkgs, ...}:
{
   users.users.taku = {
	isNormalUser = true;
	extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
        packages = with pkgs; [
		vscode
		discord
		onlyoffice-desktopeditors
		anki
		obsidian
		discord
		steam
        ];
   };
};
}
