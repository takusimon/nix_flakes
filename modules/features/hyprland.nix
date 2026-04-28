{self, inputs, ...}: {
flake.nixosModules.hyprland = {config,pkgs, ...}: {
programs.hyprland = {
	enable = true;
	
	xwayland.enable = true;
};


environment.systemPackages = with pkgs; [
	starship
	tree
	fastfetch
	btop
	kitty
	cliphist
	tmux
	zip
	unzip
	fish
 	trash-cli
	git
	wget
	wl-clipboard
	inputs.noctalia.packages.${pkgs.system}.default
	vim
	hyprshot
	xdg-desktop-portal-hyprland
	xdg-desktop-portal-gtk
	xdg-user-dirs
	brightnessctl
];
  services.dbus.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.xserver.enable = true;
  services.power-profiles-daemon.enable = true;
  services.openssh.enable = true;
  
  programs.firefox.enable = true;
  programs.fish.enable = true;
  security.polkit.enable = true;
  programs.thunar.enable = true;
};
}
