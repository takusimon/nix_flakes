{self, inputs, ...}:{
  flake.nixosModules.users = { config, pkgs, ...}:
{
   users.users.taku = {
	isNormalUser = true;
	extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
        packages = with pkgs; [
		discord
		obsidian
		conda
		google-chrome
		anki
    fuzzel
    waybar
    xdg-desktop-portal-gnome
    xdg-desktop-portal
    wl-clipboard
    cliphist
    dunst
    hyprpaper
    hyprlock
    hypridle
    nautilus
        ];
   };
};
}
