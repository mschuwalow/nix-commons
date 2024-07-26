{
  inputs = {
    agenix = {
      url = "github:ryantm/agenix?ref=0.15.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, utils, agenix, ... }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = [ agenix.packages.${system}.agenix ];
      };
    }
  ) // {
    secretsDir = ./secrets;
  };
}
