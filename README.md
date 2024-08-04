neovim_ruby_updater for updating ruby provider in nixpkgs
```bash
cd <path to your local nixpkgs repo>/pkgs/applications/editors/neovim/ruby_provider && \
nix run --no-write-lock-file github:BirdeeHub/neovim_ruby_updater 
```
[based on this nix expression from Gerg-L](https://github.com/Gerg-L/mnw/blob/c7b289f3f5a31b6e744be37d83fc231816621231/ruby_provider/update.nix)

NOTE: will use the nixpkgs from your flake registry
