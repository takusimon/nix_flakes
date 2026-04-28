{self, inputs, ...}:{
  flake.nixosModules.users = { config, pkgs, ...}:
let 
  unstable = import <unstable> { };
in 
{
  #Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.taku = {
     isNormalUser = true;
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
	vscode
	discord
	libreoffice
	anki
	obsidian
	discord
	steam
     ];
   shell = pkgs.fish;
   };
};
}
