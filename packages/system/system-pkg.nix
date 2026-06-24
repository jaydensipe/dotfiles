{ pkgs, ... }:

let
  compilerPackages = with pkgs; [
    clang
    gnumake
    rustc
  ];

  lspPackages = with pkgs; [
    clang-tools
    lua-language-server
    nil
  ];

  desktopPackages = with pkgs; [
    amdgpu_top
    btop
    cargo
    gnome-tweaks
    numix-icon-theme-square
  ];
in
{
  # Modules
  programs = {
    git.enable = true;
    hyprland.enable = true;
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        ## https://github.com/NixOS/nixpkgs/issues/354513
        # (pkgs.runCommand "steamrun-lib" { } "mkdir $out; ln -s ${pkgs.steam-run.fhsenv}/usr/lib64 $out/lib")

        # cairo
        # gdk-pixbuf
        # glib
        # gtk3
        # libayatana-appindicator
        # libsoup_3
        # nspr
        # nss
        # stdenv.cc.cc.lib
        # webkitgtk_4_1
      ];
    };
  };

  # Fallback
  environment.systemPackages = compilerPackages ++ desktopPackages ++ lspPackages;

  # Gnome Exclusions
  environment.gnome.excludePackages = with pkgs; [
    epiphany
    gnome-calendar
    gnome-connections
    gnome-contacts
    gnome-maps
    gnome-music
    gnome-system-monitor
    gnome-tour
    simple-scan
    snapshot
    yelp
  ];
}
