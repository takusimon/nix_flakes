{ self, inputs, ... }: {
  flake.nixosModules.niri = { pkgs, lib, ... }: {
    programs.niri = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.myNiri;
    };
	services.displayManager.sessionPackages = [ self.packages.${pkgs.stdenv.hostPlatform.system}.myNiri];
  };

  perSystem = { pkgs, lib, self', ... }: {
    packages.myNiri = inputs.wrapper-modules.wrappers.niri.wrap {
      inherit pkgs; # THIS PART IS VERY IMPORTAINT, I FORGOT IT IN THE VIDEO!!!
      settings = {
        spawn-at-startup = [
          (lib.getExe self'.packages.myNoctalia)
	   "wl-paste --watch cliphist store"
        ];

        xwayland-satellite.path = lib.getExe pkgs.xwayland-satellite;

        input.keyboard.xkb.layout = "us,ua";

        layout.gaps = 5;
	   binds = {
	  "Mod+Return".spawn-sh = lib.getExe pkgs.kitty;
          "Mod+Q".close-window = _:{};
          "Mod+F".maximize-column = _:{};
          "Mod+G".fullscreen-window = _:{};
          "Mod+Shift+F".toggle-window-floating =_:{};
          "Mod+C".center-column = _:{};
	  "Mod+Ctrl+C".center-visible-columns = _:{};
          "Mod+R".spawn-sh = "${lib.getExe self'.packages.myNoctalia} ipc call launcher toggle";
          "Mod+H".focus-column-left = _:{};
          "Mod+L".focus-column-right = _:{};
          "Mod+K".focus-window-up = _:{};
          "Mod+J".focus-window-down = _:{};
	  "Mod+O".toggle-overview = _: {};
          "Mod+Left".focus-column-left = _:{};
          "Mod+Right".focus-column-right = _:{};
          "Mod+Up".focus-window-up = _:{};
          "Mod+Down".focus-window-down = _:{};
	  "Mod+W".toggle-column-tabbed-display = _:{};
	  "Mod+Shift+Space".switch-focus-between-floating-and-tiling = _:{};
	  "Mod+Period".consume-or-expel-window-right = _:{};
	  "Mod+Comma".consume-or-expel-window-left = _:{};
	  "Mod+Shift+Period".consume-or-expel-window-right = _:{};
	  "Mod+Shift+Comma".consume-or-expel-window-left = _:{};


          "Mod+Shift+H".move-column-left = _:{};
          "Mod+Shift+L".move-column-right = _: {};
          "Mod+Shift+K".move-window-up = _: {};
          "Mod+Shift+J".move-window-down = _: {};

          "Mod+1".focus-workspace = 1;
          "Mod+2".focus-workspace = 2;
          "Mod+3".focus-workspace = 3;
          "Mod+4".focus-workspace = 4;

          "Mod+Shift+1".move-column-to-workspace = 1;
          "Mod+Shift+2".move-column-to-workspace = 2;
          "Mod+Shift+3".move-column-to-workspace = 3;
          "Mod+Shift+4".move-column-to-workspace = 4;


          "XF86AudioRaiseVolume".spawn-sh = "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+";
          "XF86AudioLowerVolume".spawn-sh = "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-";
	  "XF86AudioMute".spawn-sh = "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 0";
	  "XF86MonBrightnessUp".spawn-sh = "brightnessctl set +5%";
	  "XF86MonBrightnessDown".spawn-sh = "brightnessctl set 5%-";

          "Mod+Ctrl+H".set-column-width = "-5%";
          "Mod+Ctrl+L".set-column-width = "+5%";
          "Mod+Ctrl+J".set-window-height = "-5%";
          "Mod+Ctrl+K".set-window-height = "+5%";

          "Mod+WheelScrollDown".focus-column-left = _:{};
          "Mod+WheelScrollUp".focus-column-right = _:{};
          "Mod+Ctrl+WheelScrollDown".focus-workspace-down = _:{};
          "Mod+Ctrl+WheelScrollUp".focus-workspace-up = _:{};

	  "Print".screenshot = _: {};
	  "Alt+Print".screenshot-window = _: {};
          "Ctrl+Print".screenshot-screen = _: {};
	  "Mod+V".spawn-sh = ''
  cliphist list | ${lib.getExe self'.packages.myNoctalia} \
    | cliphist decode \
    | wl-copy
'';

        };
	
      };
    };
  };
}
