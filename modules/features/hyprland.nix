{self, inputs, ...}: {
flake.nixosModules.hyprland = {config,pkgs, ...}: {
programs.hyprland = {
	enable = true;
	
	xwayland.enable = true;
};

services.hypridle.enable = true;
programs.hyprlock.enable = true;

environment.systemPackages = with pkgs; [
	rofi
	waybar
	swaynotificationcenter
	wlogout
	cliphist
	wl-clipboard
	hyprpaper
];
};
}
