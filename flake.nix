{
  outputs = { nixpkgs, ... }: {
    packages = nixpkgs.lib.genAttrs nixpkgs.lib.platforms.all (system: let
      pkgs = import nixpkgs { inherit system; };
      rubyEnv = (pkgs.ruby.withPackages (p: [ p.msgpack p.multi_json ]));
    in {
      default = pkgs.writeShellScriptBin "nvim_ruby_updater" ''
          echo "Running 'bundle update'..."
          ${rubyEnv}/bin/bundle update
          echo "Running 'bundix'..."
          ${pkgs.bundix}/bin/bundix
        '';
    });
  };
}
