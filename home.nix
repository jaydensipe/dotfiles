{ config, pkgs, ... }:

{
    home.username = "jayden";
    home.homeDirectory = "/home/jayden";
    home.stateVersion = "26.05";
    nixpkgs.config.allowUnfree = true;

    imports = [
        ./packages/usr/usr-pkg.nix
    ];
}
