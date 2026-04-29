{self, inputs, ...}: {
flake.nixosModules.dank = {config,pkgs, ...}: {
enableSystemMonitoring = true;
enableVPN = true;
enableDynamicThemeing = true;
enableAudioWavelength = true;
enableCalenderEvents = true;
enableClipboardPaste = true;
};
}
