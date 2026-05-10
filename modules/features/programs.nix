{self, inputs, ...}: {
flake.nixosModules.programs = {config,pkgs,...}: 
	{
	programs = {
		chromium.enable = true;
		vim = {
			enable = true;
			defaultEditor = true;
		};
		appimage = {
			enable = true;
			binfmt = true;
		};
		dms-shell = {
			enable = true;
			package = inputs.dms.packages.${pkgs.stdenv.hostPlatform.system}.default;
			systemd = { 
				enable = true;
				restartIfChanged = true;
			};
			
			enableSystemMonitoring = true;
			enableVPN = true;
			enableDynamicTheming = true;
			enableAudioWavelength = true;
			enableCalendarEvents = true;
			enableClipboardPaste = true;
			quickshell = {
				package = inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.quickshell;
			};
		};
		niri = {
			enable = true;
			};
		};
	};
}
