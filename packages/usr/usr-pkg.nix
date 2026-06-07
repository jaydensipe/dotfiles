{ config, pkgs, ... }:


let
    dotfiles    = "/home/jayden/Projects/dotfiles/packages/usr";
    symlink 	= config.lib.file.mkOutOfStoreSymlink; 
in
{
    # User Modules
    programs = {
        neovim = { enable = true; vimAlias = true; sideloadInitLua = true; };
    };

    # User Fallback
    home.packages = with pkgs; [
        easyeffects
        google-chrome
    ];

    # Home-Manager Symlinks
    home.file.".config/nvim" = {
        source = symlink "${dotfiles}/nvim";
    };
}

