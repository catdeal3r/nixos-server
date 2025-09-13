{
  inputs = {
    nixpkgs.url = github:NixOs/nixpkgs/nixos-unstable;
  };

  outputs = { nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      modules = [ ./modules ];
      specialArgs = { inherit inputs; };
    };
  };
}
