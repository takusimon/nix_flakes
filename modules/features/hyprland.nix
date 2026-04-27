{self, inputs, ...}: {
flake.nixosModules.hyprland = {config,pkgs, ...}: {
programs.hyprland = {
	enable = true;
	
	xwayland.enable = true;
};

programs.hypridle.enable = true;
programs.hyprlock.enable = true;

environment.systemPackages = with pkgs; [
	rofi
	waybar
	swaynofiticationcenter
	wlogout
	cliphist
	wl-clipboard
	hyprpaper
];
};
}
