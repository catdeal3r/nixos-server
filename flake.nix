{
  inputs = {
    nixpkgs.url = github:NixOs/nixpkgs/nixos-unstable;
  };

  outputs = { nixpkgs, ... }@inputs: {
    nixosConfigurations.server-0 = nixpkgs.lib.nixosSystem {
      modules = [ ./modules ];
      specialArgs = { inherit inputs; };
    };
  };
}
