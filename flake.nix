{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";
	dms = {
		url = "github:AvengeMedia/DankMaterialShell/stable";
		inputs.nixpkgs.follows = "nixpkgs";
	};
	quickshell = {
		url= "git+https://git.outfoxxed.me/quickshell/quickshell";
		inputs.nixpkgs.follows = "nixpkgs";
	};

    wrapper-modules.url = "github:BirdeeHub/nix-wrapper-modules";
    nirimod.url = "github:srinivasr/nirimod";
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake
    { inherit inputs; }
 {
        systems = [ "x86_64-linux" ];  

	_module.args = {
          inherit inputs;
        };

        imports = [
          (inputs.import-tree ./modules)
        ];
      };
}
