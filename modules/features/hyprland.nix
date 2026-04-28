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
	nwg-look
	polkit_gnome
	hyprland-qt-support
];
  services.dbus.enable = true;
  services.displayManager.gdm.enable = true;
  services.displayManager.gdm.wayland = true;
  services.xserver.enable = true;
  services.power-profiles-daemon.enable = true;
  services.openssh.enable = true;
  services.upower.enable = true;
  services.xserver.videoDrivers = [ "modesetting" ];
  
  programs.firefox.enable = true;
  programs.fish.enable = true;
  security.polkit.enable = true;
  programs.thunar.enable = true;
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;
  hardware.graphics = {
  enable = true;
  enable32Bit = true;
};
systemd.user.services.polkit-agent = {
  description = "Polkit GNOME Agent";
  wantedBy = [ "graphical-session.target" ];
  after = [ "graphical-session.target" ];

  serviceConfig = {
    ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
    Restart = "on-failure";
  };
};
};
}
