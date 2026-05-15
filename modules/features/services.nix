{self, inputs, ...}: {
flake.nixosModules.services = {config,pkgs,...}: {
	services = {
		displayManager = {
			sddm = {
				enable = true;
        wayland.enable = true;
        theme = "sddm-astronaut";
			};
		};
    pipewire = {

    enable = true;

    audio = {
        enable = true;
      };

    wireplumber = {
      enable = true;
    };
    
    system-wide = true;

    }
		xserver.enable = true;
    tlp.enable = true;
    gnome.gnome-keyring.enable = true;
		openssh.enable = true;
		upower.enable = true;
	};
	hardware = {
		bluetooth.enable = true;
	};
};
}
