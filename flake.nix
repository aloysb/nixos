{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }: {

	nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
	system = "aarm64-asahi-linux";
	modules = [ ./configuration.nix];
};
  };
}
