{ config, pkgs, ... }:

let
  dotfiles = "/home/jayden/Projects/dotfiles/packages/usr";
  symlink = config.lib.file.mkOutOfStoreSymlink;
in
{
  # User Modules
  programs = {
    bash = {
      enable = true;
    };
    fzf = {
      enable = true;
    };
    neovim = {
      enable = true;
      vimAlias = true;
      sideloadInitLua = true;
    };
    ripgrep = {
      enable = true;
    };
    zoxide = {
      enable = true;
      enableBashIntegration = true;
    };
  };

  # User Fallback
  home.packages = with pkgs; [
    easyeffects
    gh
    ghostty
    google-chrome
    xremap.gnome
  ];

  # Home-Manager Symlinks
  home.file.".config/autostart" = {
    source = symlink "${dotfiles}/autostart";
  };

  home.file.".config/gh" = {
    source = symlink "${dotfiles}/gh";
  };

  home.file.".config/ghostty" = {
    source = symlink "${dotfiles}/ghostty";
  };

  home.file.".config/nvim" = {
    source = symlink "${dotfiles}/nvim";
  };

  home.file.".config/xremap" = {
    source = symlink "${dotfiles}/xremap";
  };
}
