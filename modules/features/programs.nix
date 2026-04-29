{self, inputs, ...}: {
flake.nixosModules.programs = {config,pkgs,...}: 
	{
	programs = {
		firefox.enable = true;
		fish.enable = true;
		dms-shell = {
			enable = true;
			
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
		};
		niri = {
			enable = true;
			};
		};
	};
}
